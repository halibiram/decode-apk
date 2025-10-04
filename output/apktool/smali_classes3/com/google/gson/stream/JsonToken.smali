.class public final enum Lcom/google/gson/stream/JsonToken;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/gson/stream/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gson/stream/JsonToken;

.field public static final enum BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

.field public static final enum BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

.field public static final enum BOOLEAN:Lcom/google/gson/stream/JsonToken;

.field public static final enum END_ARRAY:Lcom/google/gson/stream/JsonToken;

.field public static final enum END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

.field public static final enum END_OBJECT:Lcom/google/gson/stream/JsonToken;

.field public static final enum NAME:Lcom/google/gson/stream/JsonToken;

.field public static final enum NULL:Lcom/google/gson/stream/JsonToken;

.field public static final enum NUMBER:Lcom/google/gson/stream/JsonToken;

.field public static final enum STRING:Lcom/google/gson/stream/JsonToken;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/gson/stream/JsonToken;

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
    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v1, v3}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    .line 23
    .line 24
    new-instance v1, Lcom/google/gson/stream/JsonToken;

    .line 25
    .line 26
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v5, v2, [J

    .line 29
    .line 30
    fill-array-data v5, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x1

    .line 41
    invoke-direct {v1, v4, v5}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    .line 45
    .line 46
    new-instance v4, Lcom/google/gson/stream/JsonToken;

    .line 47
    .line 48
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v7, v2, [J

    .line 51
    .line 52
    fill-array-data v7, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    const/4 v7, 0x2

    .line 63
    invoke-direct {v4, v6, v7}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v4, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 67
    .line 68
    new-instance v6, Lcom/google/gson/stream/JsonToken;

    .line 69
    .line 70
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v9, v2, [J

    .line 73
    .line 74
    fill-array-data v9, :array_3

    .line 75
    .line 76
    .line 77
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-direct {v6, v8, v2}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v6, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 88
    .line 89
    new-instance v8, Lcom/google/gson/stream/JsonToken;

    .line 90
    .line 91
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v10, v7, [J

    .line 94
    .line 95
    fill-array-data v10, :array_4

    .line 96
    .line 97
    .line 98
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    const/4 v10, 0x4

    .line 106
    invoke-direct {v8, v9, v10}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v8, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    .line 110
    .line 111
    new-instance v9, Lcom/google/gson/stream/JsonToken;

    .line 112
    .line 113
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v12, v7, [J

    .line 116
    .line 117
    fill-array-data v12, :array_5

    .line 118
    .line 119
    .line 120
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    const/4 v12, 0x5

    .line 128
    invoke-direct {v9, v11, v12}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    sput-object v9, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    .line 132
    .line 133
    new-instance v11, Lcom/google/gson/stream/JsonToken;

    .line 134
    .line 135
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v14, v7, [J

    .line 138
    .line 139
    fill-array-data v14, :array_6

    .line 140
    .line 141
    .line 142
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    const/4 v14, 0x6

    .line 150
    invoke-direct {v11, v13, v14}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    sput-object v11, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    .line 154
    .line 155
    new-instance v13, Lcom/google/gson/stream/JsonToken;

    .line 156
    .line 157
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v14, v7, [J

    .line 160
    .line 161
    fill-array-data v14, :array_7

    .line 162
    .line 163
    .line 164
    invoke-direct {v15, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    const/4 v15, 0x7

    .line 172
    invoke-direct {v13, v14, v15}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    sput-object v13, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    .line 176
    .line 177
    new-instance v14, Lcom/google/gson/stream/JsonToken;

    .line 178
    .line 179
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v12, v7, [J

    .line 182
    .line 183
    fill-array-data v12, :array_8

    .line 184
    .line 185
    .line 186
    invoke-direct {v15, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    const/16 v15, 0x8

    .line 194
    .line 195
    invoke-direct {v14, v12, v15}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    sput-object v14, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 199
    .line 200
    new-instance v12, Lcom/google/gson/stream/JsonToken;

    .line 201
    .line 202
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    new-array v10, v2, [J

    .line 205
    .line 206
    fill-array-data v10, :array_9

    .line 207
    .line 208
    .line 209
    invoke-direct {v15, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    const/16 v15, 0x9

    .line 217
    .line 218
    invoke-direct {v12, v10, v15}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 219
    .line 220
    .line 221
    sput-object v12, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    .line 222
    .line 223
    const/16 v10, 0xa

    .line 224
    .line 225
    new-array v10, v10, [Lcom/google/gson/stream/JsonToken;

    .line 226
    .line 227
    aput-object v0, v10, v3

    .line 228
    .line 229
    aput-object v1, v10, v5

    .line 230
    .line 231
    aput-object v4, v10, v7

    .line 232
    .line 233
    aput-object v6, v10, v2

    .line 234
    .line 235
    const/4 v0, 0x4

    .line 236
    aput-object v8, v10, v0

    .line 237
    .line 238
    const/4 v0, 0x5

    .line 239
    aput-object v9, v10, v0

    .line 240
    .line 241
    const/4 v0, 0x6

    .line 242
    aput-object v11, v10, v0

    .line 243
    .line 244
    const/4 v0, 0x7

    .line 245
    aput-object v13, v10, v0

    .line 246
    .line 247
    const/16 v0, 0x8

    .line 248
    .line 249
    aput-object v14, v10, v0

    .line 250
    .line 251
    aput-object v12, v10, v15

    .line 252
    .line 253
    sput-object v10, Lcom/google/gson/stream/JsonToken;->$VALUES:[Lcom/google/gson/stream/JsonToken;

    .line 254
    .line 255
    return-void

    .line 256
    nop

    .line 257
    :array_0
    .array-data 8
        0x6249663812a4a6a8L
        0x1e392fc18891bb7aL
        -0x6fa2f25478d937dcL    # -7.485490495130137E-230
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_1
    .array-data 8
        0x593f00cc9bcbb0c4L    # 8.005780820910587E121
        -0x62696d9afeb7faaL    # -9.008932426333067E278
        -0x273b80ee5991e731L    # -4.134900862283774E119
    .end array-data

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
    :array_2
    .array-data 8
        0x6d8125669b87d405L    # 3.026301064405614E219
        0x4e7cda82aa15015fL    # 1.2446245415574346E70
        0x63253bbf83a69c3dL    # 4.006700994128885E169
    .end array-data

    .line 290
    .line 291
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
    :array_3
    .array-data 8
        -0x33c28eaf862c0688L    # -1.8481441032307938E59
        -0x6fd749988aaa193L    # -8.025681899572667E274
        -0x44da6072ca73bda7L    # -8.94316594125415E-24
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
    :array_4
    .array-data 8
        0x68115d794a4f1566L    # 1.980684588339027E193
        -0x514ad1b21e546dbbL    # -1.090297783760921E-83
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
    :array_5
    .array-data 8
        -0x377f9b0e2044be21L    # -1.7851828965343386E41
        -0x4431ffa5b9c733c3L    # -1.270607759283183E-20
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
    :array_6
    .array-data 8
        -0x25b48377fcfc03c9L    # -9.30308202561875E126
        -0xd2b0ac9bf3fb6b7L
    .end array-data

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
    :array_7
    .array-data 8
        -0x25bee9397e213ed3L    # -5.783942805906478E126
        0x3d7207d8dacd020aL    # 1.0249239431904128E-12
    .end array-data

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
    :array_8
    .array-data 8
        -0x10437f8c01e90563L    # -1.7284966187948402E230
        -0x4fb87242c592d355L    # -4.068269049943139E-76
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
    :array_9
    .array-data 8
        0x61683a31ab05e9e3L    # 1.7030722787088112E161
        0x53205c58f131f6e5L    # 2.666191999063582E92
        -0x24136c748ba8c9dfL    # -6.490748546426932E134
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/stream/JsonToken;
    .locals 1

    .line 1
    const-class v0, Lcom/google/gson/stream/JsonToken;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/gson/stream/JsonToken;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/gson/stream/JsonToken;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/gson/stream/JsonToken;->$VALUES:[Lcom/google/gson/stream/JsonToken;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/gson/stream/JsonToken;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/gson/stream/JsonToken;

    .line 8
    .line 9
    return-object v0
.end method
