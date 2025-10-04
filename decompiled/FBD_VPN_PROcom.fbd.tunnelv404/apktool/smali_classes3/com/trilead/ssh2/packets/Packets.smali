.class public Lcom/trilead/ssh2/packets/Packets;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SSH_DISCONNECT_AUTH_CANCELLED_BY_USER:I = 0xd

.field public static final SSH_DISCONNECT_BY_APPLICATION:I = 0xb

.field public static final SSH_DISCONNECT_COMPRESSION_ERROR:I = 0x6

.field public static final SSH_DISCONNECT_CONNECTION_LOST:I = 0xa

.field public static final SSH_DISCONNECT_HOST_KEY_NOT_VERIFIABLE:I = 0x9

.field public static final SSH_DISCONNECT_HOST_NOT_ALLOWED_TO_CONNECT:I = 0x1

.field public static final SSH_DISCONNECT_ILLEGAL_USER_NAME:I = 0xf

.field public static final SSH_DISCONNECT_KEY_EXCHANGE_FAILED:I = 0x3

.field public static final SSH_DISCONNECT_MAC_ERROR:I = 0x5

.field public static final SSH_DISCONNECT_NO_MORE_AUTH_METHODS_AVAILABLE:I = 0xe

.field public static final SSH_DISCONNECT_PROTOCOL_ERROR:I = 0x2

.field public static final SSH_DISCONNECT_PROTOCOL_VERSION_NOT_SUPPORTED:I = 0x8

.field public static final SSH_DISCONNECT_RESERVED:I = 0x4

.field public static final SSH_DISCONNECT_SERVICE_NOT_AVAILABLE:I = 0x7

.field public static final SSH_DISCONNECT_TOO_MANY_CONNECTIONS:I = 0xc

.field public static final SSH_EXTENDED_DATA_STDERR:I = 0x1

.field public static final SSH_MSG_CHANNEL_CLOSE:I = 0x61

.field public static final SSH_MSG_CHANNEL_DATA:I = 0x5e

.field public static final SSH_MSG_CHANNEL_EOF:I = 0x60

.field public static final SSH_MSG_CHANNEL_EXTENDED_DATA:I = 0x5f

.field public static final SSH_MSG_CHANNEL_FAILURE:I = 0x64

.field public static final SSH_MSG_CHANNEL_OPEN:I = 0x5a

.field public static final SSH_MSG_CHANNEL_OPEN_CONFIRMATION:I = 0x5b

.field public static final SSH_MSG_CHANNEL_OPEN_FAILURE:I = 0x5c

.field public static final SSH_MSG_CHANNEL_REQUEST:I = 0x62

.field public static final SSH_MSG_CHANNEL_SUCCESS:I = 0x63

.field public static final SSH_MSG_CHANNEL_WINDOW_ADJUST:I = 0x5d

.field public static final SSH_MSG_DEBUG:I = 0x4

.field public static final SSH_MSG_DISCONNECT:I = 0x1

.field public static final SSH_MSG_GLOBAL_REQUEST:I = 0x50

.field public static final SSH_MSG_IGNORE:I = 0x2

.field public static final SSH_MSG_KEXDH_INIT:I = 0x1e

.field public static final SSH_MSG_KEXDH_REPLY:I = 0x1f

.field public static final SSH_MSG_KEXINIT:I = 0x14

.field public static final SSH_MSG_KEX_DH_GEX_GROUP:I = 0x1f

.field public static final SSH_MSG_KEX_DH_GEX_INIT:I = 0x20

.field public static final SSH_MSG_KEX_DH_GEX_REPLY:I = 0x21

.field public static final SSH_MSG_KEX_DH_GEX_REQUEST:I = 0x22

.field public static final SSH_MSG_KEX_DH_GEX_REQUEST_OLD:I = 0x1e

.field public static final SSH_MSG_NEWKEYS:I = 0x15

.field public static final SSH_MSG_REQUEST_FAILURE:I = 0x52

.field public static final SSH_MSG_REQUEST_SUCCESS:I = 0x51

.field public static final SSH_MSG_SERVICE_ACCEPT:I = 0x6

.field public static final SSH_MSG_SERVICE_REQUEST:I = 0x5

.field public static final SSH_MSG_UNIMPLEMENTED:I = 0x3

.field public static final SSH_MSG_USERAUTH_BANNER:I = 0x35

