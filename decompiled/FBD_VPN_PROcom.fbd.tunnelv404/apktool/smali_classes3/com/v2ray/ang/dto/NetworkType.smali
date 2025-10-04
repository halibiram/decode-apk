.class public final enum Lcom/v2ray/ang/dto/NetworkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/dto/NetworkType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/v2ray/ang/dto/NetworkType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0086\u0081\u0002\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/v2ray/ang/dto/NetworkType;",
        "",
        "type",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "TCP",
        "KCP",
        "WS",
        "HTTP_UPGRADE",
        "XHTTP",
        "HTTP",
        "H2",
        "GRPC",
        "Companion",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/v2ray/ang/dto/NetworkType;

.field public static final Companion:Lcom/v2ray/ang/dto/NetworkType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum GRPC:Lcom/v2ray/ang/dto/NetworkType;

.field public static final enum H2:Lcom/v2ray/ang/dto/NetworkType;

.field public static final enum HTTP:Lcom/v2ray/ang/dto/NetworkType;

.field public static final enum HTTP_UPGRADE:Lcom/v2ray/ang/dto/NetworkType;

.field public static final enum KCP:Lcom/v2ray/ang/dto/NetworkType;

.field public static final enum TCP:Lcom/v2ray/ang/dto/NetworkType;

.field public static final enum WS:Lcom/v2ray/ang/dto/NetworkType;

.field public static final enum XHTTP:Lcom/v2ray/ang/dto/NetworkType;


