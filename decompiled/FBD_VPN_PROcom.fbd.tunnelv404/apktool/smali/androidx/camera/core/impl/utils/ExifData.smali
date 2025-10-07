.class public Landroidx/camera/core/impl/utils/ExifData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/utils/ExifData$Builder;,
        Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EXIF_POINTER_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

.field static final EXIF_TAGS:[[Landroidx/camera/core/impl/utils/ExifTag;

.field private static final IFD_EXIF_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

.field static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_GPS_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

.field static final IFD_TYPE_EXIF:I = 0x1

.field static final IFD_TYPE_GPS:I = 0x2

.field static final IFD_TYPE_INTEROPERABILITY:I = 0x3

.field static final IFD_TYPE_PRIMARY:I = 0x0

.field private static final MM_IN_MICRONS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ExifData"

.field static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field static final TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/utils/ExifAttribute;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mByteOrder:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 49

    .line 1
    const-string v12, "DOUBLE"

    .line 2
    .line 3
    const-string v13, "IFD"

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    const-string v1, "BYTE"

    .line 8
    .line 9
    const-string v2, "STRING"

    .line 10
    .line 11
    const-string v3, "USHORT"

    .line 12
    .line 13
    const-string v4, "ULONG"

    .line 14
    .line 15
    const-string v5, "URATIONAL"

    .line 16
    .line 17
    const-string v6, "SBYTE"

    .line 18
    .line 19
    const-string v7, "UNDEFINED"

    .line 20
    .line 21
    const-string v8, "SSHORT"

    .line 22
    .line 23
    const-string v9, "SLONG"

    .line 24
    .line 25
    const-string v10, "SRATIONAL"

    .line 26
    .line 27
    const-string v11, "SINGLE"

    .line 28
    .line 29
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Landroidx/camera/core/impl/utils/ExifData;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    .line 36
    .line 37
    const-string v1, "ImageWidth"

    .line 38
    .line 39
    const/16 v2, 0x100

    .line 40
    .line 41
    const/4 v3, 0x3

    .line 42
    const/4 v4, 0x4

    .line 43
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Landroidx/camera/core/impl/utils/ExifTag;

    .line 47
    .line 48
    const-string v2, "ImageLength"

    .line 49
    .line 50
    const/16 v5, 0x101

    .line 51
    .line 52
    invoke-direct {v1, v2, v5, v3, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    .line 56
    .line 57
    const-string v5, "Make"

    .line 58
    .line 59
    const/16 v6, 0x10f

    .line 60
    .line 61
    const/4 v7, 0x2

    .line 62
    invoke-direct {v2, v5, v6, v7}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    new-instance v5, Landroidx/camera/core/impl/utils/ExifTag;

    .line 66
    .line 67
    const-string v6, "Model"

    .line 68
    .line 69
    const/16 v8, 0x110

    .line 70
    .line 71
    invoke-direct {v5, v6, v8, v7}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    new-instance v6, Landroidx/camera/core/impl/utils/ExifTag;

    .line 75
    .line 76
    const-string v8, "Orientation"

    .line 77
    .line 78
    const/16 v9, 0x112

    .line 79
    .line 80
    invoke-direct {v6, v8, v9, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 81
    .line 82
    .line 83
    new-instance v8, Landroidx/camera/core/impl/utils/ExifTag;

    .line 84
    .line 85
    const-string v9, "XResolution"

    .line 86
    .line 87
    const/16 v10, 0x11a

    .line 88
    .line 89
    const/4 v11, 0x5

    .line 90
    invoke-direct {v8, v9, v10, v11}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    new-instance v9, Landroidx/camera/core/impl/utils/ExifTag;

    .line 94
    .line 95
    const-string v10, "YResolution"

    .line 96
    .line 97
    const/16 v12, 0x11b

    .line 98
    .line 99
    invoke-direct {v9, v10, v12, v11}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 100
    .line 101
    .line 102
    new-instance v10, Landroidx/camera/core/impl/utils/ExifTag;

    .line 103
    .line 104
    const-string v12, "ResolutionUnit"

    .line 105
    .line 106
    const/16 v13, 0x128

    .line 107
    .line 108
    invoke-direct {v10, v12, v13, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 109
    .line 110
    .line 111
    new-instance v12, Landroidx/camera/core/impl/utils/ExifTag;

    .line 112
    .line 113
    const-string v13, "Software"

    .line 114
    .line 115
    const/16 v14, 0x131

    .line 116
    .line 117
    invoke-direct {v12, v13, v14, v7}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 118
    .line 119
    .line 120
    new-instance v13, Landroidx/camera/core/impl/utils/ExifTag;

    .line 121
    .line 122
    const-string v14, "DateTime"

    .line 123
    .line 124
    const/16 v15, 0x132

    .line 125
    .line 126
    invoke-direct {v13, v14, v15, v7}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 127
    .line 128
    .line 129
    new-instance v14, Landroidx/camera/core/impl/utils/ExifTag;

    .line 130
    .line 131
    const-string v15, "YCbCrPositioning"

    .line 132
    .line 133
    const/16 v11, 0x213

    .line 134
    .line 135
    invoke-direct {v14, v15, v11, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 136
    .line 137
    .line 138
    new-instance v11, Landroidx/camera/core/impl/utils/ExifTag;

    .line 139
    .line 140
    const-string v15, "SubIFDPointer"

    .line 141
    .line 142
    const/16 v3, 0x14a

    .line 143
    .line 144
    invoke-direct {v11, v15, v3, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 145
    .line 146
    .line 147
    new-instance v3, Landroidx/camera/core/impl/utils/ExifTag;

    .line 148
    .line 149
    const-string v7, "ExifIFDPointer"

    .line 150
    .line 151
    move-object/from16 v16, v15

    .line 152
    .line 153
    const v15, 0x8769

    .line 154
    .line 155
    .line 156
    invoke-direct {v3, v7, v15, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 157
    .line 158
    .line 159
    new-instance v15, Landroidx/camera/core/impl/utils/ExifTag;

    .line 160
    .line 161
    move-object/from16 v17, v7

    .line 162
    .line 163
    const-string v7, "GPSInfoIFDPointer"

    .line 164
    .line 165
    move-object/from16 v18, v3

    .line 166
    .line 167
    const v3, 0x8825

    .line 168
    .line 169
    .line 170
    invoke-direct {v15, v7, v3, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 171
    .line 172
    .line 173
    const/16 v3, 0xe

    .line 174
    .line 175
    new-array v4, v3, [Landroidx/camera/core/impl/utils/ExifTag;

    .line 176
    .line 177
    const/4 v3, 0x0

    .line 178
    aput-object v0, v4, v3

    .line 179
    .line 180
    const/4 v0, 0x1

    .line 181
    aput-object v1, v4, v0

    .line 182
    .line 183
    const/4 v1, 0x2

    .line 184
    aput-object v2, v4, v1

    .line 185
    .line 186
    const/4 v1, 0x3

    .line 187
    aput-object v5, v4, v1

    .line 188
    .line 189
    const/4 v1, 0x4

    .line 190
    aput-object v6, v4, v1

    .line 191
    .line 192
    const/4 v1, 0x5

    .line 193
    aput-object v8, v4, v1

    .line 194
    .line 195
    const/4 v1, 0x6

    .line 196
    aput-object v9, v4, v1

    .line 197
    .line 198
    const/4 v2, 0x7

    .line 199
    aput-object v10, v4, v2

    .line 200
    .line 201
    const/16 v5, 0x8

    .line 202
    .line 203
    aput-object v12, v4, v5

    .line 204
    .line 205
    const/16 v6, 0x9

    .line 206
    .line 207
    aput-object v13, v4, v6

    .line 208
    .line 209
    const/16 v8, 0xa

    .line 210
    .line 211
    aput-object v14, v4, v8

    .line 212
    .line 213
    const/16 v9, 0xb

    .line 214
    .line 215
    aput-object v11, v4, v9

    .line 216
    .line 217
    const/16 v10, 0xc

    .line 218
    .line 219
    aput-object v18, v4, v10

    .line 220
    .line 221
    const/16 v11, 0xd

    .line 222
    .line 223
    aput-object v15, v4, v11

    .line 224
    .line 225
    sput-object v4, Landroidx/camera/core/impl/utils/ExifData;->IFD_TIFF_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    .line 226
    .line 227
    new-instance v12, Landroidx/camera/core/impl/utils/ExifTag;

    .line 228
    .line 229
    const v13, 0x829a

    .line 230
    .line 231
    .line 232
    const-string v14, "ExposureTime"

    .line 233
    .line 234
    const/4 v15, 0x5

    .line 235
    invoke-direct {v12, v14, v13, v15}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 236
    .line 237
    .line 238
    new-instance v13, Landroidx/camera/core/impl/utils/ExifTag;

    .line 239
    .line 240
    const v11, 0x829d

    .line 241
    .line 242
    .line 243
    const-string v10, "FNumber"

    .line 244
    .line 245
    invoke-direct {v13, v10, v11, v15}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 246
    .line 247
    .line 248
    new-instance v11, Landroidx/camera/core/impl/utils/ExifTag;

    .line 249
    .line 250
    const-string v15, "ExposureProgram"

    .line 251
    .line 252
    const v9, 0x8822

    .line 253
    .line 254
    .line 255
    const/4 v6, 0x3

    .line 256
    invoke-direct {v11, v15, v9, v6}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 257
    .line 258
    .line 259
    new-instance v9, Landroidx/camera/core/impl/utils/ExifTag;

    .line 260
    .line 261
    const-string v15, "PhotographicSensitivity"

    .line 262
    .line 263
    const v5, 0x8827

    .line 264
    .line 265
    .line 266
    invoke-direct {v9, v15, v5, v6}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 267
    .line 268
    .line 269
    new-instance v5, Landroidx/camera/core/impl/utils/ExifTag;

    .line 270
    .line 271
    const-string v15, "SensitivityType"

    .line 272
    .line 273
    const v1, 0x8830

    .line 274
    .line 275
    .line 276
    invoke-direct {v5, v15, v1, v6}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 277
    .line 278
    .line 279
    new-instance v1, Landroidx/camera/core/impl/utils/ExifTag;

    .line 280
    .line 281
    const-string v6, "ExifVersion"

    .line 282
    .line 283
    const v15, 0x9000

    .line 284
    .line 285
    .line 286
    const/4 v0, 0x2

    .line 287
    invoke-direct {v1, v6, v15, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 288
    .line 289
    .line 290
    new-instance v6, Landroidx/camera/core/impl/utils/ExifTag;

    .line 291
    .line 292
    const-string v15, "DateTimeOriginal"

    .line 293
    .line 294
    const v3, 0x9003

    .line 295
    .line 296
    .line 297
    invoke-direct {v6, v15, v3, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 298
    .line 299
    .line 300
    new-instance v3, Landroidx/camera/core/impl/utils/ExifTag;

    .line 301
    .line 302
    const-string v15, "DateTimeDigitized"

    .line 303
    .line 304
    const v8, 0x9004

    .line 305
    .line 306
    .line 307
    invoke-direct {v3, v15, v8, v0}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 308
    .line 309
    .line 310
    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    .line 311
    .line 312
    const-string v8, "ComponentsConfiguration"

    .line 313
    .line 314
    const v15, 0x9101

    .line 315
    .line 316
    .line 317
    invoke-direct {v0, v8, v15, v2}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 318
    .line 319
    .line 320
    new-instance v8, Landroidx/camera/core/impl/utils/ExifTag;

    .line 321
    .line 322
    const-string v15, "ShutterSpeedValue"

    .line 323
    .line 324
    const v2, 0x9201

    .line 325
    .line 326
    .line 327
    move-object/from16 v20, v10

    .line 328
    .line 329
    const/16 v10, 0xa

    .line 330
    .line 331
    invoke-direct {v8, v15, v2, v10}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 332
    .line 333
    .line 334
    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    .line 335
    .line 336
    const-string v15, "ApertureValue"

    .line 337
    .line 338
    const v10, 0x9202

    .line 339
    .line 340
    .line 341
    move-object/from16 v21, v14

    .line 342
    .line 343
    const/4 v14, 0x5

    .line 344
    invoke-direct {v2, v15, v10, v14}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 345
    .line 346
    .line 347
    new-instance v10, Landroidx/camera/core/impl/utils/ExifTag;

    .line 348
    .line 349
    const-string v14, "BrightnessValue"

    .line 350
    .line 351
    const v15, 0x9203

    .line 352
    .line 353
    .line 354
    move-object/from16 v22, v4

    .line 355
    .line 356
    const/16 v4, 0xa

    .line 357
    .line 358
    invoke-direct {v10, v14, v15, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 359
    .line 360
    .line 361
    new-instance v14, Landroidx/camera/core/impl/utils/ExifTag;

    .line 362
    .line 363
    const-string v15, "ExposureBiasValue"

    .line 364
    .line 365
    move-object/from16 v23, v7

    .line 366
    .line 367
    const v7, 0x9204

    .line 368
    .line 369
    .line 370
    invoke-direct {v14, v15, v7, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 371
    .line 372
    .line 373
    new-instance v4, Landroidx/camera/core/impl/utils/ExifTag;

    .line 374
    .line 375
    const-string v7, "MaxApertureValue"

    .line 376
    .line 377
    const v15, 0x9205

    .line 378
    .line 379
    .line 380
    move-object/from16 v24, v14

    .line 381
    .line 382
    const/4 v14, 0x5

    .line 383
    invoke-direct {v4, v7, v15, v14}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 384
    .line 385
    .line 386
    new-instance v7, Landroidx/camera/core/impl/utils/ExifTag;

    .line 387
    .line 388
    const-string v14, "MeteringMode"

    .line 389
    .line 390
    const v15, 0x9207

    .line 391
    .line 392
    .line 393
    move-object/from16 v25, v4

    .line 394
    .line 395
    const/4 v4, 0x3

    .line 396
    invoke-direct {v7, v14, v15, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 397
    .line 398
    .line 399
    new-instance v14, Landroidx/camera/core/impl/utils/ExifTag;

    .line 400
    .line 401
    const-string v15, "LightSource"

    .line 402
    .line 403
    move-object/from16 v26, v7

    .line 404
    .line 405
    const v7, 0x9208

    .line 406
    .line 407
    .line 408
    invoke-direct {v14, v15, v7, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 409
    .line 410
    .line 411
    new-instance v7, Landroidx/camera/core/impl/utils/ExifTag;

    .line 412
    .line 413
    const-string v15, "Flash"

    .line 414
    .line 415
    move-object/from16 v27, v14

    .line 416
    .line 417
    const v14, 0x9209

    .line 418
    .line 419
    .line 420
    invoke-direct {v7, v15, v14, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 421
    .line 422
    .line 423
    new-instance v4, Landroidx/camera/core/impl/utils/ExifTag;

    .line 424
    .line 425
    const-string v14, "FocalLength"

    .line 426
    .line 427
    const v15, 0x920a

    .line 428
    .line 429
    .line 430
    move-object/from16 v28, v7

    .line 431
    .line 432
    const/4 v7, 0x5

    .line 433
    invoke-direct {v4, v14, v15, v7}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 434
    .line 435
    .line 436
    new-instance v7, Landroidx/camera/core/impl/utils/ExifTag;

    .line 437
    .line 438
    const-string v14, "SubSecTime"

    .line 439
    .line 440
    const v15, 0x9290

    .line 441
    .line 442
    .line 443
    move-object/from16 v29, v4

    .line 444
    .line 445
    const/4 v4, 0x2

    .line 446
    invoke-direct {v7, v14, v15, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 447
    .line 448
    .line 449
    new-instance v14, Landroidx/camera/core/impl/utils/ExifTag;

    .line 450
    .line 451
    const-string v15, "SubSecTimeOriginal"

    .line 452
    .line 453
    move-object/from16 v30, v7

    .line 454
    .line 455
    const v7, 0x9291

    .line 456
    .line 457
    .line 458
    invoke-direct {v14, v15, v7, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 459
    .line 460
    .line 461
    new-instance v7, Landroidx/camera/core/impl/utils/ExifTag;

    .line 462
    .line 463
    const-string v15, "SubSecTimeDigitized"

    .line 464
    .line 465
    move-object/from16 v31, v14

    .line 466
    .line 467
    const v14, 0x9292

    .line 468
    .line 469
    .line 470
    invoke-direct {v7, v15, v14, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 471
    .line 472
    .line 473
    new-instance v4, Landroidx/camera/core/impl/utils/ExifTag;

    .line 474
    .line 475
    const-string v14, "FlashpixVersion"

    .line 476
    .line 477
    const v15, 0xa000

    .line 478
    .line 479
    .line 480
    move-object/from16 v32, v7

    .line 481
    .line 482
    const/4 v7, 0x7

    .line 483
    invoke-direct {v4, v14, v15, v7}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 484
    .line 485
    .line 486
    new-instance v7, Landroidx/camera/core/impl/utils/ExifTag;

    .line 487
    .line 488
    const-string v14, "ColorSpace"

    .line 489
    .line 490
    const v15, 0xa001

    .line 491
    .line 492
    .line 493
    move-object/from16 v33, v4

    .line 494
    .line 495
    const/4 v4, 0x3

    .line 496
    invoke-direct {v7, v14, v15, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 497
    .line 498
    .line 499
    new-instance v14, Landroidx/camera/core/impl/utils/ExifTag;

    .line 500
    .line 501
    const-string v15, "PixelXDimension"

    .line 502
    .line 503
    move-object/from16 v34, v7

    .line 504
    .line 505
    const v7, 0xa002

    .line 506
    .line 507
    .line 508
    move-object/from16 v35, v10

    .line 509
    .line 510
    const/4 v10, 0x4

    .line 511
    invoke-direct {v14, v15, v7, v4, v10}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    .line 512
    .line 513
    .line 514
    new-instance v7, Landroidx/camera/core/impl/utils/ExifTag;

    .line 515
    .line 516
    const-string v15, "PixelYDimension"

    .line 517
    .line 518
    move-object/from16 v36, v14

    .line 519
    .line 520
    const v14, 0xa003

    .line 521
    .line 522
    .line 523
    invoke-direct {v7, v15, v14, v4, v10}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    .line 524
    .line 525
    .line 526
    new-instance v14, Landroidx/camera/core/impl/utils/ExifTag;

    .line 527
    .line 528
    const-string v15, "InteroperabilityIFDPointer"

    .line 529
    .line 530
    const v4, 0xa005

    .line 531
    .line 532
    .line 533
    invoke-direct {v14, v15, v4, v10}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 534
    .line 535
    .line 536
    new-instance v10, Landroidx/camera/core/impl/utils/ExifTag;

    .line 537
    .line 538
    const-string v4, "FocalPlaneResolutionUnit"

    .line 539
    .line 540
    move-object/from16 v37, v15

    .line 541
    .line 542
    const v15, 0xa210

    .line 543
    .line 544
    .line 545
    move-object/from16 v38, v14

    .line 546
    .line 547
    const/4 v14, 0x3

    .line 548
    invoke-direct {v10, v4, v15, v14}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 549
    .line 550
    .line 551
    new-instance v4, Landroidx/camera/core/impl/utils/ExifTag;

    .line 552
    .line 553
    const-string v15, "SensingMethod"

    .line 554
    .line 555
    move-object/from16 v39, v10

    .line 556
    .line 557
    const v10, 0xa217

    .line 558
    .line 559
    .line 560
    invoke-direct {v4, v15, v10, v14}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 561
    .line 562
    .line 563
    new-instance v10, Landroidx/camera/core/impl/utils/ExifTag;

    .line 564
    .line 565
    const-string v14, "FileSource"

    .line 566
    .line 567
    const v15, 0xa300

    .line 568
    .line 569
    .line 570
    move-object/from16 v40, v4

    .line 571
    .line 572
    const/4 v4, 0x7

    .line 573
    invoke-direct {v10, v14, v15, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 574
    .line 575
    .line 576
    new-instance v14, Landroidx/camera/core/impl/utils/ExifTag;

    .line 577
    .line 578
    const-string v15, "SceneType"

    .line 579
    .line 580
    move-object/from16 v41, v10

    .line 581
    .line 582
    const v10, 0xa301

    .line 583
    .line 584
    .line 585
    invoke-direct {v14, v15, v10, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 586
    .line 587
    .line 588
    new-instance v4, Landroidx/camera/core/impl/utils/ExifTag;

    .line 589
    .line 590
    const-string v10, "CustomRendered"

    .line 591
    .line 592
    const v15, 0xa401

    .line 593
    .line 594
    .line 595
    move-object/from16 v42, v14

    .line 596
    .line 597
    const/4 v14, 0x3

    .line 598
    invoke-direct {v4, v10, v15, v14}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 599
    .line 600
    .line 601
    new-instance v10, Landroidx/camera/core/impl/utils/ExifTag;

    .line 602
    .line 603
    const-string v15, "ExposureMode"

    .line 604
    .line 605
    move-object/from16 v43, v4

    .line 606
    .line 607
    const v4, 0xa402

    .line 608
    .line 609
    .line 610
    invoke-direct {v10, v15, v4, v14}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 611
    .line 612
    .line 613
    new-instance v4, Landroidx/camera/core/impl/utils/ExifTag;

    .line 614
    .line 615
    const-string v15, "WhiteBalance"

    .line 616
    .line 617
    move-object/from16 v44, v10

    .line 618
    .line 619
    const v10, 0xa403

    .line 620
    .line 621
    .line 622
    invoke-direct {v4, v15, v10, v14}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 623
    .line 624
    .line 625
    new-instance v10, Landroidx/camera/core/impl/utils/ExifTag;

    .line 626
    .line 627
    const-string v15, "SceneCaptureType"

    .line 628
    .line 629
    move-object/from16 v45, v4

    .line 630
    .line 631
    const v4, 0xa406

    .line 632
    .line 633
    .line 634
    invoke-direct {v10, v15, v4, v14}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 635
    .line 636
    .line 637
    new-instance v4, Landroidx/camera/core/impl/utils/ExifTag;

    .line 638
    .line 639
    const-string v15, "Contrast"

    .line 640
    .line 641
    move-object/from16 v46, v10

    .line 642
    .line 643
    const v10, 0xa408

    .line 644
    .line 645
    .line 646
    invoke-direct {v4, v15, v10, v14}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 647
    .line 648
    .line 649
    new-instance v10, Landroidx/camera/core/impl/utils/ExifTag;

    .line 650
    .line 651
    const-string v15, "Saturation"

    .line 652
    .line 653
    move-object/from16 v47, v4

    .line 654
    .line 655
    const v4, 0xa409

    .line 656
    .line 657
    .line 658
    invoke-direct {v10, v15, v4, v14}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 659
    .line 660
    .line 661
    new-instance v4, Landroidx/camera/core/impl/utils/ExifTag;

    .line 662
    .line 663
    const-string v15, "Sharpness"

    .line 664
    .line 665
    move-object/from16 v48, v10

    .line 666
    .line 667
    const v10, 0xa40a

    .line 668
    .line 669
    .line 670
    invoke-direct {v4, v15, v10, v14}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 671
    .line 672
    .line 673
    const/16 v10, 0x25

    .line 674
    .line 675
    new-array v10, v10, [Landroidx/camera/core/impl/utils/ExifTag;

    .line 676
    .line 677
    const/4 v15, 0x0

    .line 678
    aput-object v12, v10, v15

    .line 679
    .line 680
    const/4 v12, 0x1

    .line 681
    aput-object v13, v10, v12

    .line 682
    .line 683
    const/4 v12, 0x2

    .line 684
    aput-object v11, v10, v12

    .line 685
    .line 686
    aput-object v9, v10, v14

    .line 687
    .line 688
    const/4 v9, 0x4

    .line 689
    aput-object v5, v10, v9

    .line 690
    .line 691
    const/4 v5, 0x5

    .line 692
    aput-object v1, v10, v5

    .line 693
    .line 694
    const/4 v1, 0x6

    .line 695
    aput-object v6, v10, v1

    .line 696
    .line 697
    const/4 v1, 0x7

    .line 698
    aput-object v3, v10, v1

    .line 699
    .line 700
    const/16 v1, 0x8

    .line 701
    .line 702
    aput-object v0, v10, v1

    .line 703
    .line 704
    const/16 v0, 0x9

    .line 705
    .line 706
    aput-object v8, v10, v0

    .line 707
    .line 708
    const/16 v0, 0xa

    .line 709
    .line 710
    aput-object v2, v10, v0

    .line 711
    .line 712
    const/16 v0, 0xb

    .line 713
    .line 714
    aput-object v35, v10, v0

    .line 715
    .line 716
    const/16 v0, 0xc

    .line 717
    .line 718
    aput-object v24, v10, v0

    .line 719
    .line 720
    const/16 v0, 0xd

    .line 721
    .line 722
    aput-object v25, v10, v0

    .line 723
    .line 724
    const/16 v0, 0xe

    .line 725
    .line 726
    aput-object v26, v10, v0

    .line 727
    .line 728
    const/16 v0, 0xf

    .line 729
    .line 730
    aput-object v27, v10, v0

    .line 731
    .line 732
    const/16 v0, 0x10

    .line 733
    .line 734
    aput-object v28, v10, v0

    .line 735
    .line 736
    const/16 v1, 0x11

    .line 737
    .line 738
    aput-object v29, v10, v1

    .line 739
    .line 740
    const/16 v1, 0x12

    .line 741
    .line 742
    aput-object v30, v10, v1

    .line 743
    .line 744
    const/16 v1, 0x13

    .line 745
    .line 746
    aput-object v31, v10, v1

    .line 747
    .line 748
    const/16 v1, 0x14

    .line 749
    .line 750
    aput-object v32, v10, v1

    .line 751
    .line 752
    const/16 v1, 0x15

    .line 753
    .line 754
    aput-object v33, v10, v1

    .line 755
    .line 756
    const/16 v1, 0x16

    .line 757
    .line 758
    aput-object v34, v10, v1

    .line 759
    .line 760
    const/16 v1, 0x17

    .line 761
    .line 762
    aput-object v36, v10, v1

    .line 763
    .line 764
    const/16 v2, 0x18

    .line 765
    .line 766
    aput-object v7, v10, v2

    .line 767
    .line 768
    const/16 v2, 0x19

    .line 769
    .line 770
    aput-object v38, v10, v2

    .line 771
    .line 772
    const/16 v3, 0x1a

    .line 773
    .line 774
    aput-object v39, v10, v3

    .line 775
    .line 776
    const/16 v3, 0x1b

    .line 777
    .line 778
    aput-object v40, v10, v3

    .line 779
    .line 780
    const/16 v3, 0x1c

    .line 781
    .line 782
    aput-object v41, v10, v3

    .line 783
    .line 784
    const/16 v3, 0x1d

    .line 785
    .line 786
    aput-object v42, v10, v3

    .line 787
    .line 788
    const/16 v3, 0x1e

    .line 789
    .line 790
    aput-object v43, v10, v3

    .line 791
    .line 792
    const/16 v3, 0x1f

    .line 793
    .line 794
    aput-object v44, v10, v3

    .line 795
    .line 796
    const/16 v3, 0x20

    .line 797
    .line 798
    aput-object v45, v10, v3

    .line 799
    .line 800
    const/16 v3, 0x21

    .line 801
    .line 802
    aput-object v46, v10, v3

    .line 803
    .line 804
    const/16 v3, 0x22

    .line 805
    .line 806
    aput-object v47, v10, v3

    .line 807
    .line 808
    const/16 v3, 0x23

    .line 809
    .line 810
    aput-object v48, v10, v3

    .line 811
    .line 812
    const/16 v3, 0x24

    .line 813
    .line 814
    aput-object v4, v10, v3

    .line 815
    .line 816
    sput-object v10, Landroidx/camera/core/impl/utils/ExifData;->IFD_EXIF_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    .line 817
    .line 818
    new-instance v3, Landroidx/camera/core/impl/utils/ExifTag;

    .line 819
    .line 820
    const-string v4, "GPSVersionID"

    .line 821
    .line 822
    const/4 v5, 0x0

    .line 823
    const/4 v6, 0x1

    .line 824
    invoke-direct {v3, v4, v5, v6}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 825
    .line 826
    .line 827
    new-instance v4, Landroidx/camera/core/impl/utils/ExifTag;

    .line 828
    .line 829
    const-string v5, "GPSLatitudeRef"

    .line 830
    .line 831
    const/4 v7, 0x2

    .line 832
    invoke-direct {v4, v5, v6, v7}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 833
    .line 834
    .line 835
    new-instance v5, Landroidx/camera/core/impl/utils/ExifTag;

    .line 836
    .line 837
    const-string v6, "GPSLatitude"

    .line 838
    .line 839
    const/4 v8, 0x5

    .line 840
    const/16 v9, 0xa

    .line 841
    .line 842
    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    .line 843
    .line 844
    .line 845
    new-instance v6, Landroidx/camera/core/impl/utils/ExifTag;

    .line 846
    .line 847
    const-string v11, "GPSLongitudeRef"

    .line 848
    .line 849
    const/4 v12, 0x3

    .line 850
    invoke-direct {v6, v11, v12, v7}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 851
    .line 852
    .line 853
    new-instance v7, Landroidx/camera/core/impl/utils/ExifTag;

    .line 854
    .line 855
    const-string v11, "GPSLongitude"

    .line 856
    .line 857
    const/4 v12, 0x4

    .line 858
    invoke-direct {v7, v11, v12, v8, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    .line 859
    .line 860
    .line 861
    new-instance v9, Landroidx/camera/core/impl/utils/ExifTag;

    .line 862
    .line 863
    const-string v11, "GPSAltitudeRef"

    .line 864
    .line 865
    const/4 v12, 0x1

    .line 866
    invoke-direct {v9, v11, v8, v12}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 867
    .line 868
    .line 869
    new-instance v11, Landroidx/camera/core/impl/utils/ExifTag;

    .line 870
    .line 871
    const-string v12, "GPSAltitude"

    .line 872
    .line 873
    const/4 v13, 0x6

    .line 874
    invoke-direct {v11, v12, v13, v8}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 875
    .line 876
    .line 877
    new-instance v12, Landroidx/camera/core/impl/utils/ExifTag;

    .line 878
    .line 879
    const-string v13, "GPSTimeStamp"

    .line 880
    .line 881
    const/4 v14, 0x7

    .line 882
    invoke-direct {v12, v13, v14, v8}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 883
    .line 884
    .line 885
    new-instance v8, Landroidx/camera/core/impl/utils/ExifTag;

    .line 886
    .line 887
    const-string v14, "GPSSpeedRef"

    .line 888
    .line 889
    const/16 v2, 0xc

    .line 890
    .line 891
    const/4 v15, 0x2

    .line 892
    invoke-direct {v8, v14, v2, v15}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 893
    .line 894
    .line 895
    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    .line 896
    .line 897
    const-string v14, "GPSTrackRef"

    .line 898
    .line 899
    const/16 v1, 0xe

    .line 900
    .line 901
    invoke-direct {v2, v14, v1, v15}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 902
    .line 903
    .line 904
    new-instance v1, Landroidx/camera/core/impl/utils/ExifTag;

    .line 905
    .line 906
    const-string v14, "GPSImgDirectionRef"

    .line 907
    .line 908
    invoke-direct {v1, v14, v0, v15}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 909
    .line 910
    .line 911
    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    .line 912
    .line 913
    const-string v14, "GPSDestBearingRef"

    .line 914
    .line 915
    move-object/from16 v19, v13

    .line 916
    .line 917
    const/16 v13, 0x17

    .line 918
    .line 919
    invoke-direct {v0, v14, v13, v15}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 920
    .line 921
    .line 922
    new-instance v13, Landroidx/camera/core/impl/utils/ExifTag;

    .line 923
    .line 924
    const-string v14, "GPSDestDistanceRef"

    .line 925
    .line 926
    move-object/from16 v24, v10

    .line 927
    .line 928
    const/16 v10, 0x19

    .line 929
    .line 930
    invoke-direct {v13, v14, v10, v15}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 931
    .line 932
    .line 933
    const/16 v10, 0xd

    .line 934
    .line 935
    new-array v10, v10, [Landroidx/camera/core/impl/utils/ExifTag;

    .line 936
    .line 937
    const/4 v14, 0x0

    .line 938
    aput-object v3, v10, v14

    .line 939
    .line 940
    const/4 v3, 0x1

    .line 941
    aput-object v4, v10, v3

    .line 942
    .line 943
    aput-object v5, v10, v15

    .line 944
    .line 945
    const/4 v3, 0x3

    .line 946
    aput-object v6, v10, v3

    .line 947
    .line 948
    const/4 v3, 0x4

    .line 949
    aput-object v7, v10, v3

    .line 950
    .line 951
    const/4 v4, 0x5

    .line 952
    aput-object v9, v10, v4

    .line 953
    .line 954
    const/4 v4, 0x6

    .line 955
    aput-object v11, v10, v4

    .line 956
    .line 957
    const/4 v4, 0x7

    .line 958
    aput-object v12, v10, v4

    .line 959
    .line 960
    const/16 v4, 0x8

    .line 961
    .line 962
    aput-object v8, v10, v4

    .line 963
    .line 964
    const/16 v4, 0x9

    .line 965
    .line 966
    aput-object v2, v10, v4

    .line 967
    .line 968
    const/16 v2, 0xa

    .line 969
    .line 970
    aput-object v1, v10, v2

    .line 971
    .line 972
    const/16 v1, 0xb

    .line 973
    .line 974
    aput-object v0, v10, v1

    .line 975
    .line 976
    const/16 v0, 0xc

    .line 977
    .line 978
    aput-object v13, v10, v0

    .line 979
    .line 980
    sput-object v10, Landroidx/camera/core/impl/utils/ExifData;->IFD_GPS_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    .line 981
    .line 982
    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    .line 983
    .line 984
    move-object/from16 v1, v16

    .line 985
    .line 986
    const/16 v2, 0x14a

    .line 987
    .line 988
    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 989
    .line 990
    .line 991
    new-instance v1, Landroidx/camera/core/impl/utils/ExifTag;

    .line 992
    .line 993
    move-object/from16 v2, v17

    .line 994
    .line 995
    const v4, 0x8769

    .line 996
    .line 997
    .line 998
    invoke-direct {v1, v2, v4, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 999
    .line 1000
    .line 1001
    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    .line 1002
    .line 1003
    move-object/from16 v4, v23

    .line 1004
    .line 1005
    const v5, 0x8825

    .line 1006
    .line 1007
    .line 1008
    invoke-direct {v2, v4, v5, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1009
    .line 1010
    .line 1011
    new-instance v4, Landroidx/camera/core/impl/utils/ExifTag;

    .line 1012
    .line 1013
    move-object/from16 v5, v37

    .line 1014
    .line 1015
    const v6, 0xa005

    .line 1016
    .line 1017
    .line 1018
    invoke-direct {v4, v5, v6, v3}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1019
    .line 1020
    .line 1021
    new-array v5, v3, [Landroidx/camera/core/impl/utils/ExifTag;

    .line 1022
    .line 1023
    const/4 v3, 0x0

    .line 1024
    aput-object v0, v5, v3

    .line 1025
    .line 1026
    const/4 v0, 0x1

    .line 1027
    aput-object v1, v5, v0

    .line 1028
    .line 1029
    const/4 v1, 0x2

    .line 1030
    aput-object v2, v5, v1

    .line 1031
    .line 1032
    const/4 v2, 0x3

    .line 1033
    aput-object v4, v5, v2

    .line 1034
    .line 1035
    sput-object v5, Landroidx/camera/core/impl/utils/ExifData;->EXIF_POINTER_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    .line 1036
    .line 1037
    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    .line 1038
    .line 1039
    const-string v4, "InteroperabilityIndex"

    .line 1040
    .line 1041
    invoke-direct {v2, v4, v0, v1}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1042
    .line 1043
    .line 1044
    new-array v4, v0, [Landroidx/camera/core/impl/utils/ExifTag;

    .line 1045
    .line 1046
    aput-object v2, v4, v3

    .line 1047
    .line 1048
    sput-object v4, Landroidx/camera/core/impl/utils/ExifData;->IFD_INTEROPERABILITY_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    .line 1049
    .line 1050
    const/4 v2, 0x4

    .line 1051
    new-array v2, v2, [[Landroidx/camera/core/impl/utils/ExifTag;

    .line 1052
    .line 1053
    aput-object v22, v2, v3

    .line 1054
    .line 1055
    aput-object v24, v2, v0

    .line 1056
    .line 1057
    aput-object v10, v2, v1

    .line 1058
    .line 1059
    const/4 v0, 0x3

    .line 1060
    aput-object v4, v2, v0

    .line 1061
    .line 1062
    sput-object v2, Landroidx/camera/core/impl/utils/ExifData;->EXIF_TAGS:[[Landroidx/camera/core/impl/utils/ExifTag;

    .line 1063
    .line 1064
    new-instance v0, Ljava/util/HashSet;

    .line 1065
    .line 1066
    move-object/from16 v3, v19

    .line 1067
    .line 1068
    move-object/from16 v2, v20

    .line 1069
    .line 1070
    move-object/from16 v1, v21

    .line 1071
    .line 1072
    filled-new-array {v2, v1, v3}, [Ljava/lang/String;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v1

    .line 1076
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v1

    .line 1080
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1081
    .line 1082
    .line 1083
    sput-object v0, Landroidx/camera/core/impl/utils/ExifData;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 1084
    .line 1085
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/utils/ExifAttribute;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sget-object v1, Landroidx/camera/core/impl/utils/ExifData;->EXIF_TAGS:[[Landroidx/camera/core/impl/utils/ExifTag;

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    const-string v1, "Malformed attributes list. Number of IFDs mismatch."

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/camera/core/impl/utils/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    iput-object p2, p0, Landroidx/camera/core/impl/utils/ExifData;->mAttributes:Ljava/util/List;

    .line 24
    .line 25
    return-void
.end method

.method public static builderForDevice()Landroidx/camera/core/impl/utils/ExifData$Builder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 2
    .line 3
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;-><init>(Ljava/nio/ByteOrder;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "Orientation"

    .line 14
    .line 15
    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "XResolution"

    .line 20
    .line 21
    const-string v3, "72/1"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v3}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "YResolution"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v3}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v2, 0x2

    .line 34
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "ResolutionUnit"

    .line 39
    .line 40
    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v2, "YCbCrPositioning"

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v2, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "Make"

    .line 55
    .line 56
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "Model"

    .line 63
    .line 64
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method public static create(Landroidx/camera/core/ImageProxy;I)Landroidx/camera/core/impl/utils/ExifData;
    .locals 2
    .param p0    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/ExifData;->builderForDevice()Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1, v0}, Landroidx/camera/core/ImageInfo;->populateExifData(Landroidx/camera/core/impl/utils/ExifData$Builder;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setOrientationDegrees(I)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 19
    .line 20
    .line 21
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setImageWidth(I)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-virtual {p1, p0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setImageHeight(I)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->build()Landroidx/camera/core/impl/utils/ExifData;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "ISOSpeedRatings"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p1, "PhotographicSensitivity"

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    sget-object v1, Landroidx/camera/core/impl/utils/ExifData;->EXIF_TAGS:[[Landroidx/camera/core/impl/utils/ExifTag;

    .line 13
    .line 14
    array-length v1, v1

    .line 15
    if-ge v0, v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/camera/core/impl/utils/ExifData;->mAttributes:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroidx/camera/core/impl/utils/ExifAttribute;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 p1, 0x0

    .line 38
    return-object p1
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x3

    .line 5
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/utils/ExifData;->getExifAttribute(Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifAttribute;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    const/4 v5, 0x0

    .line 10
    if-eqz v4, :cond_5

    .line 11
    .line 12
    sget-object v6, Landroidx/camera/core/impl/utils/ExifData;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    if-nez v6, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/camera/core/impl/utils/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 21
    .line 22
    invoke-virtual {v4, p1}, Landroidx/camera/core/impl/utils/ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    const-string v6, "GPSTimeStamp"

    .line 28
    .line 29
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    iget p1, v4, Landroidx/camera/core/impl/utils/ExifAttribute;->format:I

    .line 36
    .line 37
    const/4 v6, 0x5

    .line 38
    const-string v7, "ExifData"

    .line 39
    .line 40
    if-eq p1, v6, :cond_1

    .line 41
    .line 42
    const/16 v6, 0xa

    .line 43
    .line 44
    if-eq p1, v6, :cond_1

    .line 45
    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v0, "GPS Timestamp format is not rational. format="

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget v0, v4, Landroidx/camera/core/impl/utils/ExifAttribute;->format:I

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v7, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v5

    .line 66
    :cond_1
    iget-object p1, p0, Landroidx/camera/core/impl/utils/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 67
    .line 68
    invoke-virtual {v4, p1}, Landroidx/camera/core/impl/utils/ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, [Landroidx/camera/core/impl/utils/LongRational;

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    array-length v4, p1

    .line 77
    if-eq v4, v3, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 81
    .line 82
    aget-object v5, p1, v2

    .line 83
    .line 84
    invoke-virtual {v5}, Landroidx/camera/core/impl/utils/LongRational;->getNumerator()J

    .line 85
    .line 86
    .line 87
    move-result-wide v5

    .line 88
    long-to-float v5, v5

    .line 89
    aget-object v6, p1, v2

    .line 90
    .line 91
    invoke-virtual {v6}, Landroidx/camera/core/impl/utils/LongRational;->getDenominator()J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    long-to-float v6, v6

    .line 96
    div-float/2addr v5, v6

    .line 97
    float-to-int v5, v5

    .line 98
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    aget-object v6, p1, v1

    .line 103
    .line 104
    invoke-virtual {v6}, Landroidx/camera/core/impl/utils/LongRational;->getNumerator()J

    .line 105
    .line 106
    .line 107
    move-result-wide v6

    .line 108
    long-to-float v6, v6

    .line 109
    aget-object v7, p1, v1

    .line 110
    .line 111
    invoke-virtual {v7}, Landroidx/camera/core/impl/utils/LongRational;->getDenominator()J

    .line 112
    .line 113
    .line 114
    move-result-wide v7

    .line 115
    long-to-float v7, v7

    .line 116
    div-float/2addr v6, v7

    .line 117
    float-to-int v6, v6

    .line 118
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    aget-object v7, p1, v0

    .line 123
    .line 124
    invoke-virtual {v7}, Landroidx/camera/core/impl/utils/LongRational;->getNumerator()J

    .line 125
    .line 126
    .line 127
    move-result-wide v7

    .line 128
    long-to-float v7, v7

    .line 129
    aget-object p1, p1, v0

    .line 130
    .line 131
    invoke-virtual {p1}, Landroidx/camera/core/impl/utils/LongRational;->getDenominator()J

    .line 132
    .line 133
    .line 134
    move-result-wide v8

    .line 135
    long-to-float p1, v8

    .line 136
    div-float/2addr v7, p1

    .line 137
    float-to-int p1, v7

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    new-array v3, v3, [Ljava/lang/Object;

    .line 143
    .line 144
    aput-object v5, v3, v2

    .line 145
    .line 146
    aput-object v6, v3, v1

    .line 147
    .line 148
    aput-object p1, v3, v0

    .line 149
    .line 150
    const-string p1, "%02d:%02d:%02d"

    .line 151
    .line 152
    invoke-static {v4, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    return-object p1

    .line 157
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v1, "Invalid GPS Timestamp array. array="

    .line 160
    .line 161
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {v7, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-object v5

    .line 179
    :cond_4
    :try_start_0
    iget-object p1, p0, Landroidx/camera/core/impl/utils/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 180
    .line 181
    invoke-virtual {v4, p1}, Landroidx/camera/core/impl/utils/ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    .line 182
    .line 183
    .line 184
    move-result-wide v0

    .line 185
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-object p1

    .line 190
    :catch_0
    :cond_5
    return-object v5
.end method

.method public getAttributes(I)Ljava/util/Map;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/utils/ExifAttribute;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/core/impl/utils/ExifData;->EXIF_TAGS:[[Landroidx/camera/core/impl/utils/ExifTag;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const-string v1, "Invalid IFD index: "

    .line 5
    .line 6
    const-string v2, ". Index should be between [0, EXIF_TAGS.length] "

    .line 7
    .line 8
    invoke-static {p1, v1, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p1, v2, v0, v1}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ExifData;->mAttributes:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/util/Map;

    .line 23
    .line 24
    return-object p1
.end method

.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    return-object v0
.end method
