.class abstract enum Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "SshCipher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

.field public static final enum AES128_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

.field public static final enum AES192_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

.field public static final enum AES256_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

.field public static final enum AES256_CTR:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

.field public static final enum DESEDE_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

.field public static final enum DES_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;


# instance fields
.field private final blockSize:I

.field private final keyLength:I

.field private final sshCipherNames:[Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 3
    .line 4
    sget-object v1, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->DESEDE_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->DES_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->AES128_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->AES192_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->AES256_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->AES256_CTR:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$1;

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
    new-array v4, v2, [J

    .line 21
    .line 22
    fill-array-data v4, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v4, 0x0

    .line 33
    new-array v5, v4, [Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v0, v1, v3, v5}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$1;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->DESEDE_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 39
    .line 40
    new-instance v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$2;

    .line 41
    .line 42
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    new-array v5, v3, [J

    .line 46
    .line 47
    fill-array-data v5, :array_2

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v3, v3, [J

    .line 60
    .line 61
    fill-array-data v3, :array_3

    .line 62
    .line 63
    .line 64
    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    new-array v4, v4, [Ljava/lang/String;

    .line 72
    .line 73
    invoke-direct {v0, v1, v3, v4}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$2;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->DES_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 77
    .line 78
    new-instance v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$3;

    .line 79
    .line 80
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v3, v2, [J

    .line 83
    .line 84
    fill-array-data v3, :array_4

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v4, v2, [J

    .line 97
    .line 98
    fill-array-data v4, :array_5

    .line 99
    .line 100
    .line 101
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v5, v2, [J

    .line 111
    .line 112
    fill-array-data v5, :array_6

    .line 113
    .line 114
    .line 115
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    filled-new-array {v4}, [Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-direct {v0, v1, v3, v4}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$3;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    sput-object v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->AES128_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 130
    .line 131
    new-instance v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$4;

    .line 132
    .line 133
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    new-array v3, v2, [J

    .line 136
    .line 137
    fill-array-data v3, :array_7

    .line 138
    .line 139
    .line 140
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    new-array v4, v2, [J

    .line 150
    .line 151
    fill-array-data v4, :array_8

    .line 152
    .line 153
    .line 154
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v5, v2, [J

    .line 164
    .line 165
    fill-array-data v5, :array_9

    .line 166
    .line 167
    .line 168
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    filled-new-array {v4}, [Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-direct {v0, v1, v3, v4}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$4;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    sput-object v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->AES192_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 183
    .line 184
    new-instance v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$5;

    .line 185
    .line 186
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 187
    .line 188
    new-array v3, v2, [J

    .line 189
    .line 190
    fill-array-data v3, :array_a

    .line 191
    .line 192
    .line 193
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 201
    .line 202
    new-array v4, v2, [J

    .line 203
    .line 204
    fill-array-data v4, :array_b

    .line 205
    .line 206
    .line 207
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 215
    .line 216
    new-array v5, v2, [J

    .line 217
    .line 218
    fill-array-data v5, :array_c

    .line 219
    .line 220
    .line 221
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    filled-new-array {v4}, [Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-direct {v0, v1, v3, v4}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$5;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    sput-object v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->AES256_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 236
    .line 237
    new-instance v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$6;

    .line 238
    .line 239
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 240
    .line 241
    new-array v3, v2, [J

    .line 242
    .line 243
    fill-array-data v3, :array_d

    .line 244
    .line 245
    .line 246
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 254
    .line 255
    new-array v4, v2, [J

    .line 256
    .line 257
    fill-array-data v4, :array_e

    .line 258
    .line 259
    .line 260
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 268
    .line 269
    new-array v2, v2, [J

    .line 270
    .line 271
    fill-array-data v2, :array_f

    .line 272
    .line 273
    .line 274
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    filled-new-array {v2}, [Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-direct {v0, v1, v3, v2}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$6;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    sput-object v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->AES256_CTR:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 289
    .line 290
    invoke-static {}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->$values()[Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    sput-object v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->$VALUES:[Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 295
    .line 296
    return-void

    .line 297
    :array_0
    .array-data 8
        -0x17df145a8c035994L    # -3.859937309604311E193
        -0x2dc792ec408e5c04L    # -1.2147658440473002E88
        0x3e3e5ed5b2933387L    # 7.071171017822356E-9
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
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
    :array_1
    .array-data 8
        -0x2e5fe1b4b11e1528L    # -1.5656295564250504E85
        -0x15ee204fad02a97dL    # -8.756158332848185E202
        0x50da4b544c504d58L    # 3.1177387270810325E81
    .end array-data

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
    :array_2
    .array-data 8
        0x2069d76bba8a5ee9L
        0x253ed97056668240L
    .end array-data

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
    :array_3
    .array-data 8
        0x545f0e58ddfd4df1L    # 2.6534122525505373E98
        0x2fe0c8e0ac3cf4c5L    # 4.529853449374333E-78
    .end array-data

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
    :array_4
    .array-data 8
        0x33aa11a28e9f7055L    # 8.111354002708644E-60
        0x6f2f1dfed7af8935L    # 3.6857581447708256E227
        -0x54c814c62bb6356eL
    .end array-data

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
    :array_5
    .array-data 8
        0x3a060fd534316c7aL    # 3.480745716374395E-29
        -0x11a284595ca51f8fL    # -4.2629343164114923E223
        -0xd8d9f6fa43d3232L
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
    :array_6
    .array-data 8
        0xc4cdcc2646ba58aL
        0x649ae5be92be258eL    # 4.257634833690831E176
        -0x2dbf080ba86e893bL    # -1.687773040197846E88
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
        0x1439bbfe6e528c98L
        0x1156573e5ecca714L
        -0x7732dc9b0320a38cL
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
    .line 414
    .line 415
    .line 416
    .line 417
    :array_8
    .array-data 8
        0x5f5e9e34fb279c08L    # 2.5056165075026902E151
        0x1fa16b8432ac942aL    # 2.5375818477130003E-156
        -0x7860d02cea8be894L    # -5.764942067407524E-272
    .end array-data

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
    :array_9
    .array-data 8
        0x6323650341ac9575L    # 3.659720985796754E169
        -0x7544523168c4e983L
        -0x71fe8411fca27d80L    # -3.277606234655285E-241
    .end array-data

    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
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
    :array_a
    .array-data 8
        0x74555970c88f9648L    # 2.4456910481098988E252
        0x1bc36107adb9f279L    # 6.121310584507907E-175
        0x733afce9cf7d131aL
    .end array-data

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
    .line 462
    .line 463
    .line 464
    .line 465
    :array_b
    .array-data 8
        -0x6ac8a63ac20ea54eL
        0x718ddfdec363e100L    # 9.726735814500924E238
        -0x2e124f5b7e702cb6L    # -4.614228732420755E86
    .end array-data

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
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    :array_c
    .array-data 8
        -0x609bd9c6533cd5c3L    # -1.834478464077601E-157
        0x280c7f9c416540a2L    # 9.040934958020653E-116
        -0x55f94c58d4c38f1fL
    .end array-data

    .line 482
    .line 483
    .line 484
    .line 485
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
    :array_d
    .array-data 8
        -0x5c76725246a03bc8L
        0x792e424dd503fa9fL    # 5.238182472209043E275
        0x35eee49049a96857L    # 6.605540550536518E-49
    .end array-data

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
    :array_e
    .array-data 8
        0x75b1bcf18c7cabb8L    # 8.522802529903047E258
        -0x692d897418ab92d7L    # -9.648212049223645E-199
        0x102e7b3db5e5abbbL    # 9.816764947607433E-231
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
    :array_f
    .array-data 8
        0x5e182f9176f96157L    # 1.887550695324473E145
        0x77a0e82af142bf6bL    # 1.744497183923317E268
        0x4790c152dc44bc2dL    # 5.5678604588279E36
    .end array-data
.end method

.method private varargs constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput p3, p0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->keyLength:I

    .line 4
    iput p4, p0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->blockSize:I

    const/4 p1, 0x0

    if-nez p6, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 5
    :cond_0
    array-length p2, p6

    :goto_0
    const/4 p3, 0x1

    add-int/2addr p2, p3

    new-array p2, p2, [Ljava/lang/String;

    .line 6
    aput-object p5, p2, p1

    if-eqz p6, :cond_1

    .line 7
    array-length p4, p6

    invoke-static {p6, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :cond_1
    iput-object p2, p0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->sshCipherNames:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;
    .locals 9

    .line 1
    invoke-static {}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->values()[Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v1, :cond_2

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    iget-object v5, v4, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->sshCipherNames:[Ljava/lang/String;

    .line 13
    .line 14
    array-length v6, v5

    .line 15
    const/4 v7, 0x0

    .line 16
    :goto_1
    if-ge v7, v6, :cond_1

    .line 17
    .line 18
    aget-object v8, v5, v7

    .line 19
    .line 20
    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    if-eqz v8, :cond_0

    .line 25
    .line 26
    return-object v4

    .line 27
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v3, 0x3

    .line 43
    new-array v3, v3, [J

    .line 44
    .line 45
    fill-array-data v3, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :array_0
    .array-data 8
        0x7d3a9e9d7a040322L    # 1.70011044956096E295
        0x32e2b6e94d5b41cL
        0x2019f6f88ac19fabL    # 4.841345074056631E-154
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;
    .locals 1

    .line 1
    const-class v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;
    .locals 1

    .line 1
    sget-object v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->$VALUES:[Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract createBlockCipher([B[BZ)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
.end method

.method public getBlockSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->blockSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getKeyLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->keyLength:I

    .line 2
    .line 3
    return v0
.end method