# instance fields
.field private final type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/v2ray/ang/dto/NetworkType;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/v2ray/ang/dto/NetworkType;

    sget-object v1, Lcom/v2ray/ang/dto/NetworkType;->TCP:Lcom/v2ray/ang/dto/NetworkType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/NetworkType;->KCP:Lcom/v2ray/ang/dto/NetworkType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/NetworkType;->WS:Lcom/v2ray/ang/dto/NetworkType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/NetworkType;->HTTP_UPGRADE:Lcom/v2ray/ang/dto/NetworkType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/NetworkType;->XHTTP:Lcom/v2ray/ang/dto/NetworkType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/NetworkType;->HTTP:Lcom/v2ray/ang/dto/NetworkType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/NetworkType;->H2:Lcom/v2ray/ang/dto/NetworkType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/NetworkType;->GRPC:Lcom/v2ray/ang/dto/NetworkType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/v2ray/ang/dto/NetworkType;

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
    invoke-direct {v0, v1, v4, v3}, Lcom/v2ray/ang/dto/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/v2ray/ang/dto/NetworkType;->TCP:Lcom/v2ray/ang/dto/NetworkType;

    .line 37
    .line 38
    new-instance v0, Lcom/v2ray/ang/dto/NetworkType;

    .line 39
    .line 40
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array v3, v2, [J

    .line 43
    .line 44
    fill-array-data v3, :array_2

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v4, v2, [J

    .line 57
    .line 58
    fill-array-data v4, :array_3

    .line 59
    .line 60
    .line 61
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const/4 v4, 0x1

    .line 69
    invoke-direct {v0, v1, v4, v3}, Lcom/v2ray/ang/dto/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/v2ray/ang/dto/NetworkType;->KCP:Lcom/v2ray/ang/dto/NetworkType;

    .line 73
    .line 74
    new-instance v0, Lcom/v2ray/ang/dto/NetworkType;

    .line 75
    .line 76
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v3, v2, [J

    .line 79
    .line 80
    fill-array-data v3, :array_4

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array v4, v2, [J

    .line 93
    .line 94
    fill-array-data v4, :array_5

    .line 95
    .line 96
    .line 97
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-direct {v0, v1, v2, v3}, Lcom/v2ray/ang/dto/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sput-object v0, Lcom/v2ray/ang/dto/NetworkType;->WS:Lcom/v2ray/ang/dto/NetworkType;

    .line 108
    .line 109
    new-instance v0, Lcom/v2ray/ang/dto/NetworkType;

    .line 110
    .line 111
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    const/4 v3, 0x3

    .line 114
    new-array v4, v3, [J

    .line 115
    .line 116
    fill-array-data v4, :array_6

    .line 117
    .line 118
    .line 119
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v5, v3, [J

    .line 129
    .line 130
    fill-array-data v5, :array_7

    .line 131
    .line 132
    .line 133
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-direct {v0, v1, v3, v4}, Lcom/v2ray/ang/dto/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    sput-object v0, Lcom/v2ray/ang/dto/NetworkType;->HTTP_UPGRADE:Lcom/v2ray/ang/dto/NetworkType;

    .line 144
    .line 145
    new-instance v0, Lcom/v2ray/ang/dto/NetworkType;

    .line 146
    .line 147
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    new-array v3, v2, [J

    .line 150
    .line 151
    fill-array-data v3, :array_8

    .line 152
    .line 153
    .line 154
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v4, v2, [J

    .line 164
    .line 165
    fill-array-data v4, :array_9

    .line 166
    .line 167
    .line 168
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    const/4 v4, 0x4

    .line 176
    invoke-direct {v0, v1, v4, v3}, Lcom/v2ray/ang/dto/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    sput-object v0, Lcom/v2ray/ang/dto/NetworkType;->XHTTP:Lcom/v2ray/ang/dto/NetworkType;

    .line 180
    .line 181
    new-instance v0, Lcom/v2ray/ang/dto/NetworkType;

    .line 182
    .line 183
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 184
    .line 185
    new-array v3, v2, [J

    .line 186
    .line 187
    fill-array-data v3, :array_a

    .line 188
    .line 189
    .line 190
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 198
    .line 199
    new-array v4, v2, [J

    .line 200
    .line 201
    fill-array-data v4, :array_b

    .line 202
    .line 203
    .line 204
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    const/4 v4, 0x5

    .line 212
    invoke-direct {v0, v1, v4, v3}, Lcom/v2ray/ang/dto/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    sput-object v0, Lcom/v2ray/ang/dto/NetworkType;->HTTP:Lcom/v2ray/ang/dto/NetworkType;

    .line 216
    .line 217
    new-instance v0, Lcom/v2ray/ang/dto/NetworkType;

    .line 218
    .line 219
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 220
    .line 221
    new-array v3, v2, [J

    .line 222
    .line 223
    fill-array-data v3, :array_c

    .line 224
    .line 225
    .line 226
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 234
    .line 235
    new-array v4, v2, [J

    .line 236
    .line 237
    fill-array-data v4, :array_d

    .line 238
    .line 239
    .line 240
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    const/4 v4, 0x6

    .line 248
    invoke-direct {v0, v1, v4, v3}, Lcom/v2ray/ang/dto/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    .line 250
    .line 251
    sput-object v0, Lcom/v2ray/ang/dto/NetworkType;->H2:Lcom/v2ray/ang/dto/NetworkType;

    .line 252
    .line 253
    new-instance v0, Lcom/v2ray/ang/dto/NetworkType;

    .line 254
    .line 255
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 256
    .line 257
    new-array v3, v2, [J

    .line 258
    .line 259
    fill-array-data v3, :array_e

    .line 260
    .line 261
    .line 262
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 270
    .line 271
    new-array v2, v2, [J

    .line 272
    .line 273
    fill-array-data v2, :array_f

    .line 274
    .line 275
    .line 276
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    const/4 v3, 0x7

    .line 284
    invoke-direct {v0, v1, v3, v2}, Lcom/v2ray/ang/dto/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 285
    .line 286
    .line 287
    sput-object v0, Lcom/v2ray/ang/dto/NetworkType;->GRPC:Lcom/v2ray/ang/dto/NetworkType;

    .line 288
    .line 289
    invoke-static {}, Lcom/v2ray/ang/dto/NetworkType;->$values()[Lcom/v2ray/ang/dto/NetworkType;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    sput-object v0, Lcom/v2ray/ang/dto/NetworkType;->$VALUES:[Lcom/v2ray/ang/dto/NetworkType;

    .line 294
    .line 295
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    sput-object v0, Lcom/v2ray/ang/dto/NetworkType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 300
    .line 301
    new-instance v0, Lcom/v2ray/ang/dto/NetworkType$Companion;

    .line 302
    .line 303
    const/4 v1, 0x0

    .line 304
    invoke-direct {v0, v1}, Lcom/v2ray/ang/dto/NetworkType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 305
    .line 306
    .line 307
    sput-object v0, Lcom/v2ray/ang/dto/NetworkType;->Companion:Lcom/v2ray/ang/dto/NetworkType$Companion;

    .line 308
    .line 309
    return-void

    .line 310
    nop

    .line 311
    :array_0
    .array-data 8
        -0xa5dd009fc7b5664L    # -4.369338186946202E258
        -0x5b0d529865f059deL
    .end array-data

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
    .line 322
    .line 323
    :array_1
    .array-data 8
        -0x50f944428fc37ac9L    # -3.7446808467537887E-82
        -0x5648b50a8c9b69c4L
    .end array-data

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
    :array_2
    .array-data 8
        0x2132d614faae0d1aL
        -0x64ea2c408494b5c8L    # -3.366506212725748E-178
    .end array-data

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
    :array_3
    .array-data 8
        0x13923e535e3159feL    # 2.116851023794951E-214
        0x19092e0b838f28d6L    # 4.521120525737435E-188
    .end array-data

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
    :array_4
    .array-data 8
        -0x7fa6e31234a188deL    # -5.587828749575443E-307
        -0x7c84dd9783b3d111L    # -6.797739952727474E-292
    .end array-data

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
    .line 370
    .line 371
    :array_5
    .array-data 8
        0x271f70c348802602L
        0x2d006985068ac89aL    # 6.294449635385076E-92
    .end array-data

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
    :array_6
    .array-data 8
        -0x298bc8a9c26ba659L    # -2.967406991244145E108
        0x52fa05afe3b9dfbaL    # 5.300818836627967E91
        -0x6c9fc4980d318401L
    .end array-data

    .line 384
    .line 385
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
    :array_7
    .array-data 8
        0x7883e4e22caf1c67L    # 3.363178122203178E272
        0x747b16bb571211fbL    # 1.2412694852778916E253
        -0x23ac2fced404f855L    # -5.760415029494436E136
    .end array-data

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
    .line 414
    .line 415
    :array_8
    .array-data 8
        0x22f60d558cacb3cbL    # 2.893421599739232E-140
        0x1eebbb0ef0d5e271L    # 9.862183805022624E-160
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
    :array_9
    .array-data 8
        0x3143a12f612183c9L    # 2.2219952811820637E-71
        -0xcc7e17b14cf2564L
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
    :array_a
    .array-data 8
        -0x5f421cd6d1b0eb4dL    # -5.706496470449245E-151
        -0x2393d55756bf719fL    # -1.637808146001757E137
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
    :array_b
    .array-data 8
        -0x34c4e9a5582e0c7L    # -4.912999811435249E292
        0x1a397998159ed322L
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
    :array_c
    .array-data 8
        -0x4d15071d8e8d8359L    # -2.0489312175028525E-63
        -0x672ddc2e944c2fb1L    # -4.071345526533891E-189
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
    :array_d
    .array-data 8
        -0x4113dc60ac952a7L    # -9.367286235902196E288
        -0xa82c88daa1e16b2L    # -8.773761155005777E257
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
    :array_e
    .array-data 8
        0x47119376f672803dL    # 2.2814996500435274E34
        0xcd64d1c8c395963L
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
    :array_f
    .array-data 8
        -0x7115fca224904d11L    # -7.989624733558307E-237
        0x2052faaedd0d637fL    # 5.662142776570015E-153
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/v2ray/ang/dto/NetworkType;->type:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/v2ray/ang/dto/NetworkType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/v2ray/ang/dto/NetworkType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/v2ray/ang/dto/NetworkType;
    .locals 1

    .line 1
    const-class v0, Lcom/v2ray/ang/dto/NetworkType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/v2ray/ang/dto/NetworkType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/v2ray/ang/dto/NetworkType;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/dto/NetworkType;->$VALUES:[Lcom/v2ray/ang/dto/NetworkType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/v2ray/ang/dto/NetworkType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/NetworkType;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
