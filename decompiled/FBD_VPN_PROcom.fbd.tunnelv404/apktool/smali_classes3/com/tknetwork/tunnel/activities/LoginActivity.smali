.class public Lcom/tknetwork/tunnel/activities/LoginActivity;
.super Lcom/tknetwork/tunnel/activities/MainBaseActivity;
.source "SourceFile"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private loginBtn:Landroidx/appcompat/widget/AppCompatButton;

.field private mConfig:Lconfig/ConfigUtil;

.field private mHandler:Landroid/os/Handler;

.field private mPassword:Landroid/widget/EditText;

.field private mUsername:Landroid/widget/EditText;

.field private myPrefs:Landroid/content/SharedPreferences;

.field private old:Ljava/lang/String;

.field private simpleProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private LoginApi()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->old:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    new-array v5, v4, [J

    .line 9
    .line 10
    fill-array-data v5, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v6, v4, [J

    .line 23
    .line 24
    fill-array-data v6, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v5, v4, [J

    .line 41
    .line 42
    fill-array-data v5, :array_2

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v6, v4, [J

    .line 55
    .line 56
    fill-array-data v6, :array_3

    .line 57
    .line 58
    .line 59
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v5, v4, [J

    .line 73
    .line 74
    fill-array-data v5, :array_4

    .line 75
    .line 76
    .line 77
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v6, v4, [J

    .line 87
    .line 88
    fill-array-data v6, :array_5

    .line 89
    .line 90
    .line 91
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v5, v4, [J

    .line 105
    .line 106
    fill-array-data v5, :array_6

    .line 107
    .line 108
    .line 109
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v6, v4, [J

    .line 119
    .line 120
    fill-array-data v6, :array_7

    .line 121
    .line 122
    .line 123
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 135
    .line 136
    new-array v5, v4, [J

    .line 137
    .line 138
    fill-array-data v5, :array_8

    .line 139
    .line 140
    .line 141
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v6, v4, [J

    .line 151
    .line 152
    fill-array-data v6, :array_9

    .line 153
    .line 154
    .line 155
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 167
    .line 168
    new-array v5, v4, [J

    .line 169
    .line 170
    fill-array-data v5, :array_a

    .line 171
    .line 172
    .line 173
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 181
    .line 182
    new-array v6, v4, [J

    .line 183
    .line 184
    fill-array-data v6, :array_b

    .line 185
    .line 186
    .line 187
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 199
    .line 200
    new-array v5, v4, [J

    .line 201
    .line 202
    fill-array-data v5, :array_c

    .line 203
    .line 204
    .line 205
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 213
    .line 214
    new-array v6, v4, [J

    .line 215
    .line 216
    fill-array-data v6, :array_d

    .line 217
    .line 218
    .line 219
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 231
    .line 232
    new-array v5, v4, [J

    .line 233
    .line 234
    fill-array-data v5, :array_e

    .line 235
    .line 236
    .line 237
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 245
    .line 246
    new-array v6, v4, [J

    .line 247
    .line 248
    fill-array-data v6, :array_f

    .line 249
    .line 250
    .line 251
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 263
    .line 264
    new-array v5, v4, [J

    .line 265
    .line 266
    fill-array-data v5, :array_10

    .line 267
    .line 268
    .line 269
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 277
    .line 278
    new-array v6, v4, [J

    .line 279
    .line 280
    fill-array-data v6, :array_11

    .line 281
    .line 282
    .line 283
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 295
    .line 296
    new-array v5, v4, [J

    .line 297
    .line 298
    fill-array-data v5, :array_12

    .line 299
    .line 300
    .line 301
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 309
    .line 310
    new-array v6, v4, [J

    .line 311
    .line 312
    fill-array-data v6, :array_13

    .line 313
    .line 314
    .line 315
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 327
    .line 328
    new-array v5, v4, [J

    .line 329
    .line 330
    fill-array-data v5, :array_14

    .line 331
    .line 332
    .line 333
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 341
    .line 342
    new-array v6, v4, [J

    .line 343
    .line 344
    fill-array-data v6, :array_15

    .line 345
    .line 346
    .line 347
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 359
    .line 360
    new-array v5, v4, [J

    .line 361
    .line 362
    fill-array-data v5, :array_16

    .line 363
    .line 364
    .line 365
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 373
    .line 374
    new-array v6, v4, [J

    .line 375
    .line 376
    fill-array-data v6, :array_17

    .line 377
    .line 378
    .line 379
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 391
    .line 392
    new-array v5, v4, [J

    .line 393
    .line 394
    fill-array-data v5, :array_18

    .line 395
    .line 396
    .line 397
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 405
    .line 406
    new-array v6, v4, [J

    .line 407
    .line 408
    fill-array-data v6, :array_19

    .line 409
    .line 410
    .line 411
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v5

    .line 418
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 423
    .line 424
    new-array v5, v4, [J

    .line 425
    .line 426
    fill-array-data v5, :array_1a

    .line 427
    .line 428
    .line 429
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 437
    .line 438
    new-array v6, v4, [J

    .line 439
    .line 440
    fill-array-data v6, :array_1b

    .line 441
    .line 442
    .line 443
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 455
    .line 456
    new-array v5, v4, [J

    .line 457
    .line 458
    fill-array-data v5, :array_1c

    .line 459
    .line 460
    .line 461
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 469
    .line 470
    new-array v6, v4, [J

    .line 471
    .line 472
    fill-array-data v6, :array_1d

    .line 473
    .line 474
    .line 475
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 487
    .line 488
    new-array v5, v4, [J

    .line 489
    .line 490
    fill-array-data v5, :array_1e

    .line 491
    .line 492
    .line 493
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 501
    .line 502
    new-array v6, v4, [J

    .line 503
    .line 504
    fill-array-data v6, :array_1f

    .line 505
    .line 506
    .line 507
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v5

    .line 514
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 519
    .line 520
    new-array v5, v4, [J

    .line 521
    .line 522
    fill-array-data v5, :array_20

    .line 523
    .line 524
    .line 525
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 533
    .line 534
    new-array v6, v4, [J

    .line 535
    .line 536
    fill-array-data v6, :array_21

    .line 537
    .line 538
    .line 539
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v5

    .line 546
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 551
    .line 552
    new-array v5, v4, [J

    .line 553
    .line 554
    fill-array-data v5, :array_22

    .line 555
    .line 556
    .line 557
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 565
    .line 566
    new-array v6, v4, [J

    .line 567
    .line 568
    fill-array-data v6, :array_23

    .line 569
    .line 570
    .line 571
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 583
    .line 584
    new-array v5, v4, [J

    .line 585
    .line 586
    fill-array-data v5, :array_24

    .line 587
    .line 588
    .line 589
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 597
    .line 598
    new-array v6, v4, [J

    .line 599
    .line 600
    fill-array-data v6, :array_25

    .line 601
    .line 602
    .line 603
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v5

    .line 610
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 615
    .line 616
    new-array v5, v4, [J

    .line 617
    .line 618
    fill-array-data v5, :array_26

    .line 619
    .line 620
    .line 621
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v3

    .line 628
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 629
    .line 630
    new-array v6, v4, [J

    .line 631
    .line 632
    fill-array-data v6, :array_27

    .line 633
    .line 634
    .line 635
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v5

    .line 642
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v2

    .line 646
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 647
    .line 648
    new-array v5, v4, [J

    .line 649
    .line 650
    fill-array-data v5, :array_28

    .line 651
    .line 652
    .line 653
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v3

    .line 660
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 661
    .line 662
    new-array v6, v4, [J

    .line 663
    .line 664
    fill-array-data v6, :array_29

    .line 665
    .line 666
    .line 667
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v5

    .line 674
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 679
    .line 680
    new-array v5, v4, [J

    .line 681
    .line 682
    fill-array-data v5, :array_2a

    .line 683
    .line 684
    .line 685
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v3

    .line 692
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 693
    .line 694
    new-array v6, v4, [J

    .line 695
    .line 696
    fill-array-data v6, :array_2b

    .line 697
    .line 698
    .line 699
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v5

    .line 706
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 711
    .line 712
    new-array v5, v4, [J

    .line 713
    .line 714
    fill-array-data v5, :array_2c

    .line 715
    .line 716
    .line 717
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v3

    .line 724
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 725
    .line 726
    new-array v6, v4, [J

    .line 727
    .line 728
    fill-array-data v6, :array_2d

    .line 729
    .line 730
    .line 731
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v5

    .line 738
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 743
    .line 744
    new-array v5, v4, [J

    .line 745
    .line 746
    fill-array-data v5, :array_2e

    .line 747
    .line 748
    .line 749
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v3

    .line 756
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 757
    .line 758
    new-array v6, v4, [J

    .line 759
    .line 760
    fill-array-data v6, :array_2f

    .line 761
    .line 762
    .line 763
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v5

    .line 770
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 775
    .line 776
    new-array v5, v4, [J

    .line 777
    .line 778
    fill-array-data v5, :array_30

    .line 779
    .line 780
    .line 781
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v3

    .line 788
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 789
    .line 790
    new-array v6, v4, [J

    .line 791
    .line 792
    fill-array-data v6, :array_31

    .line 793
    .line 794
    .line 795
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v5

    .line 802
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v2

    .line 806
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 807
    .line 808
    new-array v5, v4, [J

    .line 809
    .line 810
    fill-array-data v5, :array_32

    .line 811
    .line 812
    .line 813
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v3

    .line 820
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 821
    .line 822
    new-array v6, v4, [J

    .line 823
    .line 824
    fill-array-data v6, :array_33

    .line 825
    .line 826
    .line 827
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v5

    .line 834
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v2

    .line 838
    iget-object v3, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mUsername:Landroid/widget/EditText;

    .line 839
    .line 840
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v3

    .line 848
    iget-object v5, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mPassword:Landroid/widget/EditText;

    .line 849
    .line 850
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 851
    .line 852
    .line 853
    move-result-object v5

    .line 854
    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v5

    .line 861
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 862
    .line 863
    .line 864
    move-result v6

    .line 865
    if-nez v6, :cond_1

    .line 866
    .line 867
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 868
    .line 869
    .line 870
    move-result v6

    .line 871
    if-eqz v6, :cond_0

    .line 872
    .line 873
    goto :goto_0

    .line 874
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 875
    .line 876
    .line 877
    move-result-object v6

    .line 878
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 879
    .line 880
    new-array v8, v1, [J

    .line 881
    .line 882
    fill-array-data v8, :array_34

    .line 883
    .line 884
    .line 885
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v7

    .line 892
    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v6

    .line 896
    const/4 v7, 0x4

    .line 897
    new-array v7, v7, [Ljava/lang/Object;

    .line 898
    .line 899
    aput-object v3, v7, v0

    .line 900
    .line 901
    const/4 v0, 0x1

    .line 902
    aput-object v5, v7, v0

    .line 903
    .line 904
    aput-object v6, v7, v4

    .line 905
    .line 906
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 907
    .line 908
    aput-object v0, v7, v1

    .line 909
    .line 910
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    .line 915
    .line 916
    .line 917
    move-result-object v1

    .line 918
    new-instance v2, Lcom/android/volley/toolbox/StringRequest;

    .line 919
    .line 920
    new-instance v3, L딌듰돰뒝든땩두둑됩뒈돼들딅딽돝땔돳땰됴땠돼땲땰딨땦되돝땨딻땃듻딌뎡땬땫땻둑뒘땍딄땩땥땄뎬돰돨듻돷딌뒛땬땮딤땀딝뒉땨딻딐디딐됩딀땣듟땐땥뒷따듟둣돳뒾땐듼뒐딟듨딄둡돷땀드돰뒤듰땵땐뒼뒵둥듌땸딁땮땬땪듌땀땲딅딄둠땻돶땠드땥도돝돴뒐땀땻땲둑땀든딜둥땵땰돵돛땀듸뒉딀뒤둬;

    .line 921
    .line 922
    invoke-direct {v3, p0}, L딌듰돰뒝든땩두둑됩뒈돼들딅딽돝땔돳땰됴땠돼땲땰딨땦되돝땨딻땃듻딌뎡땬땫땻둑뒘땍딄땩땥땄뎬돰돨듻돷딌뒛땬땮딤땀딝뒉땨딻딐디딐됩딀땣듟땐땥뒷따듟둣돳뒾땐듼뒐딟듨딄둡돷땀드돰뒤듰땵땐뒼뒵둥듌땸딁땮땬땪듌땀땲딅딄둠땻돶땠드땥도돝돴뒐땀땻땲둑땀든딜둥땵땰돵돛땀듸뒉딀뒤둬;-><init>(Lcom/tknetwork/tunnel/activities/LoginActivity;)V

    .line 923
    .line 924
    .line 925
    new-instance v4, L딌듰돰뒝든땩두둑됩뒈돼들딅딽돝땔돳땰됴땠돼땲땰딨땦되돝땨딻땃듻딌뎡땬땫땻둑뒘땍딄땩땥땄뎬돰돨듻돷딌뒛땬땮딤땀딝뒉땨딻딐디딐됩딀땣듟땐땥뒷따듟둣돳뒾땐듼뒐딟듨딄둡돷땀드돰뒤듰땵땐뒼뒵둥듌땸딁땮땬땪듌땀땲딅딄둠땻돶땠드땥도돝돴뒐땀땻땲둑땀든딜둥땵땰돵돛땀듸뒉딀뒤둬;

    .line 926
    .line 927
    invoke-direct {v4, p0}, L딌듰돰뒝든땩두둑됩뒈돼들딅딽돝땔돳땰됴땠돼땲땰딨땦되돝땨딻땃듻딌뎡땬땫땻둑뒘땍딄땩땥땄뎬돰돨듻돷딌뒛땬땮딤땀딝뒉땨딻딐디딐됩딀땣듟땐땥뒷따듟둣돳뒾땐듼뒐딟듨딄둡돷땀드돰뒤듰땵땐뒼뒵둥듌땸딁땮땬땪듌땀땲딅딄둠땻돶땠드땥도돝돴뒐땀땻땲둑땀든딜둥땵땰돵돛땀듸뒉딀뒤둬;-><init>(Lcom/tknetwork/tunnel/activities/LoginActivity;)V

    .line 928
    .line 929
    .line 930
    invoke-direct {v2, v0, v3, v4}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 931
    .line 932
    .line 933
    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 934
    .line 935
    .line 936
    return-void

    .line 937
    :cond_1
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 938
    .line 939
    new-array v1, v1, [J

    .line 940
    .line 941
    fill-array-data v1, :array_35

    .line 942
    .line 943
    .line 944
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 945
    .line 946
    .line 947
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v1

    .line 951
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 956
    .line 957
    .line 958
    return-void

    .line 959
    :array_0
    .array-data 8
        -0x4ed578aefb65b6ddL    # -7.507322086640973E-72
        -0x66a31a0fe9433defL
    .end array-data

    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    :array_1
    .array-data 8
        0x4b6b5df2d15e6a4L
        0x1939f04a2a3fe86L
    .end array-data

    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    :array_2
    .array-data 8
        0x29de9d8e551206d1L    # 5.214374785996738E-107
        -0x12483141cc4130e6L    # -3.3616482894508504E220
    .end array-data

    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    :array_3
    .array-data 8
        -0x2a41002ac666d230L    # -1.1108900022042397E105
        0x1ddd1a6f3c076861L    # 7.896670577022172E-165
    .end array-data

    .line 996
    :array_4
    .array-data 8
        -0x48b20c8578fed075L    # -2.686106504740675E-42
        0x25ce81ab025cbd33L
    .end array-data

    :array_5
    .array-data 8
        0x77f0cecdd4cb5b0cL    # 5.549677335607057E269
        0x4a0dba7be7e18473L    # 5.4310228696633095E48
    .end array-data

    :array_6
    .array-data 8
        0x38fe5978f7a84f59L    # 3.6531884266612593E-34
        0x716956307be4b290L
    .end array-data

    :array_7
    .array-data 8
        -0x305cfcbde2f4b316L    # -4.299850481281907E75
        -0x4c5a2cb3910226b8L    # -6.790985225459584E-60
    .end array-data

    :array_8
    .array-data 8
        -0x42d108e6c2156775L    # -5.5005296158283204E-14
        -0x6e351031f1122d19L    # -5.82181261745278E-223
    .end array-data

    :array_9
    .array-data 8
        -0x2cc9a373baadbbb3L    # -7.288193804551991E92
        0x1779cb536a423386L    # 1.380274897665054E-195
    .end array-data

    :array_a
    .array-data 8
        0x638e5d441393de8eL    # 3.667001689288168E171
        -0x4b4ee874bc0b81afL    # -6.97064376222392E-55
    .end array-data

    :array_b
    .array-data 8
        -0x3cddec7d8f11f0caL    # -2.544000271058843E15
        -0x49114136bec17155L    # -4.3083283388853003E-44
    .end array-data

    :array_c
    .array-data 8
        -0x6949b9311b639b69L    # -2.910259243886969E-199
        -0x44c77df40237bb26L    # -2.0272538708037528E-23
    .end array-data

    :array_d
    .array-data 8
        -0x9c8a285bd6ef062L
        0x7ca227d04ccb4621L    # 2.264720184900674E292
    .end array-data

    :array_e
    .array-data 8
        0x3ece99bf8554dd57L    # 3.6478732378349035E-6
        0x5c15781f09f1d32bL    # 3.90116577602354E135
    .end array-data

    :array_f
    .array-data 8
        0xef731e2fa976566L
        0x36e8d87670503e2dL    # 3.4816041193812946E-44
    .end array-data

    :array_10
    .array-data 8
        -0x445cfe86626c7f7eL    # -2.0123133205239424E-21
        -0x211a5f3329e8901L    # -3.9699914277851184E298
    .end array-data

    :array_11
    .array-data 8
        -0x13167fb7647e8118L    # -4.395476359672684E216
        0x132bf74cf49f0bcfL    # 2.535150573724247E-216
    .end array-data

    :array_12
    .array-data 8
        0x6b725ad3def075f1L    # 3.771434305108136E209
        -0x4a62eb66d75e9331L    # -1.943130815771746E-50
    .end array-data

    :array_13
    .array-data 8
        -0x60ddf9a560f0c6d7L
        0x1c4934cd8d50aedL
    .end array-data

    :array_14
    .array-data 8
        0x7911caefe2bfe5abL    # 1.5400629344789293E275
        -0x7b668cbb866b5cb5L
    .end array-data

    :array_15
    .array-data 8
        0x9f821db2349393aL
        -0x32e0a3842e43fb12L    # -3.2253189613745955E63
    .end array-data

    :array_16
    .array-data 8
        0x5d4ff430d70d1d16L    # 3.044187869216219E141
        -0x60ba4373e11254c5L    # -4.947458520924911E-158
    .end array-data

    :array_17
    .array-data 8
        0x2c8ef56c4afbd201L    # 4.6380331937168585E-94
        0x3f6e28a1366d25cL
    .end array-data

    :array_18
    .array-data 8
        0x618324b4b207efbcL    # 5.38277663903601E161
        0x73abd58ffbda85bcL    # 1.556917556691235E249
    .end array-data

    :array_19
    .array-data 8
        -0x752a21096b176d7cL    # -1.820754329999694E-256
        -0x1bdea6455912386fL    # -2.145653601406242E174
    .end array-data

    :array_1a
    .array-data 8
        -0x20f3167b1e61161aL    # -7.3938180543127E149
        0x3f605bab4a7d0b5aL    # 0.0019968362356918403
    .end array-data

    :array_1b
    .array-data 8
        0x1f3e527c57567308L
        0x595c5de1e650fL
    .end array-data

    :array_1c
    .array-data 8
        -0x4588b2c8256d567fL    # -4.705727412454011E-27
        0xbb1bb267f8df97fL
    .end array-data

    :array_1d
    .array-data 8
        0x30a8509f3bedb453L    # 2.6878442427226013E-74
        0x5972469b7cccfe4aL    # 7.550833324185349E122
    .end array-data

    :array_1e
    .array-data 8
        -0x5a0a0c6e1d6c8b8L
        0x7983b23cfc0061b9L    # 2.182174209175349E277
    .end array-data

    :array_1f
    .array-data 8
        0x42bc98afd255ef78L    # 3.144211040407947E13
        0x25b33e4c9be5322bL    # 4.441837468252352E-127
    .end array-data

    :array_20
    .array-data 8
        -0xc14e06a333260eL    # -8.41988685348242E304
        -0x2f92168890eb9aa0L    # -2.770856402437199E79
    .end array-data

    :array_21
    .array-data 8
        -0x65f2f91c94bf95b1L    # -3.4156504559995037E-183
        0x10b50bb5a5764a4bL
    .end array-data

    :array_22
    .array-data 8
        0xfb8a1df2de81bf6L
        -0xee2d6237e58ce5bL    # -7.418166288437428E236
    .end array-data

    :array_23
    .array-data 8
        0x6aa93ab111345a9L
        -0x6d2ed2563568e67bL    # -4.866370297554282E-218
    .end array-data

    :array_24
    .array-data 8
        -0x32a98555284441b1L    # -3.6989575614912604E64
        -0x6d77d149123f8a2cL    # -2.140789592784323E-219
    .end array-data

    :array_25
    .array-data 8
        -0x69cfdad1f6d7d4f9L    # -8.23924182117569E-202
        -0x31d906efa4daac3bL    # -3.0967415789334146E68
    .end array-data

    :array_26
    .array-data 8
        -0x2673bcf10cb92f67L    # -2.3353410837919872E123
        0x5e1f9fc7d832b745L    # 2.4680655747007353E145
    .end array-data

    :array_27
    .array-data 8
        -0x440f79eb65aa3894L    # -5.598464900107462E-20
        0x2366e16575c613acL    # 3.84270144987015E-138
    .end array-data

    :array_28
    .array-data 8
        -0xcd5a06c28eeb00eL    # -5.762510875842269E246
        -0x11898067b1dbf63L
    .end array-data

    :array_29
    .array-data 8
        0x4dcf0ce6aa9206d3L    # 6.5399764436705484E66
        -0x58eb74e80c8dcfacL    # -1.988898749400227E-120
    .end array-data

    :array_2a
    .array-data 8
        0x363a082413f46158L    # 1.7811680699403674E-47
        -0x2f720838914aef80L    # -1.1104141529989483E80
    .end array-data

    :array_2b
    .array-data 8
        -0x3a7f6e273096b8bL    # -9.36938156796307E290
        -0x6d174a1c246d0de9L    # -1.400021866410384E-217
    .end array-data

    :array_2c
    .array-data 8
        0x6b983d6d5ef53bc9L    # 1.992272372923907E210
        -0x1d29acac006aeae9L    # -1.3164937478775083E168
    .end array-data

    :array_2d
    .array-data 8
        -0x183966f72b3d8934L    # -8.054771838674437E191
        0x79311e2f87470320L    # 5.926616876799617E275
    .end array-data

    :array_2e
    .array-data 8
        0x2e80dda75833f4efL    # 1.0852231942724426E-84
        -0x78645c8d0b5db23fL
    .end array-data

    :array_2f
    .array-data 8
        0x362e90bb34d0daccL    # 1.0456832808427293E-47
        -0x7d03a375cbf30e31L
    .end array-data

    :array_30
    .array-data 8
        0x3219b0de7c2e7207L    # 2.382320630131738E-67
        0x4fe5dbe7f3c0856fL    # 7.909688161906448E76
    .end array-data

    :array_31
    .array-data 8
        -0x3171b144bfc27325L    # -2.6146873258659623E70
        -0x1d00072f2b0c1deeL    # -7.541305442461568E168
    .end array-data

    :array_32
    .array-data 8
        -0x189a93cb7e969c4dL    # -1.193111424545508E190
        -0x1ca47139177a2e75L    # -4.160072384192251E170
    .end array-data

    :array_33
    .array-data 8
        0x3277a82299c50bd1L    # 1.403965861285135E-65
        0x7e2529c0b785be59L    # 4.428992276886934E299
    .end array-data

    :array_34
    .array-data 8
        -0xa6c28c45fa4d6aL    # -2.76940059769493E305
        -0x315e0d8538fafeceL    # -6.193346248018376E70
        -0x557d0cdaf7739e67L    # -6.609913327211551E-104
    .end array-data

    :array_35
    .array-data 8
        0x9109ffd36dbd92bL
        -0x79592536c3c46126L    # -1.289282973336888E-276
        0x1ca482fae953e981L
    .end array-data
.end method

.method private doLogin()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mUsername:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mPassword:Landroid/widget/EditText;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    check-cast v1, Landroid/text/Editable;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mConfig:Lconfig/ConfigUtil;

    .line 27
    .line 28
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getUsername()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mConfig:Lconfig/ConfigUtil;

    .line 32
    .line 33
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getPassword()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mConfig:Lconfig/ConfigUtil;

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Lconfig/ConfigUtil;->setUsername(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mConfig:Lconfig/ConfigUtil;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lconfig/ConfigUtil;->setPassword(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mConfig:Lconfig/ConfigUtil;

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, v1}, Lconfig/ConfigUtil;->setHasAccount(Z)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/LoginActivity;->navigateToMain()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v1, 0x3

    .line 72
    new-array v1, v1, [J

    .line 73
    .line 74
    fill-array-data v1, :array_0

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :array_0
    .array-data 8
        0x10c810d39f1f851L
        -0x921e65595009474L
        0x398ff10ca296c255L    # 1.9685530264098736E-31
    .end array-data
.end method

.method public static getAppInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method private synthetic lambda$LoginApi$1(Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/16 v2, 0x8

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    new-array v5, v1, [J

    .line 14
    .line 15
    fill-array-data v5, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v6, v1, [J

    .line 32
    .line 33
    fill-array-data v6, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v5, v0, [J

    .line 52
    .line 53
    fill-array-data v5, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v6, v1, [J

    .line 70
    .line 71
    fill-array-data v6, :array_3

    .line 72
    .line 73
    .line 74
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v5, v1, [J

    .line 90
    .line 91
    fill-array-data v5, :array_4

    .line 92
    .line 93
    .line 94
    invoke-direct {p1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    new-array v6, v1, [J

    .line 108
    .line 109
    fill-array-data v6, :array_5

    .line 110
    .line 111
    .line 112
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_0

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v5, v0, [J

    .line 129
    .line 130
    fill-array-data v5, :array_6

    .line 131
    .line 132
    .line 133
    invoke-direct {p1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v5, v1, [J

    .line 147
    .line 148
    fill-array-data v5, :array_7

    .line 149
    .line 150
    .line 151
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_1

    .line 163
    .line 164
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    const/4 v4, 0x6

    .line 167
    new-array v4, v4, [J

    .line 168
    .line 169
    fill-array-data v4, :array_8

    .line 170
    .line 171
    .line 172
    invoke-direct {p1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->loginBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 187
    .line 188
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 189
    .line 190
    new-array v5, v1, [J

    .line 191
    .line 192
    fill-array-data v5, :array_9

    .line 193
    .line 194
    .line 195
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->simpleProgressBar:Landroid/widget/ProgressBar;

    .line 206
    .line 207
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/LoginActivity;->doLogin()V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_2
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 216
    .line 217
    const/4 v4, 0x4

    .line 218
    new-array v4, v4, [J

    .line 219
    .line 220
    fill-array-data v4, :array_a

    .line 221
    .line 222
    .line 223
    invoke-direct {p1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->loginBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 238
    .line 239
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 240
    .line 241
    new-array v5, v1, [J

    .line 242
    .line 243
    fill-array-data v5, :array_b

    .line 244
    .line 245
    .line 246
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->simpleProgressBar:Landroid/widget/ProgressBar;

    .line 257
    .line 258
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :catch_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->simpleProgressBar:Landroid/widget/ProgressBar;

    .line 263
    .line 264
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 268
    .line 269
    new-array v0, v0, [J

    .line 270
    .line 271
    fill-array-data v0, :array_c

    .line 272
    .line 273
    .line 274
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 286
    .line 287
    .line 288
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->loginBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 289
    .line 290
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 291
    .line 292
    new-array v1, v1, [J

    .line 293
    .line 294
    fill-array-data v1, :array_d

    .line 295
    .line 296
    .line 297
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .line 306
    .line 307
    :goto_1
    return-void

    .line 308
    nop

    .line 309
    :array_0
    .array-data 8
        0x670d13de0be60285L    # 2.5303812948446787E188
        0x4715cc5934b621f3L    # 2.8295728302061355E34
    .end array-data

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
        0x35c16d6451edf036L    # 9.315820907638526E-50
        0x6f2f63703034cbf1L    # 3.717888367261126E227
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
    :array_2
    .array-data 8
        0x3e45f716f31a603cL    # 1.0228340483004775E-8
        0x58967a2df79b048eL    # 5.668155466376651E118
        0xb4b9e9b38d5cd86L
    .end array-data

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
    :array_3
    .array-data 8
        -0x1ca4d37209b42063L    # -4.102152412194939E170
        -0x1568e97f6db3d39aL    # -2.895486074353253E205
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
    :array_4
    .array-data 8
        -0x202d17bd7360a4abL    # -3.9610153717605405E153
        0xd5316e68258356bL
    .end array-data

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
    .line 372
    .line 373
    :array_5
    .array-data 8
        -0x1c90e6119d0efab1L    # -9.390009114796924E170
        -0x656f2dbb2ce16297L
    .end array-data

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
    :array_6
    .array-data 8
        -0x3e143c8ac522acc5L    # -3.72635490291641E9
        -0x35770bc003d50f7eL    # -1.1670547186520895E51
        0x28114da4ca4d4645L
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
    .line 398
    .line 399
    .line 400
    .line 401
    :array_7
    .array-data 8
        -0x45cfa91444f829e3L    # -2.06233919162028E-28
        0xe14798d1f281aefL    # 7.676501679187518E-241
    .end array-data

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
    :array_8
    .array-data 8
        -0x2337e8ab1db6e3d4L    # -8.965310832696329E138
        -0x34f68cb37ed2ebc4L    # -3.047078377994395E53
        0x2c387fbefed625f4L    # 1.1469642697901214E-95
        0x4e82884d088566c8L    # 1.598826244259977E70
        0x1629feab80b1c4b6L    # 6.632839255214397E-202
        -0x22c07e41dc017808L    # -1.5007985052827028E141
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
        -0x2f30b0db1e6e7e8eL    # -1.8561805540889419E81
        -0x252a5a0fd35e6cf8L    # -3.751456064745533E129
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
    :array_a
    .array-data 8
        -0x383bb88d645bf85dL    # -5.391107503695814E37
        0x7b7aa6ab8ece2865L    # 6.340891169202756E286
        0x56c66bac1505cbacL    # 1.0531144189806527E110
        0x7ee327a699886f36L    # 1.641970005515227E303
    .end array-data

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
    :array_b
    .array-data 8
        -0x7c59440df1363aa4L
        0x743aecf44bb56265L    # 7.711197474440488E251
    .end array-data

    .line 474
    .line 475
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
    :array_c
    .array-data 8
        -0x53d86320200fe106L    # -5.5273722781570685E-96
        -0x28b3426c93b002e0L    # -3.455916048025872E112
        -0x120982fd28bdce74L    # -5.080587405814502E221
    .end array-data

    .line 486
    .line 487
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
    :array_d
    .array-data 8
        -0x56c9d5fb0cb7522dL    # -3.686484751785711E-110
        -0x6a35db9bdba2676L    # -3.965484956666539E276
    .end array-data
.end method

.method private synthetic lambda$LoginApi$2(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->simpleProgressBar:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    new-array v0, v0, [J

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->loginBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 32
    .line 33
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    new-array v1, v1, [J

    .line 37
    .line 38
    fill-array-data v1, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        -0x438706336e2b9162L
        -0x2c170db0ed43e467L    # -1.6651700408026803E96
        0x4d6f40ece51c4259L    # 1.0285593094281461E65
        -0x6a1bda8b41fb2e8eL
        -0xaf2a96d24aa8e84L
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
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
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        0x1a7e8aaa59db6f34L    # 4.600184850354906E-181
        0x3f434478c46a25feL    # 5.879964526950829E-4
    .end array-data
.end method

.method private synthetic lambda$navigateToMain$3(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x3

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Landroid/content/Intent;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-class v0, Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 25
    .line 26
    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    const/high16 p2, 0x7f160000

    .line 30
    .line 31
    const v0, 0x7f160001

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method private synthetic lambda$navigateToMain$4(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .line 1
    new-instance v0, L딌딎뎬땮땬뒈딟땍땲땔됨뎹둘딠돛둑땀따땪땫딀땀땃듽땡땐돨땔둣딌뒹땐득딃땠돳돤득돳뒤듰딌듬딅돝듌땟딐딤뒀둘딁들땠뎻딄뎹듌땔땭둬둥듟돨뎰땋땋딄딁뒀돴땱땸땥득땥딅땸딸뒐뒛듸둔디돝듟땻딜딹땄뒤듸둑땡든딸뒀땻땬땫땡듽땐듨돰땠땀땀땭듬땧득돼땔뒋땯듽땟뎸뒝딝두땱됫딻땋뒾듸듐돨;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, L딌딎뎬땮땬뒈딟땍땲땔됨뎹둘딠돛둑땀따땪땫딀땀땃듽땡땐돨땔둣딌뒹땐득딃땠돳돤득돳뒤듰딌듬딅돝듌땟딐딤뒀둘딁들땠뎻딄뎹듌땔땭둬둥듟돨뎰땋땋딄딁뒀돴땱땸땥득땥딅땸딸뒐뒛듸둔디돝듟땻딜딹땄뒤듸둑땡든딸뒀땻땬땫땡듽땐듨돰땠땀땀땭듬땧득돼땔뒋땯듽땟뎸뒝딝두땱됫딻땋뒾듸듐돨;-><init>(Lcom/tknetwork/tunnel/activities/LoginActivity;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ScheduledExecutorService;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/LoginActivity;->nana()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mUsername:Landroid/widget/EditText;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mPassword:Landroid/widget/EditText;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    check-cast v1, Landroid/text/Editable;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mConfig:Lconfig/ConfigUtil;

    .line 31
    .line 32
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getUsername()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mConfig:Lconfig/ConfigUtil;

    .line 36
    .line 37
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getPassword()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v2, 0x0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->loginBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 55
    .line 56
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array p1, p1, [J

    .line 59
    .line 60
    fill-array-data p1, :array_0

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/LoginActivity;->doLogin()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->simpleProgressBar:Landroid/widget/ProgressBar;

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_1
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array p1, p1, [J

    .line 85
    .line 86
    fill-array-data p1, :array_1

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    nop

    .line 105
    :array_0
    .array-data 8
        -0x763563be550dae08L
        0x27921c3bda7b6285L    # 4.488560384747831E-118
        -0x74d5e09a0091f81bL    # -6.95906534961637E-255
    .end array-data

    .line 106
    .line 107
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
    :array_1
    .array-data 8
        -0x3b76ced5e678c6b5L    # -1.4870760766982131E22
        -0x42beeff8c22160deL    # -1.212371394333893E-13
        -0x4c2f2075415332d4L    # -4.200089950770286E-59
    .end array-data
.end method

.method private loadAppColors(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->setStatusBarColor(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->setNavBarColor(I)V

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a01cd

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private mail()V
    .locals 7

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array v2, v1, [J

    .line 18
    .line 19
    fill-array-data v2, :array_1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v2, Landroid/content/Intent;

    .line 30
    .line 31
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v4, 0x5

    .line 34
    new-array v4, v4, [J

    .line 35
    .line 36
    fill-array-data v4, :array_2

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 v5, 0x7

    .line 49
    new-array v5, v5, [J

    .line 50
    .line 51
    fill-array-data v5, :array_3

    .line 52
    .line 53
    .line 54
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v1, v1, [J

    .line 64
    .line 65
    fill-array-data v1, :array_4

    .line 66
    .line 67
    .line 68
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const/4 v5, 0x2

    .line 76
    new-array v5, v5, [Ljava/lang/Object;

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    aput-object v0, v5, v6

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    aput-object v1, v5, v0

    .line 83
    .line 84
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :array_0
    .array-data 8
        -0x7a8c0f8f4ea79a50L
        -0x23ea79997b5fd889L    # -3.911301212481403E135
        -0x172a2c79f4559f6aL    # -1.019709787811574E197
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_1
    .array-data 8
        -0x7e16036886ed1153L    # -1.940194310670697E-299
        -0x6f2e93cf8ead6663L
        0x3559b12dea7099d2L    # 1.0729524463741579E-51
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_2
    .array-data 8
        -0xd83e8a8eff1f8caL
        0x1d19ff9bff50a448L
        -0x330ec05e844cfa8dL    # -4.43477819492556E62
        -0x7171cd2c3faf697L    # -2.692686244772052E274
        0xec8cc95b63fa7bdL    # 1.904190483103637E-237
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
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
    :array_3
    .array-data 8
        0x7a336c0988a8dacL
        0x4ecf88247942e4adL    # 4.3524906124749245E71
        -0x71b1a04a86d8d125L    # -9.110317057003474E-240
        -0xa45684c292e72d7L
        0xa0e11dd3181158fL
        0x3128f908f1245861L    # 7.067049885448493E-72
        -0x46c64ad828d082d9L    # -4.951111207474983E-33
    .end array-data

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
    :array_4
    .array-data 8
        -0x259561e48878bba5L    # -3.6036050382047766E127
        -0x4fadb9c176138060L    # -6.312829101258861E-76
        0x6d12b9b4a899805eL    # 2.582071648413625E217
    .end array-data
.end method

.method private nana()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mConfig:Lconfig/ConfigUtil;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lconfig/ConfigUtil;->setConnectionType(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mConfig:Lconfig/ConfigUtil;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lconfig/ConfigUtil;->setSSH(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mConfig:Lconfig/ConfigUtil;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Lconfig/ConfigUtil;->setOVPN(Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    :array_0
    .array-data 8
        0x10379c29e7ac6deL
        0x724d960f146f5e67L    # 3.9456198513892283E242
    .end array-data
.end method

.method private navigateToMain()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->simpleProgressBar:Landroid/widget/ProgressBar;

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v4, L딌딎뎬땮땬뒈딟땍땲땔됨뎹둘딠돛둑땀따땪땫딀땀땃듽땡땐돨땔둣딌뒹땐득딃땠돳돤득돳뒤듰딌듬딅돝듌땟딐딤뒀둘딁들땠뎻딄뎹듌땔땭둬둥듟돨뎰땋땋딄딁뒀돴땱땸땥득땥딅땸딸뒐뒛듸둔디돝듟땻딜딹땄뒤듸둑땡든딸뒀땻땬땫땡듽땐듨돰땠땀땀땭듬땧득돼땔뒋땯듽땟뎸뒝딝두땱됫딻땋뒾듸듐돨;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v4, p0, v0, v3, v1}, L딌딎뎬땮땬뒈딟땍땲땔됨뎹둘딠돛둑땀따땪땫딀땀땃듽땡땐돨땔둣딌뒹땐득딃땠돳돤득돳뒤듰딌듬딅돝듌땟딐딤뒀둘딁들땠뎻딄뎹듌땔땭둬둥듟돨뎰땋땋딄딁뒀돴땱땸땥득땥딅땸딸뒐뒛듸둔디돝듟땻딜딹땄뒤듸둑땡든딸뒀땻땬땫땡듽땐듨돰땠땀땀땭듬땧득돼땔뒋땯듽땟뎸뒝딝두땱됫딻땋뒾듸듐돨;-><init>(Lcom/tknetwork/tunnel/activities/LoginActivity;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ScheduledExecutorService;I)V

    .line 22
    .line 23
    .line 24
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    const-wide/16 v5, 0x0

    .line 27
    .line 28
    const-wide/16 v7, 0x1

    .line 29
    .line 30
    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static synthetic 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Lcom/tknetwork/tunnel/activities/LoginActivity;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/activities/LoginActivity;->lambda$navigateToMain$4(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public static synthetic 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Lcom/tknetwork/tunnel/activities/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/LoginActivity;->lambda$LoginApi$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic 뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Lcom/tknetwork/tunnel/activities/LoginActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/LoginActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Lcom/tknetwork/tunnel/activities/LoginActivity;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/activities/LoginActivity;->lambda$navigateToMain$3(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public static synthetic 뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Lcom/tknetwork/tunnel/activities/LoginActivity;Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/LoginActivity;->lambda$LoginApi$2(Lcom/android/volley/VolleyError;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-super {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0d004f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->myPrefs:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    invoke-static {p0}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mConfig:Lconfig/ConfigUtil;

    .line 40
    .line 41
    const p1, 0x7f0a023f

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/widget/EditText;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mUsername:Landroid/widget/EditText;

    .line 51
    .line 52
    const p1, 0x7f0a023e

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/widget/EditText;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mPassword:Landroid/widget/EditText;

    .line 62
    .line 63
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mUsername:Landroid/widget/EditText;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mConfig:Lconfig/ConfigUtil;

    .line 66
    .line 67
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getUsername()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mPassword:Landroid/widget/EditText;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->mConfig:Lconfig/ConfigUtil;

    .line 77
    .line 78
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getPassword()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getJSONObject()Lorg/json/JSONObject;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-nez p1, :cond_0

    .line 90
    .line 91
    return-void

    .line 92
    :cond_0
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v3, v1, [J

    .line 95
    .line 96
    fill-array-data v3, :array_0

    .line 97
    .line 98
    .line 99
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_1

    .line 111
    .line 112
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v3, v1, [J

    .line 115
    .line 116
    fill-array-data v3, :array_1

    .line 117
    .line 118
    .line 119
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v2}, Lcom/tknetwork/tunnel/utils/VPNUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iput-object v2, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->old:Ljava/lang/String;

    .line 135
    .line 136
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    new-array v3, v1, [J

    .line 139
    .line 140
    fill-array-data v3, :array_2

    .line 141
    .line 142
    .line 143
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_8

    .line 155
    .line 156
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 157
    .line 158
    new-array v3, v1, [J

    .line 159
    .line 160
    fill-array-data v3, :array_3

    .line 161
    .line 162
    .line 163
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    new-array v4, v0, [J

    .line 177
    .line 178
    fill-array-data v4, :array_4

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
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_2

    .line 193
    .line 194
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 195
    .line 196
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 197
    .line 198
    new-array v1, v1, [J

    .line 199
    .line 200
    fill-array-data v1, :array_5

    .line 201
    .line 202
    .line 203
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    new-array v0, v0, [J

    .line 213
    .line 214
    fill-array-data v0, :array_6

    .line 215
    .line 216
    .line 217
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :cond_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 238
    .line 239
    new-array v3, v1, [J

    .line 240
    .line 241
    fill-array-data v3, :array_7

    .line 242
    .line 243
    .line 244
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 256
    .line 257
    new-array v4, v0, [J

    .line 258
    .line 259
    fill-array-data v4, :array_8

    .line 260
    .line 261
    .line 262
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_3

    .line 274
    .line 275
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 276
    .line 277
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 278
    .line 279
    new-array v1, v1, [J

    .line 280
    .line 281
    fill-array-data v1, :array_9

    .line 282
    .line 283
    .line 284
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 292
    .line 293
    new-array v0, v0, [J

    .line 294
    .line 295
    fill-array-data v0, :array_a

    .line 296
    .line 297
    .line 298
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :cond_3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 319
    .line 320
    new-array v3, v1, [J

    .line 321
    .line 322
    fill-array-data v3, :array_b

    .line 323
    .line 324
    .line 325
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 337
    .line 338
    new-array v4, v0, [J

    .line 339
    .line 340
    fill-array-data v4, :array_c

    .line 341
    .line 342
    .line 343
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-eqz v2, :cond_4

    .line 355
    .line 356
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 357
    .line 358
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 359
    .line 360
    new-array v2, v1, [J

    .line 361
    .line 362
    fill-array-data v2, :array_d

    .line 363
    .line 364
    .line 365
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 373
    .line 374
    new-array v1, v1, [J

    .line 375
    .line 376
    fill-array-data v1, :array_e

    .line 377
    .line 378
    .line 379
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_0

    .line 398
    .line 399
    :cond_4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 400
    .line 401
    new-array v3, v1, [J

    .line 402
    .line 403
    fill-array-data v3, :array_f

    .line 404
    .line 405
    .line 406
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 418
    .line 419
    new-array v4, v0, [J

    .line 420
    .line 421
    fill-array-data v4, :array_10

    .line 422
    .line 423
    .line 424
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    if-eqz v2, :cond_5

    .line 436
    .line 437
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 438
    .line 439
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 440
    .line 441
    new-array v1, v1, [J

    .line 442
    .line 443
    fill-array-data v1, :array_11

    .line 444
    .line 445
    .line 446
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 454
    .line 455
    new-array v0, v0, [J

    .line 456
    .line 457
    fill-array-data v0, :array_12

    .line 458
    .line 459
    .line 460
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 476
    .line 477
    .line 478
    goto/16 :goto_0

    .line 479
    .line 480
    :cond_5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 481
    .line 482
    new-array v3, v1, [J

    .line 483
    .line 484
    fill-array-data v3, :array_13

    .line 485
    .line 486
    .line 487
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 499
    .line 500
    new-array v4, v0, [J

    .line 501
    .line 502
    fill-array-data v4, :array_14

    .line 503
    .line 504
    .line 505
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v2

    .line 516
    if-eqz v2, :cond_6

    .line 517
    .line 518
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 519
    .line 520
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 521
    .line 522
    new-array v1, v1, [J

    .line 523
    .line 524
    fill-array-data v1, :array_15

    .line 525
    .line 526
    .line 527
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 535
    .line 536
    new-array v0, v0, [J

    .line 537
    .line 538
    fill-array-data v0, :array_16

    .line 539
    .line 540
    .line 541
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 553
    .line 554
    .line 555
    move-result-object p1

    .line 556
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_0

    .line 560
    .line 561
    :cond_6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 562
    .line 563
    new-array v3, v1, [J

    .line 564
    .line 565
    fill-array-data v3, :array_17

    .line 566
    .line 567
    .line 568
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 580
    .line 581
    new-array v4, v0, [J

    .line 582
    .line 583
    fill-array-data v4, :array_18

    .line 584
    .line 585
    .line 586
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v2

    .line 597
    if-eqz v2, :cond_7

    .line 598
    .line 599
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 600
    .line 601
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 602
    .line 603
    new-array v1, v1, [J

    .line 604
    .line 605
    fill-array-data v1, :array_19

    .line 606
    .line 607
    .line 608
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 616
    .line 617
    new-array v0, v0, [J

    .line 618
    .line 619
    fill-array-data v0, :array_1a

    .line 620
    .line 621
    .line 622
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 634
    .line 635
    .line 636
    move-result-object p1

    .line 637
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 638
    .line 639
    .line 640
    goto :goto_0

    .line 641
    :cond_7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 642
    .line 643
    new-array v3, v1, [J

    .line 644
    .line 645
    fill-array-data v3, :array_1b

    .line 646
    .line 647
    .line 648
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object p1

    .line 659
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 660
    .line 661
    new-array v3, v0, [J

    .line 662
    .line 663
    fill-array-data v3, :array_1c

    .line 664
    .line 665
    .line 666
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    move-result p1

    .line 677
    if-eqz p1, :cond_8

    .line 678
    .line 679
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 680
    .line 681
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 682
    .line 683
    new-array v1, v1, [J

    .line 684
    .line 685
    fill-array-data v1, :array_1d

    .line 686
    .line 687
    .line 688
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 696
    .line 697
    new-array v0, v0, [J

    .line 698
    .line 699
    fill-array-data v0, :array_1e

    .line 700
    .line 701
    .line 702
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 714
    .line 715
    .line 716
    move-result-object p1

    .line 717
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    .line 719
    .line 720
    :catch_0
    :cond_8
    :goto_0
    const p1, 0x7f0a02fb

    .line 721
    .line 722
    .line 723
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 724
    .line 725
    .line 726
    move-result-object p1

    .line 727
    check-cast p1, Landroid/widget/ProgressBar;

    .line 728
    .line 729
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->simpleProgressBar:Landroid/widget/ProgressBar;

    .line 730
    .line 731
    const p1, 0x7f0a023c

    .line 732
    .line 733
    .line 734
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 735
    .line 736
    .line 737
    move-result-object p1

    .line 738
    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    .line 739
    .line 740
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->loginBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 741
    .line 742
    new-instance v0, L딁득돨둠땐듟듔뎬따뎠돝둡땩땭돷땹땀돸됫된듸땡둘둑땹뎡돼뒬땦됫듼땠딨땫땨뒉둥돠뎽든땠된땥돵뒈듔뎰뒻딤땹땁땠둔듬땋됴뒀듻득뎨땡땀딻땪뒛된돵딅딝땁뒹땨딸땁뒀들뒼둠땲땣돸될뒋딄돛든땰땃듬뎹듐둘땭땫둔딞듸뒹도딻듔땣둑둘딨땸땜둬땄땋땩뒤둔딽될딠돠됐땸둡딝딄됫돼듼된딀듌됩땥;

    .line 743
    .line 744
    const/4 v1, 0x1

    .line 745
    invoke-direct {v0, p0, v1}, L딁득돨둠땐듟듔뎬따뎠돝둡땩땭돷땹땀돸됫된듸땡둘둑땹뎡돼뒬땦됫듼땠딨땫땨뒉둥돠뎽든땠된땥돵뒈듔뎰뒻딤땹땁땠둔듬땋됴뒀듻득뎨땡땀딻땪뒛된돵딅딝땁뒹땨딸땁뒀들뒼둠땲땣돸될뒋딄돛든땰땃듬뎹듐둘땭땫둔딞듸뒹도딻듔땣둑둘딨땸땜둬땄땋땩뒤둔딽될딠돠됐땸둡딝딄됫돼듼된딀듌됩땥;-><init>(Ljava/lang/Object;I)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    .line 750
    .line 751
    return-void

    .line 752
    nop

    .line 753
    :array_0
    .array-data 8
        0x6c04e6f00d04f82dL    # 2.198957773099415E212
        0x31f14674e6c884f1L    # 4.0048348130487E-68
        0x281b4d14538aec09L
    .end array-data

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
    .line 766
    .line 767
    .line 768
    .line 769
    :array_1
    .array-data 8
        0x4ffbcbc5be6146aL
        -0x462a3a040b2edd22L    # -4.29404123548737E-30
        0x4af4659e0cd043e2L    # 1.221024376767653E53
    .end array-data

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
    :array_2
    .array-data 8
        -0x605925b8b078b4e3L    # -3.328962009618217E-156
        -0x9520b674b03a883L
        0x3ad00c98818b95f7L    # 2.074310748259009E-25
    .end array-data

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
    :array_3
    .array-data 8
        0x1dbade51c45f20edL
        -0x18a1406fa4556d38L    # -8.562455858162382E189
        0x41231a628662eb2eL    # 625969.2624734396
    .end array-data

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
    :array_4
    .array-data 8
        0x2016d7458a4d4811L
        0x1535ade99ba65cbdL    # 1.68814270510223E-206
    .end array-data

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
    :array_5
    .array-data 8
        -0x6cf4f912072a32e1L    # -6.125084435965524E-217
        0x6085cf287362b14cL    # 9.357238781153184E156
        -0x6ef2038eecd107f8L
    .end array-data

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
    :array_6
    .array-data 8
        -0xd1fbc450e9b123cL    # -2.221105069933825E245
        -0x5d2209fa6f400f14L    # -9.827853353762044E-141
    .end array-data

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
    .line 856
    .line 857
    :array_7
    .array-data 8
        0x4a4069244c3291e0L    # 4.796855938559969E49
        -0x154944914e4dea65L    # -1.1403488102627753E206
        -0x317cbc5e71ce40acL
    .end array-data

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
    :array_8
    .array-data 8
        0x6a71bb2791eeffb8L    # 5.559197142503433E204
        -0x55e885e6976f1e6bL    # -6.39769031215649E-106
    .end array-data

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
    :array_9
    .array-data 8
        0x1332f1ef3bda799eL
        -0x6471655aed702e55L    # -6.041877175821382E-176
        0x69badce17cfc36cbL    # 2.0562156156013514E201
    .end array-data

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
    :array_a
    .array-data 8
        -0x562e590051df8234L    # -3.00651799962429E-107
        -0x70293a95b366a953L
    .end array-data

    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    :array_b
    .array-data 8
        -0x5f503ed147ed3599L
        0xfc224737df72485L    # 9.129516830812935E-233
        -0xc6c25e0a8574e3bL    # -5.552155151843602E248
    .end array-data

    :array_c
    .array-data 8
        0x3f312d63d4216472L    # 2.621048662426246E-4
        -0x46f2ed6d8a6f2cb6L    # -6.998961173338539E-34
    .end array-data

    :array_d
    .array-data 8
        0x4f428f90f0ef3dd8L    # 6.558820899858063E73
        0x7435ccba0d9a0367L    # 6.243199131349842E251
        -0x3ccff8af30897b1bL    # -4.511643286799589E15
    .end array-data

    :array_e
    .array-data 8
        -0xbd10a6b1409762fL    # -4.433202608103698E251
        0x24405cc400ba1cc0L    # 4.502337373905325E-134
        0x762146e312a1627cL    # 1.0625567554281728E261
    .end array-data

    :array_f
    .array-data 8
        0x5feea637815b98d7L    # 1.2841866219113492E154
        -0x5aaa1cfe5142dfb9L    # -7.893743878125975E-129
        -0x66473caaafb9be7dL    # -9.105971542287368E-185
    .end array-data

    :array_10
    .array-data 8
        0x476db6b018abcac8L    # 1.2342556738984102E36
        0x7d16f9e2e2230292L    # 3.668533031231191E294
    .end array-data

    :array_11
    .array-data 8
        -0x51d9dc94082f34ccL    # -2.2257522462864436E-86
        0x6832d8361acf2c5eL    # 8.597725701412813E193
        0x19ca090c7aa6fdacL    # 1.914767429367466E-184
    .end array-data

    :array_12
    .array-data 8
        0x14c1d189b7180b10L
        0x171b4cd25912ebe9L
    .end array-data

    :array_13
    .array-data 8
        -0x1505776b2ed8c39aL    # -2.129668047828483E207
        0x6a5a34a75513ea0dL    # 2.054056960215708E204
        0x59c935ccdb34d86cL    # 3.333064966167886E124
    .end array-data

    :array_14
    .array-data 8
        0x9aeca109a775ab4L
        0x2445680675825eacL    # 5.890260890427157E-134
    .end array-data

    :array_15
    .array-data 8
        -0x1b4a0ff1023dd820L    # -1.3890220182290312E177
        -0x4abd0c6989de306bL    # -3.957260894631344E-52
        -0x221756f0c1d85f5fL    # -2.405735409397809E144
    .end array-data

    :array_16
    .array-data 8
        -0x6d43f6e47d6c41f0L
        -0x68567d4a4f235e63L
    .end array-data

    :array_17
    .array-data 8
        -0x62936275d8072b6bL    # -6.065855697386334E-167
        -0x1734e089f2e194e9L    # -6.3358258242840544E196
        -0xc2e03b381f71d2aL    # -8.04822210032943E249
    .end array-data

    :array_18
    .array-data 8
        0x27ae9b62a4435ad4L
        0x5290fc88795af477L    # 5.406566389474614E89
    .end array-data

    :array_19
    .array-data 8
        0x7ade4d02f619e853L    # 7.040287695579254E283
        -0x75e13ce934dd5ce0L
        0x4dfa3ce415df32b4L    # 4.4210698734533327E67
    .end array-data

    :array_1a
    .array-data 8
        0x117be6e29172f3faL
        0xa5da2dff0abcc5fL
    .end array-data

    :array_1b
    .array-data 8
        -0x7a9e0cb9875f7c59L    # -9.657075963468146E-283
        -0x6050d4bc566569a2L
        0x72e182246c4d5825L    # 2.390959151758911E245
    .end array-data

    :array_1c
    .array-data 8
        -0x54fe7d64809535f7L
        0x42b89a4726c16216L    # 2.7050897752418086E13
    .end array-data

    :array_1d
    .array-data 8
        -0x6e3193b2911222f8L    # -6.575307475776472E-223
        -0x5701de5ffd65a442L
        -0xe54666796496cf1L    # -3.5944741712753773E239
    .end array-data

    :array_1e
    .array-data 8
        0x5a80b8df31bb9b9eL    # 9.055666847347104E127
        0x61856d5dd615713fL    # 6.024949030887024E161
    .end array-data
.end method

.method public onResume()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LoginActivity;->myPrefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    new-array v3, v3, [J

    .line 22
    .line 23
    fill-array-data v3, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/activities/LoginActivity;->loadAppColors(I)V

    .line 42
    .line 43
    .line 44
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        -0x4bb443d2fdf18e5cL
        -0x58fa608416d9f8cdL
        -0x2514b06d47461701L    # -9.465489714405706E129
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 8
        0x585e49f96606dd2bL    # 4.773783437335938E117
        0x4e15b1b5fe5434f3L    # 1.4621850585188874E68
    .end array-data
.end method