.field public static final SSH_MSG_USERAUTH_FAILURE:I = 0x33

.field public static final SSH_MSG_USERAUTH_INFO_REQUEST:I = 0x3c

.field public static final SSH_MSG_USERAUTH_INFO_RESPONSE:I = 0x3d

.field public static final SSH_MSG_USERAUTH_REQUEST:I = 0x32

.field public static final SSH_MSG_USERAUTH_SUCCESS:I = 0x34

.field public static final SSH_OPEN_ADMINISTRATIVELY_PROHIBITED:I = 0x1

.field public static final SSH_OPEN_CONNECT_FAILED:I = 0x2

.field public static final SSH_OPEN_RESOURCE_SHORTAGE:I = 0x4

.field public static final SSH_OPEN_UNKNOWN_CHANNEL_TYPE:I = 0x3

.field private static final reverseNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/16 v0, 0x65

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    .line 5
    sput-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    new-array v3, v2, [J

    .line 11
    .line 12
    fill-array-data v3, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v3, 0x1

    .line 23
    aput-object v1, v0, v3

    .line 24
    .line 25
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    new-array v4, v3, [J

    .line 29
    .line 30
    fill-array-data v4, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v4, 0x2

    .line 41
    aput-object v1, v0, v4

    .line 42
    .line 43
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v4, v2, [J

    .line 46
    .line 47
    fill-array-data v4, :array_2

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    aput-object v1, v0, v3

    .line 58
    .line 59
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v4, v3, [J

    .line 62
    .line 63
    fill-array-data v4, :array_3

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v4, v2, [J

    .line 78
    .line 79
    fill-array-data v4, :array_4

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const/4 v4, 0x5

    .line 90
    aput-object v1, v0, v4

    .line 91
    .line 92
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v5, v2, [J

    .line 95
    .line 96
    fill-array-data v5, :array_5

    .line 97
    .line 98
    .line 99
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const/4 v5, 0x6

    .line 107
    aput-object v1, v0, v5

    .line 108
    .line 109
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v6, v3, [J

    .line 112
    .line 113
    fill-array-data v6, :array_6

    .line 114
    .line 115
    .line 116
    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const/16 v6, 0x14

    .line 124
    .line 125
    aput-object v1, v0, v6

    .line 126
    .line 127
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    new-array v3, v3, [J

    .line 130
    .line 131
    fill-array-data v3, :array_7

    .line 132
    .line 133
    .line 134
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const/16 v3, 0x15

    .line 142
    .line 143
    aput-object v1, v0, v3

    .line 144
    .line 145
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array v3, v2, [J

    .line 148
    .line 149
    fill-array-data v3, :array_8

    .line 150
    .line 151
    .line 152
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const/16 v3, 0x1e

    .line 160
    .line 161
    aput-object v1, v0, v3

    .line 162
    .line 163
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 164
    .line 165
    const/4 v3, 0x7

    .line 166
    new-array v3, v3, [J

    .line 167
    .line 168
    fill-array-data v3, :array_9

    .line 169
    .line 170
    .line 171
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    const/16 v3, 0x1f

    .line 179
    .line 180
    aput-object v1, v0, v3

    .line 181
    .line 182
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 183
    .line 184
    new-array v3, v2, [J

    .line 185
    .line 186
    fill-array-data v3, :array_a

    .line 187
    .line 188
    .line 189
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    const/16 v3, 0x20

    .line 197
    .line 198
    aput-object v1, v0, v3

    .line 199
    .line 200
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 201
    .line 202
    new-array v3, v2, [J

    .line 203
    .line 204
    fill-array-data v3, :array_b

    .line 205
    .line 206
    .line 207
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    const/16 v3, 0x21

    .line 215
    .line 216
    aput-object v1, v0, v3

    .line 217
    .line 218
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 219
    .line 220
    new-array v3, v4, [J

    .line 221
    .line 222
    fill-array-data v3, :array_c

    .line 223
    .line 224
    .line 225
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    const/16 v3, 0x22

    .line 233
    .line 234
    aput-object v1, v0, v3

    .line 235
    .line 236
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 237
    .line 238
    new-array v3, v2, [J

    .line 239
    .line 240
    fill-array-data v3, :array_d

    .line 241
    .line 242
    .line 243
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    const/16 v3, 0x32

    .line 251
    .line 252
    aput-object v1, v0, v3

    .line 253
    .line 254
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 255
    .line 256
    new-array v3, v2, [J

    .line 257
    .line 258
    fill-array-data v3, :array_e

    .line 259
    .line 260
    .line 261
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    const/16 v3, 0x33

    .line 269
    .line 270
    aput-object v1, v0, v3

    .line 271
    .line 272
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 273
    .line 274
    new-array v3, v2, [J

    .line 275
    .line 276
    fill-array-data v3, :array_f

    .line 277
    .line 278
    .line 279
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    const/16 v3, 0x34

    .line 287
    .line 288
    aput-object v1, v0, v3

    .line 289
    .line 290
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 291
    .line 292
    new-array v3, v2, [J

    .line 293
    .line 294
    fill-array-data v3, :array_10

    .line 295
    .line 296
    .line 297
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    const/16 v3, 0x35

    .line 305
    .line 306
    aput-object v1, v0, v3

    .line 307
    .line 308
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 309
    .line 310
    new-array v3, v4, [J

    .line 311
    .line 312
    fill-array-data v3, :array_11

    .line 313
    .line 314
    .line 315
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    const/16 v3, 0x3c

    .line 323
    .line 324
    aput-object v1, v0, v3

    .line 325
    .line 326
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 327
    .line 328
    new-array v3, v4, [J

    .line 329
    .line 330
    fill-array-data v3, :array_12

    .line 331
    .line 332
    .line 333
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    const/16 v3, 0x3d

    .line 341
    .line 342
    aput-object v1, v0, v3

    .line 343
    .line 344
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 345
    .line 346
    new-array v3, v2, [J

    .line 347
    .line 348
    fill-array-data v3, :array_13

    .line 349
    .line 350
    .line 351
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    const/16 v3, 0x50

    .line 359
    .line 360
    aput-object v1, v0, v3

    .line 361
    .line 362
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 363
    .line 364
    new-array v3, v2, [J

    .line 365
    .line 366
    fill-array-data v3, :array_14

    .line 367
    .line 368
    .line 369
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    const/16 v3, 0x51

    .line 377
    .line 378
    aput-object v1, v0, v3

    .line 379
    .line 380
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 381
    .line 382
    new-array v3, v2, [J

    .line 383
    .line 384
    fill-array-data v3, :array_15

    .line 385
    .line 386
    .line 387
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    const/16 v3, 0x52

    .line 395
    .line 396
    aput-object v1, v0, v3

    .line 397
    .line 398
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 399
    .line 400
    new-array v3, v2, [J

    .line 401
    .line 402
    fill-array-data v3, :array_16

    .line 403
    .line 404
    .line 405
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    const/16 v3, 0x5a

    .line 413
    .line 414
    aput-object v1, v0, v3

    .line 415
    .line 416
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 417
    .line 418
    new-array v3, v5, [J

    .line 419
    .line 420
    fill-array-data v3, :array_17

    .line 421
    .line 422
    .line 423
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    const/16 v3, 0x5b

    .line 431
    .line 432
    aput-object v1, v0, v3

    .line 433
    .line 434
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 435
    .line 436
    new-array v3, v4, [J

    .line 437
    .line 438
    fill-array-data v3, :array_18

    .line 439
    .line 440
    .line 441
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    const/16 v3, 0x5c

    .line 449
    .line 450
    aput-object v1, v0, v3

    .line 451
    .line 452
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 453
    .line 454
    new-array v3, v4, [J

    .line 455
    .line 456
    fill-array-data v3, :array_19

    .line 457
    .line 458
    .line 459
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    const/16 v3, 0x5d

    .line 467
    .line 468
    aput-object v1, v0, v3

    .line 469
    .line 470
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 471
    .line 472
    new-array v3, v2, [J

    .line 473
    .line 474
    fill-array-data v3, :array_1a

    .line 475
    .line 476
    .line 477
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    const/16 v3, 0x5e

    .line 485
    .line 486
    aput-object v1, v0, v3

    .line 487
    .line 488
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 489
    .line 490
    new-array v3, v4, [J

    .line 491
    .line 492
    fill-array-data v3, :array_1b

    .line 493
    .line 494
    .line 495
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    const/16 v3, 0x5f

    .line 503
    .line 504
    aput-object v1, v0, v3

    .line 505
    .line 506
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 507
    .line 508
    new-array v3, v2, [J

    .line 509
    .line 510
    fill-array-data v3, :array_1c

    .line 511
    .line 512
    .line 513
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    const/16 v3, 0x60

    .line 521
    .line 522
    aput-object v1, v0, v3

    .line 523
    .line 524
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 525
    .line 526
    new-array v3, v2, [J

    .line 527
    .line 528
    fill-array-data v3, :array_1d

    .line 529
    .line 530
    .line 531
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    const/16 v3, 0x61

    .line 539
    .line 540
    aput-object v1, v0, v3

    .line 541
    .line 542
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 543
    .line 544
    new-array v3, v2, [J

    .line 545
    .line 546
    fill-array-data v3, :array_1e

    .line 547
    .line 548
    .line 549
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    const/16 v3, 0x62

    .line 557
    .line 558
    aput-object v1, v0, v3

    .line 559
    .line 560
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 561
    .line 562
    new-array v3, v2, [J

    .line 563
    .line 564
    fill-array-data v3, :array_1f

    .line 565
    .line 566
    .line 567
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    const/16 v3, 0x63

    .line 575
    .line 576
    aput-object v1, v0, v3

    .line 577
    .line 578
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 579
    .line 580
    new-array v2, v2, [J

    .line 581
    .line 582
    fill-array-data v2, :array_20

    .line 583
    .line 584
    .line 585
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    const/16 v2, 0x64

    .line 593
    .line 594
    aput-object v1, v0, v2

    .line 595
    .line 596
    return-void

    .line 597
    :array_0
    .array-data 8
        0x7ccc7f39fa65e419L    # 1.4218854560568715E293
        -0x60992dcb3c44c955L
        0x607e85db92a159f3L    # 6.547918957247979E156
        0x9bf9bfd42baae1aL
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
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    :array_1
    .array-data 8
        -0x10b27575a47c9d36L    # -1.3996339900694943E228
        0x1f5f4ed02a0387eaL
        0x7ebdc26983286753L    # 3.1887477343428217E302
    .end array-data

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
    .line 630
    .line 631
    .line 632
    .line 633
    :array_2
    .array-data 8
        0x7a07f6fcfa34d927L    # 6.797038894947949E279
        -0x1965d1947c0f4bb5L    # -1.779954948126827E186
        0x116440db22bd2200L    # 6.83958862588944E-225
        -0x6d070f1f5d83fa9bL
    .end array-data

    .line 634
    .line 635
    .line 636
    .line 637
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
    :array_3
    .array-data 8
        0x2a3d51889f4c8f47L    # 3.195826099029503E-105
        0x14473dcd6e51e987L    # 5.523007464146285E-211
        0x109ea898cdb4aaeeL
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
    :array_4
    .array-data 8
        0x649b0ee92e9845e6L    # 4.2830891144013117E176
        0x62bc29f6d6a681dbL    # 4.15193695425962E167
        -0x18a11adf4377d7b5L    # -8.603316849454431E189
        0xcc76c17c884ac7fL
    .end array-data

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
    :array_5
    .array-data 8
        -0x2aa76c279b3826abL    # -1.3761843165943076E103
        -0x27cb5a64f79519d0L    # -8.13529158172877E116
        0x2ad7a2310f1387eaL    # 2.637974836398227E-102
        -0x64e85073a5d37611L    # -3.653166345740994E-178
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
    :array_6
    .array-data 8
        0x20b6a233dffd66ccL    # 4.321513752911194E-151
        0x1d80333d57db7092L
        -0x424de9c3626c4de3L    # -1.6449905542377635E-11
    .end array-data

    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    :array_7
    .array-data 8
        -0x5edfb5183c28743L
        0x73243ce38400090fL    # 4.4219188283140616E246
        0x6ac9ed7f48834c11L    # 2.6013059406909914E206
    .end array-data

    .line 726
    .line 727
    .line 728
    .line 729
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
    :array_8
    .array-data 8
        -0x7d83c2ade36d29c8L
        -0x3badf30c1718720L
        0x3dfb47909b3046faL
        -0x4890c254eba15160L    # -1.1207120278339728E-41
    .end array-data

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
    :array_9
    .array-data 8
        -0x2b2c6910f28fc499L    # -4.284733432098615E100
        -0x92fd52a08e4c74bL    # -2.036359458561953E264
        0x64a7509e39631fa5L    # 7.381103509003948E176
        -0x5b9ed723a2d474aaL    # -1.888684453745236E-133
        0x32941d8dd57472c3L    # 4.7751893780518915E-65
        0x2119db68c7aec031L
        0x2ce0102c9a2147e3L    # 1.5401495075326737E-92
    .end array-data

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
    :array_a
    .array-data 8
        0x1ce7a885b3d85a40L    # 1.95900616807189E-169
        0x6a3e0cb2d2aff05bL    # 5.88838006710428E203
        -0xa66cad176b93262L    # -3.027960676813092E258
        0x4d0b306a2f943c0cL    # 1.3981194159326525E63
    .end array-data

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
    :array_b
    .array-data 8
        -0xae39132d1bb3b92L
        0x591529a46d20e4c4L
        0x2b2f8812320d5459L
        0xff65d6f5ec9d2b9L    # 9.00351046484023E-232
    .end array-data

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
    :array_c
    .array-data 8
        0x58d085288525baefL    # 6.665492832792372E119
        0x206c52fdb3776372L
        -0x7af94c282a9a2365L
        0x32b2383e33863ae8L    # 1.7300638726344844E-64
        0x69d8e37696b4129dL    # 7.620374735463511E201
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
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    :array_d
    .array-data 8
        -0x79fe71681828e497L    # -9.672182433385006E-280
        -0x6dc0573ec1ebbb87L    # -8.758366390614035E-221
        -0x6bcb252806797100L
        0x25d779cbbf8112adL
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
    .line 874
    .line 875
    .line 876
    .line 877
    :array_e
    .array-data 8
        -0x5e4f6c586e1043a5L    # -2.074255145879454E-146
        0x6e3ff60dc510b907L    # 1.1553117054428943E223
        -0x3f1f8c6718dc2016L    # -33692.77821534856
        -0x1bf87a1495c5774bL    # -7.272479442148279E173
    .end array-data

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
    :array_f
    .array-data 8
        -0x28dff515bcbc456fL    # -4.822632485030619E111
        0x6faea2cea41d7a6fL    # 9.289627120619166E229
        -0x774768eaa9edb392L
        -0x596096f20d4472deL    # -1.1878861459995367E-122
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
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    :array_10
    .array-data 8
        0x25989c64c7a2a605L
        0x1b5ef74329fa1999L
        0x5b5e3b4192afc6e8L
        -0x385af5761e6d6d91L    # -1.3984253720941343E37
    .end array-data

    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    :array_11
    .array-data 8
        -0x1ffc646bb35248a6L    # -3.286208743983162E154
        0x4a5ed634c76d6d97L    # 1.8027180062486024E50
        0x78edd09100e5bee7L    # 3.2257944785488734E274
        -0x769c2b159a14fe3bL    # -1.9681300055455806E-263
        0x431f6bf9f0ebc33bL    # 2.2111113777604628E15
    .end array-data

    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    :array_12
    .array-data 8
        -0x5738ef9b2beb8745L
        -0x5af3a7643c927e38L    # -3.1948142367999477E-130
        0x25e1f74f07fa6b55L
        0x2d8f927fb4e2d881L    # 3.099823617713013E-89
        -0x3bab4e38e8625791L    # -1.5269804604206914E21
    .end array-data

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
    .line 984
    .line 985
    :array_13
    .array-data 8
        -0x757b63fafd74feb7L    # -5.361670945589948E-258
        0x5f162c5bb47b5400L    # 1.1340904353750268E150
        0xd471e657d2457e6L
        0x4f70129e26d06ec1L    # 4.543687716780973E74
    .end array-data

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
    .line 996
    :array_14
    .array-data 8
        -0x4ca47bdff51472d0L    # -2.675518709173053E-61
        0x601bc2149dba2f19L    # 9.304390908603923E154
        -0x55296adb335942bcL
        -0x47ea0ed12b7bb683L    # -1.6120524419048213E-38
    .end array-data

    :array_15
    .array-data 8
        -0x2388cbb0d72de50dL    # -2.698529233083134E137
        0x72180623a0d38e72L    # 4.004806325021819E241
        0x3a37f2f878e4f88L    # 3.90749077462865E-291
        0x7394e886159547c2L    # 5.847565226732861E248
    .end array-data

    :array_16
    .array-data 8
        -0x1a1dcbe15e910b22L    # -6.042887201173094E182
        -0x395b32836f7878cfL    # -2.109642581275034E32
        0x17afb6da16fbd45fL
        0x6171e6cbb9fa4b65L    # 2.5167972743699497E161
    .end array-data

    :array_17
    .array-data 8
        0x20b2a94e2f0efd3L
        -0x26612b6ac5ff3fe4L    # -5.0951553183545246E123
        -0x22c549b3e150605bL    # -1.2724068652309847E141
        0x6dac2d2985c69c79L    # 1.989264719940086E220
        0x35eda279960091fdL    # 6.336519533521309E-49
        -0x435f5a4013fe5563L    # -1.1551495694563865E-16
    .end array-data

    :array_18
    .array-data 8
        -0x1761afb6e6e71111L    # -8.851460487104754E195
        0x147fa52ed804eb09L    # 6.016051034105438E-210
        0x16449c214f80663aL    # 2.103528699475781E-201
        -0x10ebc5055ba2d5d4L    # -1.198121712593638E227
        -0x54f3121076433f92L
    .end array-data

    :array_19
    .array-data 8
        -0x9c3f045a9ba06c1L    # -3.451645308454082E261
        0x54464ef0b59ff0d7L    # 9.53007373638561E97
        -0x259389a19a337e0cL
        0x26927e7754e874efL    # 6.994115940990679E-123
        -0x7ec47bf122ebd40fL
    .end array-data

    :array_1a
    .array-data 8
        0x18b71af3613f5bdbL
        0xaebf22c7336f0fcL
        0x6c2c9c13ee31b1c1L    # 1.203926401934335E213
        0x11b3c46e9ad61b47L    # 2.136145636440789E-223
    .end array-data

    :array_1b
    .array-data 8
        -0x1e0b26dc439ae4b7L    # -7.503540918837294E163
        0x3b09d012245cf379L    # 2.6689785682880614E-24
        -0x6c56a7a4e27bc5b3L    # -5.881766661162969E-214
        0x4e8f772326a36140L    # 2.714575902861768E70
        -0x6fb0149c41952572L
    .end array-data

    :array_1c
    .array-data 8
        0x602e9f633d61b34bL    # 2.052910233816867E155
        0x105803f9debe47eaL    # 6.187504437883056E-230
        -0x66227759e7fef8f5L    # -4.344119488066897E-184
        0x4bce052c422e2504L    # 1.4721866470982745E57
    .end array-data

    :array_1d
    .array-data 8
        -0x769e199ac69a52c0L
        0x7fac1137b74aee1eL    # 9.854748859369305E306
        0x324a0be1972cd5c7L    # 1.9322301568211679E-66
        -0x5f60de308775e36eL
    .end array-data

    :array_1e
    .array-data 8
        -0x6e425fc502822d7fL
        -0x138ca75c020433e2L    # -2.605156259718521E214
        0x7d29b6fac68e37dfL    # 8.211610016869578E294
        -0x28c81138235734dcL    # -1.4389005394500723E112
    .end array-data

    :array_1f
    .array-data 8
        -0x5a24ba1b10c503b2L
        0x6d2556aadad29870L    # 5.884799573336541E217
        0x3e351c4103ffb1f0L    # 4.915140350264647E-9
        0x2e0ab510cdbedbfcL    # 6.712758850465385E-87
    .end array-data

    :array_20
    .array-data 8
        -0x5a1fa139636cafdL
        0x1b2a173bc3949d60L    # 8.048208691108968E-178
        -0x7fb1fa895fc9a81aL
        -0x4cf42e956c7090c5L    # -8.452736382026687E-63
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getMessageName(I)Ljava/lang/String;
    .locals 3

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-ge p0, v1, :cond_0

    .line 7
    .line 8
    aget-object v0, v0, p0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    new-array v2, v2, [J

    .line 23
    .line 24
    fill-array-data v2, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_1
    return-object v0

    .line 35
    :array_0
    .array-data 8
        -0x2347bb1eca3b2c00L    # -4.5157615747549884E138
        -0x7e19975623c89729L    # -1.673068547353552E-299
        0x1611cf97425f02afL    # 2.272316548195455E-202
    .end array-data
.end method
