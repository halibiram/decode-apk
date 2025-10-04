.class public Lcom/tknetwork/tunnel/config/Settings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tknetwork/tunnel/config/SettingsConstants;


# static fields
.field private static PINGER:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsPrivate:Lcom/tknetwork/tunnel/securepreferences/SecurePreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tknetwork/tunnel/config/Settings;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    return-void
.end method

.method public static setDefaultConfig(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v0, Lcom/tknetwork/tunnel/config/Settings;->PINGER:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    new-array v3, v2, [J

    .line 15
    .line 16
    fill-array-data v3, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    new-array v3, v1, [J

    .line 33
    .line 34
    fill-array-data v3, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    new-array v5, v4, [J

    .line 52
    .line 53
    fill-array-data v5, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v5, 0x1

    .line 64
    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    .line 66
    .line 67
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v6, v1, [J

    .line 70
    .line 71
    fill-array-data v6, :array_3

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 82
    .line 83
    .line 84
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v6, v1, [J

    .line 87
    .line 88
    fill-array-data v6, :array_4

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v7, v4, [J

    .line 101
    .line 102
    fill-array-data v7, :array_5

    .line 103
    .line 104
    .line 105
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-interface {p0, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    .line 114
    .line 115
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array v6, v1, [J

    .line 118
    .line 119
    fill-array-data v6, :array_6

    .line 120
    .line 121
    .line 122
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 130
    .line 131
    new-array v7, v4, [J

    .line 132
    .line 133
    fill-array-data v7, :array_7

    .line 134
    .line 135
    .line 136
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-interface {p0, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    .line 145
    .line 146
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    new-array v6, v1, [J

    .line 149
    .line 150
    fill-array-data v6, :array_8

    .line 151
    .line 152
    .line 153
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 161
    .line 162
    new-array v7, v4, [J

    .line 163
    .line 164
    fill-array-data v7, :array_9

    .line 165
    .line 166
    .line 167
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-interface {p0, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 175
    .line 176
    .line 177
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    new-array v6, v1, [J

    .line 180
    .line 181
    fill-array-data v6, :array_a

    .line 182
    .line 183
    .line 184
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    .line 193
    .line 194
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 195
    .line 196
    new-array v3, v1, [J

    .line 197
    .line 198
    fill-array-data v3, :array_b

    .line 199
    .line 200
    .line 201
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 209
    .line 210
    new-array v6, v1, [J

    .line 211
    .line 212
    fill-array-data v6, :array_c

    .line 213
    .line 214
    .line 215
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    .line 224
    .line 225
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    new-array v3, v1, [J

    .line 228
    .line 229
    fill-array-data v3, :array_d

    .line 230
    .line 231
    .line 232
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 240
    .line 241
    new-array v6, v4, [J

    .line 242
    .line 243
    fill-array-data v6, :array_e

    .line 244
    .line 245
    .line 246
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 254
    .line 255
    .line 256
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 257
    .line 258
    new-array v3, v4, [J

    .line 259
    .line 260
    fill-array-data v3, :array_f

    .line 261
    .line 262
    .line 263
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 271
    .line 272
    .line 273
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 274
    .line 275
    new-array v3, v1, [J

    .line 276
    .line 277
    fill-array-data v3, :array_10

    .line 278
    .line 279
    .line 280
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 288
    .line 289
    new-array v5, v4, [J

    .line 290
    .line 291
    fill-array-data v5, :array_11

    .line 292
    .line 293
    .line 294
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    .line 303
    .line 304
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 305
    .line 306
    new-array v2, v2, [J

    .line 307
    .line 308
    fill-array-data v2, :array_12

    .line 309
    .line 310
    .line 311
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 319
    .line 320
    new-array v3, v4, [J

    .line 321
    .line 322
    fill-array-data v3, :array_13

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
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    .line 334
    .line 335
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 336
    .line 337
    new-array v2, v1, [J

    .line 338
    .line 339
    fill-array-data v2, :array_14

    .line 340
    .line 341
    .line 342
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 350
    .line 351
    .line 352
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 353
    .line 354
    new-array v2, v4, [J

    .line 355
    .line 356
    fill-array-data v2, :array_15

    .line 357
    .line 358
    .line 359
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 367
    .line 368
    .line 369
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 370
    .line 371
    new-array v2, v1, [J

    .line 372
    .line 373
    fill-array-data v2, :array_16

    .line 374
    .line 375
    .line 376
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 384
    .line 385
    .line 386
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 387
    .line 388
    new-array v2, v1, [J

    .line 389
    .line 390
    fill-array-data v2, :array_17

    .line 391
    .line 392
    .line 393
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 401
    .line 402
    .line 403
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 404
    .line 405
    new-array v2, v1, [J

    .line 406
    .line 407
    fill-array-data v2, :array_18

    .line 408
    .line 409
    .line 410
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    .line 419
    .line 420
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 421
    .line 422
    new-array v2, v1, [J

    .line 423
    .line 424
    fill-array-data v2, :array_19

    .line 425
    .line 426
    .line 427
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 435
    .line 436
    .line 437
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 438
    .line 439
    new-array v2, v1, [J

    .line 440
    .line 441
    fill-array-data v2, :array_1a

    .line 442
    .line 443
    .line 444
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 452
    .line 453
    .line 454
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 455
    .line 456
    new-array v2, v1, [J

    .line 457
    .line 458
    fill-array-data v2, :array_1b

    .line 459
    .line 460
    .line 461
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 469
    .line 470
    .line 471
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 472
    .line 473
    new-array v1, v1, [J

    .line 474
    .line 475
    fill-array-data v1, :array_1c

    .line 476
    .line 477
    .line 478
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 486
    .line 487
    .line 488
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 489
    .line 490
    .line 491
    return-void

    .line 492
    nop

    .line 493
    :array_0
    .array-data 8
        0x27f4ac6a54f8a4c7L    # 3.279258388722349E-116
        -0x7d654ad058b1b4cL
        0x3c4bf829fe0bf83cL    # 3.0324474217193094E-18
        0x66cddada1bbc1070L    # 1.6237636252314575E187
    .end array-data

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
    :array_1
    .array-data 8
        -0x7e07808cc5bb9f73L    # -3.65807263806302E-299
        -0x3857d4cd36708c10L    # -1.6062885376746171E37
        0x1ff1ab78f6417be5L    # 8.236718566806225E-155
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
    :array_2
    .array-data 8
        0x7bc631f2b3d57b45L    # 1.6898305666357914E288
        0x20cbbaf51b70ce85L
    .end array-data

    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    :array_3
    .array-data 8
        -0x51724dd2f33a74d0L    # -1.910773371210911E-84
        0x377c59ce7031a235L    # 2.0340705923811965E-41
        0x10091f5173fab64L
    .end array-data

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
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    :array_4
    .array-data 8
        0x37946f16f514e5b6L    # 5.864254345067322E-41
        0x5f827096f09fd54aL    # 1.2072135695530055E152
        -0x468edcd61dce45c7L    # -5.280856101872482E-32
    .end array-data

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
    :array_5
    .array-data 8
        -0x59a6646abea1a8a3L    # -6.052755793105506E-124
        -0x2faa534de3a090a4L    # -1.003898551415725E79
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
    :array_6
    .array-data 8
        -0x126cc3f736d87291L    # -6.78981525931192E219
        -0x51c0c90d43de4012L    # -6.276529841200489E-86
        -0x2cbb72dd87f84ddeL    # -1.3396400682743768E93
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
    .line 598
    .line 599
    .line 600
    .line 601
    :array_7
    .array-data 8
        -0xf2264e0a7abd017L    # -4.7066898857021275E235
        0x403bb15198d9416fL    # 27.69265132240383
    .end array-data

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
    :array_8
    .array-data 8
        -0x37ec10f20a8731a8L    # -1.6957807352777948E39
        -0x1d8d3d95304e0500L    # -1.7284528904597758E166
        0x25bd45e8b3cfbad5L    # 6.756943506104453E-127
    .end array-data

    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    :array_9
    .array-data 8
        -0x6ba0ed20fcac8c7cL
        0x28ade236383720c5L    # 9.707896289780942E-113
    .end array-data

    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    :array_a
    .array-data 8
        0x18cda6f07b7d0f00L
        -0x1de1c0c3377ec68fL    # -4.354519713539525E164
        0x36dab271459e05a2L    # 1.8705261202462503E-44
    .end array-data

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
    .line 654
    .line 655
    .line 656
    .line 657
    :array_b
    .array-data 8
        0x3a9d5f32bf517e9eL    # 2.372640609465227E-26
        -0x5d1f23bd6042d182L
        -0x64bf070d2766116cL
    .end array-data

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
    :array_c
    .array-data 8
        0x664c7be9360cbdfdL    # 6.0515796284975596E184
        -0x74ebd3461dc0bc0aL    # -2.687268216829094E-255
        0x65519498e399e354L    # 1.1398497464452492E180
    .end array-data

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
    :array_d
    .array-data 8
        -0x5e23d96e7ef0ccfL
        -0x6f543be5212b2c7bL
        -0x75d83984970159b5L    # -9.664516511569453E-260
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
    :array_e
    .array-data 8
        -0x1e2e4746f8242dc0L    # -1.5945566156017223E163
        0x769434dcd0536ed3L    # 1.590696045598946E263
    .end array-data

    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    :array_f
    .array-data 8
        -0x76b8bd285683a9b3L    # -5.771173359589482E-264
        -0x525d8fc81aca47efL    # -7.241247816760955E-89
    .end array-data

    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    :array_10
    .array-data 8
        -0x452b6de04aece403L    # -2.6587131088805477E-25
        0x20abe8eb32f95f64L
        -0x6a4619f1dee4dc2bL    # -5.162738487637196E-204
    .end array-data

    .line 730
    .line 731
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
    :array_11
    .array-data 8
        0x3a2d888aabc04b6dL    # 1.8638174238068275E-28
        0x2c90837298104271L    # 4.947885405800764E-94
    .end array-data

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
    :array_12
    .array-data 8
        0xb7da9d3227926eeL    # 2.52874050033235E-253
        -0x6fb4a4e149a2deb0L    # -3.524073248365362E-230
        -0x4356532a1d226c2dL    # -1.781570630209759E-16
        0x742a4628cb3cb96fL    # 3.762301394492984E251
    .end array-data

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
    :array_13
    .array-data 8
        -0x49d07e4a1478cfbeL    # -1.07788733603226E-47
        0x7a16d6ac09ee655eL    # 1.2955218794624472E280
    .end array-data

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
    :array_14
    .array-data 8
        0x29e95a5f1fc3ee59L    # 8.636169227429399E-107
        0x7ed34f1145892527L    # 8.275842714209283E302
        -0x63805d22646eaf48L
    .end array-data

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
    :array_15
    .array-data 8
        0x25a89a4c0a574fc5L
        0x309f2a7fb4e581afL    # 1.7225915229968203E-74
    .end array-data

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
    :array_16
    .array-data 8
        -0x46b7f6b8c0a167ecL    # -9.2584241833673E-33
        0x3bb39068d008d5d5L    # 4.142859175554118E-21
        -0x5011299c82651ad8L    # -8.322420763444997E-78
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
    .line 830
    .line 831
    .line 832
    .line 833
    :array_17
    .array-data 8
        0x2cc7dc73b30c33baL    # 5.719559012367265E-93
        -0x38b3d094943a5cfaL    # -2.9269219211512024E35
        -0x1d2bc29b8bbb6d8fL    # -1.1935046522512688E168
    .end array-data

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
    :array_18
    .array-data 8
        -0x1b52a22256b6dd75L    # -9.296983912246407E176
        0x2ffaaae78a7dc67aL    # 1.4394115624958332E-77
        -0x152cc68c8ba935f0L    # -3.857538262150925E206
    .end array-data

    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
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
    :array_19
    .array-data 8
        0x2a1682fcc21f40c0L    # 6.134642159927656E-106
        -0x5f2265625f2c8b1aL
        -0x62c1187dce185707L    # -8.188828315799844E-168
    .end array-data

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
    :array_1a
    .array-data 8
        0x28e30c4eab0f3927L    # 9.900627441871765E-112
        -0x249d7d40f4090397L    # -1.6423722735594137E132
        0x34f58042efbbf019L    # 1.4030071080792471E-53
    .end array-data

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
    :array_1b
    .array-data 8
        0x64e81ea65cbe3507L    # 1.2217429016085897E178
        0x6618dbb38a2a754cL    # 6.60156943301714E183
        0x1e230faee3240181L
    .end array-data

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
    .line 910
    .line 911
    .line 912
    :array_1c
    .array-data 8
        0x73e4cf417fce8581L    # 1.8623873122718873E250
        0x7e912a984f2a02d4L    # 4.598482736854562E301
        -0x6b7e15fa6e0c5929L    # -6.811286943394441E-210
    .end array-data
.end method


# virtual methods
.method public getAutoClearLog()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x2e00abaacdc66ff3L    # -9.738031894521885E86
        0x3de993fffe8d873aL    # 1.8610535272268185E-10
        0x3eeeb5ef403d112dL    # 1.4643994297743556E-5
    .end array-data
.end method

.method public getBypass()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        0x7035982ce88ee3a5L    # 3.352575141594808E232
        0x75fb8e3d466af8feL    # 2.1183928271057694E260
        -0x45b84a2724bb994bL    # -5.9853313431349015E-28
    .end array-data
.end method

.method public getFilterApps()[Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    const/4 v3, 0x1

    .line 21
    new-array v3, v3, [J

    .line 22
    .line 23
    const-wide v4, -0x6fe1058df17ff34eL    # -4.988396434775943E-231

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    aput-wide v4, v3, v6

    .line 30
    .line 31
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    new-array v0, v6, [Ljava/lang/String;

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    new-array v2, v2, [J

    .line 55
    .line 56
    fill-array-data v2, :array_1

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0

    .line 71
    :array_0
    .array-data 8
        -0x663b63ddda41c9a4L
        -0x751759e36c9bfd3fL
        0x3560c859ab6d1d82L    # 1.4017496813006018E-51
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_1
    .array-data 8
        0x5d773203af85edc7L    # 1.7678249202399614E142
        -0xa17291433d4e58eL    # -9.547941410402563E259
    .end array-data
.end method

.method public getHideLog()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x284520c4a32c834dL    # -4.1359792688854154E114
        0x77808dac7d1ccef9L    # 4.270057458608469E267
    .end array-data
.end method

.method public getIdioma()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v2, v2, [J

    .line 21
    .line 22
    fill-array-data v2, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :array_0
    .array-data 8
        -0x19d2f9f7c140cac1L    # -1.5415517161033493E184
        -0x556a21b6f66f5807L
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    :array_1
    .array-data 8
        -0x248714eb42bd0f53L    # -4.421771150203081E132
        0x3993efa98e8ae1cL
    .end array-data
.end method

.method public getIsDisabledDelaySSH()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x37850dc2855edb1dL    # -1.4670934291606147E41
        -0x372c3537b175878L    # -9.117562182241654E291
        -0x65cbdb6479853914L
    .end array-data
.end method

.method public getIsFilterApps()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x25d960bc4f382273L    # -1.9141749545890258E126
        0x215e40d792ad0126L    # 5.9149999263476246E-148
        -0x264df6895d54b6d5L    # -1.192344435241874E124
    .end array-data
.end method

.method public getIsFilterBypassMode()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x1884a00126bc1beaL    # -3.049236615147561E190
        0x35ef0747302e9248L    # 6.6345354162063965E-49
        -0x7522380c216e1cfdL
    .end array-data
.end method

.method public getIsTetheringSubnet()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        0x5e1d88ce626954caL    # 2.304974195328769E145
        -0x9236af981451016L    # -3.6000688446798837E264
        0x305141237c6d85c7L    # 5.960492754813436E-76
    .end array-data
.end method

.method public getMaximoThreadsSocks()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x4

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
    new-array v4, v3, [J

    .line 22
    .line 23
    fill-array-data v4, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v1, v3, [J

    .line 48
    .line 49
    fill-array-data v1, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v2, v3, [J

    .line 62
    .line 63
    fill-array-data v2, :array_3

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    new-array v3, v3, [J

    .line 77
    .line 78
    const-wide v4, -0x28db5b0433c42465L    # -6.206004499446685E111

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    aput-wide v4, v3, v6

    .line 85
    .line 86
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    return v0

    .line 102
    nop

    .line 103
    :array_0
    .array-data 8
        0x27ef05e1d0a2c1e5L
        0x43bdc24f8f1e87a9L    # 2.14436384869290214E18
        0x79b35a46a43b3f78L    # 1.7152847948504754E278
        0x1856ec3a22ecb791L
    .end array-data

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
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_1
    .array-data 8
        -0x2c401d1e033a17e3L    # -2.6604937374981316E95
        -0xd9e224cbb23d053L    # -9.530468565157593E242
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_2
    .array-data 8
        0x40fa366ad143fc02L    # 107366.6760902256
        -0x381b605ef21d4470L    # -2.1930721347430414E38
    .end array-data

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
    :array_3
    .array-data 8
        -0x590cb4723830bc0fL    # -4.670135797221649E-121
        -0x3df151388ea18550L    # -1.6472665643809906E10
    .end array-data
.end method

.method public getMensagemConfigExportar()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x4

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
    const/4 v3, 0x1

    .line 21
    new-array v3, v3, [J

    .line 22
    .line 23
    const-wide v4, -0x180a35b9c3d37f72L    # -6.213512084129434E192

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    aput-wide v4, v3, v6

    .line 30
    .line 31
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :array_0
    .array-data 8
        -0x121aa476ee729c62L    # -2.4125619308319866E221
        -0x498fb87f2fad131cL    # -1.7822008680665288E-46
        0x9bc26248ef10bf4L
        -0x16dc614498c6bc61L    # -2.9332373360831985E198
    .end array-data
.end method

.method public getModoDebug()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x7087256e6ecc4889L
        0x45ff91ade95caedcL    # 1.5632241315963586E29
        -0x304adbb2355758b2L    # -9.562713212719836E75
    .end array-data
.end method

.method public getModoNoturno()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x15523cf018a5a669L    # 5.680690188659317E-206
        0x3d8ed12d06acf954L    # 3.5034978842997264E-12
        0x75bd0f431b24aa67L    # 1.3962596414201768E259
    .end array-data

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_1
    .array-data 8
        -0x21b39a27674a3550L
        0x3bd914018c38470eL    # 2.1242018134351324E-20
    .end array-data
.end method

.method public getPrefsPrivate()Lcom/tknetwork/tunnel/securepreferences/SecurePreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefsPrivate:Lcom/tknetwork/tunnel/securepreferences/SecurePreferences;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrivString(Ljava/lang/String;)Ljava/lang/String;
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
    const-wide v2, -0x2eb760dc5be38961L    # -3.736850735983974E83

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
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    new-array v2, v2, [J

    .line 25
    .line 26
    fill-array-data v2, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    new-array v1, v1, [J

    .line 46
    .line 47
    fill-array-data v1, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefsPrivate:Lcom/tknetwork/tunnel/securepreferences/SecurePreferences;

    .line 58
    .line 59
    invoke-virtual {v1, p1, v0}, Lcom/tknetwork/tunnel/securepreferences/SecurePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        -0x664b7b85c87d9118L    # -7.544785529480602E-185
        0x6c65913d808e2acaL    # 1.4521237011241375E214
        -0x6c1b79bfa37fd213L    # -7.620859562301275E-213
    .end array-data

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
    .line 78
    .line 79
    .line 80
    .line 81
    :array_1
    .array-data 8
        -0x543b6fe3a8001d60L    # -7.521015220901385E-98
        0x3fb9a665090e4c3bL    # 0.10019523116197686
    .end array-data
.end method

.method public getSSHKeypath()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    new-array v3, v3, [J

    .line 22
    .line 23
    const-wide v4, 0x5665b0b2b77fe432L    # 1.5918881794983235E108

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    aput-wide v4, v3, v6

    .line 30
    .line 31
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :array_0
    .array-data 8
        -0x57c0712cc26ee76cL    # -8.009214205201068E-115
        -0x279580da0c6b1aa6L    # -8.352176540599287E117
    .end array-data
.end method

.method public getSSHPinger()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    new-array v4, v3, [J

    .line 22
    .line 23
    fill-array-data v4, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v1, v3, [J

    .line 48
    .line 49
    fill-array-data v1, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    return v0

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        -0x22d30a0b6c42015cL    # -6.897599833501877E140
        -0x35ce6282a5a48248L    # -2.5744634850033047E49
        -0x42ba8d87f317a052L    # -1.5239112602250036E-13
    .end array-data

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
    .line 78
    .line 79
    .line 80
    .line 81
    :array_1
    .array-data 8
        -0x7467c2eec804451dL    # -8.265139328999159E-253
        -0x421b4cfeff7a5a6dL    # -1.5060674952041974E-10
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_2
    .array-data 8
        -0x547e88add4672fc6L    # -3.992705859319175E-99
        -0xb118a7e836ba85cL
    .end array-data
.end method

.method public getVpnDnsForward()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    const/4 v2, 0x1

    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x478dd4a87ff33999L    # -8.543165635726923E-37
        -0x7b6f7afecf1dda81L    # -1.084881576726054E-286
        0x36e1a3b0797e7030L
    .end array-data
.end method

.method public getVpnDnsResolver()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x34cd4dfbb291b9f9L    # 2.3902697486034265E-54
        0x9483aca80fc8eb1L
        0x16f105e857440d76L
    .end array-data

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_1
    .array-data 8
        -0x5cdb747d77e6b135L
        0x7e8707141fade3f7L    # 3.0842907563117506E301
    .end array-data
.end method

.method public getVpnUdpForward()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        0x65bd0a53213c6cd9L    # 1.2050330544611081E182
        -0x6c64b3c8bfa7a22cL    # -3.167447607388415E-214
        0x55732bf9897b3374L    # 4.293988535202806E103
    .end array-data
.end method

.method public getVpnUdpResolver()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v2, v2, [J

    .line 21
    .line 22
    fill-array-data v2, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :array_0
    .array-data 8
        -0x698eea6fdfe16421L
        -0x2b612ade23c472c7L    # -4.214907048637758E99
        0x2adc90f0f639d26aL
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :array_1
    .array-data 8
        0x559ef3761712a885L    # 2.7728954317423336E104
        -0x28e2bbc395b3de60L    # -4.398958819768413E111
        0x701d06a4ce0e9ee1L    # 1.1265828993258392E232
    .end array-data
.end method

.method public getWakelock()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    const/4 v2, 0x1

    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x3ac532fb651fe577L    # -3.2400241385893982E25
        0x370b118794f64595L    # 1.5172405016276096E-43
    .end array-data
.end method

.method public get_compression()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    const/4 v2, 0x1

    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x71de2ac16de6f781L
        -0x7c795192e8f93183L    # -1.136431205049016E-291
        0x67fff65b81486efaL    # 9.114140610053712E192
    .end array-data
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setAutoPing()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

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
    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x2ee4d6aba025bd4L
        0x47ec899580b91259L    # 3.0346208663287656E38
        -0x7323e3b1d333e35L    # -8.048851494849569E273
    .end array-data
.end method

.method public setBypass(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 8
        0x2b42698d4ddac964L
        0x2418f5d301f973ffL    # 8.585209530617198E-135
        0x5b1d60fa4a5b9a27L    # 8.145776144896992E130
    .end array-data
.end method

.method public setIdioma(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 8
        0x318f6ab08cc8c920L    # 5.6900012800535035E-70
        0x5de1bd8e2e21ebd7L    # 1.7306633251177242E144
    .end array-data
.end method

.method public setMensagemConfigExportar(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 8
        -0x372d9493991723cL    # -9.090811371174811E291
        0x434e0d6dd80b882dL    # 1.691802945710089E16
        -0x2342e41c785f1ad2L    # -5.416321340463719E138
        -0x40c5b220015fce21L    # -4.0137022608702043E-4
    .end array-data
.end method

.method public setModoDebug(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 8
        0x648417d5676b1d18L    # 1.590283039620601E176
        -0x3deea169b131c35L    # -8.3252232300934E289
        -0x7b4b2e76016828a1L    # -5.468822281968966E-286
    .end array-data
.end method

.method public setModoNoturno(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 8
        0x4a19f335e71be504L    # 9.481506940627094E48
        -0x2cd58b9b6e88c93L
        -0x7c5aea565aa3a3f1L
    .end array-data
.end method

.method public setPinger()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    sget-object v1, Lcom/tknetwork/tunnel/config/Settings;->PINGER:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    new-array v3, v3, [J

    .line 9
    .line 10
    const-wide v4, -0x2455b602ee2cbc14L    # -3.73200706067071E133

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    aput-wide v4, v3, v6

    .line 17
    .line 18
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public setVpnDnsForward(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 8
        0x5107df77816bacd5L    # 2.264510435918843E82
        -0x202a26cb69a6e10eL
        -0xda3c8a4b4d7fb97L    # -7.525850963482529E242
    .end array-data
.end method

.method public setVpnDnsResolver(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [J

    .line 13
    .line 14
    fill-array-data v0, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    new-array v2, v2, [J

    .line 34
    .line 35
    fill-array-data v2, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        -0x7bbc4a67c5e7ae4fL    # -4.04488845112908E-288
        0x107c8e096bb88003L
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
    :array_1
    .array-data 8
        0x6a6c81e81d4958bL
        -0x58ae03aba7109488L
        0x293f34ef8b67ea78L    # 5.19051627564468E-110
    .end array-data
.end method

.method public setVpnUdpForward(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 8
        0x4770b38fcbfefc4bL    # 1.387499101065056E36
        0x43a33955f6d21795L    # 6.9261643948410739E17
        -0x1e01d66532a421baL    # -1.0855885588427435E164
    .end array-data
.end method

.method public setVpnUdpResolver(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array v1, v0, [J

    .line 13
    .line 14
    fill-array-data v1, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/tknetwork/tunnel/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v0, v0, [J

    .line 33
    .line 34
    fill-array-data v0, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :array_0
    .array-data 8
        0x6390036886de7566L    # 3.867753229539156E171
        -0x6de9c4086b8e5705L
        0x618f7621f46d4ca4L    # 8.846398539739459E161
    .end array-data

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
    .line 66
    .line 67
    :array_1
    .array-data 8
        -0x42b73ca2ac0507f0L
        -0x12bff9184ff39dcL
        0x69e07e2af15f057fL    # 1.0099564015323188E202
    .end array-data
.end method
