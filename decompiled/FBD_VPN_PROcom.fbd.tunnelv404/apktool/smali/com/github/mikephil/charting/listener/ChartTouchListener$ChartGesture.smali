.class public final enum Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/listener/ChartTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChartGesture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

.field public static final enum DOUBLE_TAP:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

.field public static final enum DRAG:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

.field public static final enum FLING:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

.field public static final enum LONG_PRESS:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

.field public static final enum NONE:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

.field public static final enum PINCH_ZOOM:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

.field public static final enum ROTATE:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

.field public static final enum SINGLE_TAP:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

.field public static final enum X_ZOOM:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

.field public static final enum Y_ZOOM:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

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
    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v1, v3}, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->NONE:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 23
    .line 24
    new-instance v1, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

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
    invoke-direct {v1, v4, v5}, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->DRAG:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 45
    .line 46
    new-instance v4, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

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
    invoke-direct {v4, v6, v2}, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v4, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->X_ZOOM:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 66
    .line 67
    new-instance v6, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 68
    .line 69
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v8, v2, [J

    .line 72
    .line 73
    fill-array-data v8, :array_3

    .line 74
    .line 75
    .line 76
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    const/4 v8, 0x3

    .line 84
    invoke-direct {v6, v7, v8}, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v6, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->Y_ZOOM:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 88
    .line 89
    new-instance v7, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 90
    .line 91
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v10, v8, [J

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
    invoke-direct {v7, v9, v10}, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v7, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->PINCH_ZOOM:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 110
    .line 111
    new-instance v9, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 112
    .line 113
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v12, v2, [J

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
    invoke-direct {v9, v11, v12}, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;-><init>(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    sput-object v9, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->ROTATE:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 132
    .line 133
    new-instance v11, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 134
    .line 135
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v14, v8, [J

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
    invoke-direct {v11, v13, v14}, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;-><init>(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    sput-object v11, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->SINGLE_TAP:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 154
    .line 155
    new-instance v13, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 156
    .line 157
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v14, v8, [J

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
    invoke-direct {v13, v14, v15}, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;-><init>(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    sput-object v13, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->DOUBLE_TAP:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 176
    .line 177
    new-instance v14, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 178
    .line 179
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v12, v8, [J

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
    invoke-direct {v14, v12, v15}, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;-><init>(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    sput-object v14, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->LONG_PRESS:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 199
    .line 200
    new-instance v12, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

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
    invoke-direct {v12, v10, v15}, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;-><init>(Ljava/lang/String;I)V

    .line 219
    .line 220
    .line 221
    sput-object v12, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->FLING:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 222
    .line 223
    const/16 v10, 0xa

    .line 224
    .line 225
    new-array v10, v10, [Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 226
    .line 227
    aput-object v0, v10, v3

    .line 228
    .line 229
    aput-object v1, v10, v5

    .line 230
    .line 231
    aput-object v4, v10, v2

    .line 232
    .line 233
    aput-object v6, v10, v8

    .line 234
    .line 235
    const/4 v0, 0x4

    .line 236
    aput-object v7, v10, v0

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
    sput-object v10, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->$VALUES:[Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 254
    .line 255
    return-void

    .line 256
    nop

    .line 257
    :array_0
    .array-data 8
        0x7377468b83241430L    # 1.6274089516073898E248
        0x661d8c0a75fd64beL    # 7.846776331044962E183
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
    :array_1
    .array-data 8
        -0x5bc07ae6920fb0daL
        -0x4229e18f4493cc18L    # -8.04681172872242E-11
    .end array-data

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_2
    .array-data 8
        0x4c673d5c35f2bf0eL    # 1.1670231007645367E60
        -0x470c13ce1c49f49aL    # -2.398100108210803E-34
    .end array-data

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
    :array_3
    .array-data 8
        -0x71eb77f37895ed71L    # -7.697734229380402E-241
        -0x5465a861e205ee80L    # -1.2043546780876462E-98
    .end array-data

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
    :array_4
    .array-data 8
        -0x3517cf879cf481f4L    # -7.240244340816281E52
        0x30ebdaa68115952fL    # 4.926519905901989E-73
        -0x32e7857ed246fbeeL    # -2.5174711631421225E63
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
    :array_5
    .array-data 8
        0x2238dc90a176c1e8L    # 7.963992451315985E-144
        0x5246ddebe4920a81L    # 2.2744462221989827E88
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
    :array_6
    .array-data 8
        0x5be3e0e53e24900L
        -0x55d1c5e4134bd843L    # -1.647427885131835E-105
        -0x785f5ebf0589b92eL    # -6.148136524517537E-272
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
    :array_7
    .array-data 8
        -0x23f2cff26bfc8f50L    # -2.6518444820728715E135
        -0x197e59fb5c8a138dL    # -5.999227688369338E185
        -0x3f263328a73e501cL    # -26419.364792272347
    .end array-data

    :array_8
    .array-data 8
        0x429f60ce9f204ac1L    # 8.625160964114688E12
        0x1c236d8734940f13L
        -0x43a7b7106a87c4adL    # -5.2659495166483466E-18
    .end array-data

    :array_9
    .array-data 8
        0x50e4c1a24ebe4b57L    # 4.922214271414124E81
        0x2094b80a71e2f2ddL    # 9.889835885151041E-152
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

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;
    .locals 1

    .line 1
    const-class v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->$VALUES:[Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 8
    .line 9
    return-object v0
.end method
