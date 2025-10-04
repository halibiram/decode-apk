.class public Lcom/github/mikephil/charting/utils/ColorTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COLORFUL_COLORS:[I

.field public static final COLOR_NONE:I = 0x112233

.field public static final COLOR_SKIP:I = 0x112234

.field public static final JOYFUL_COLORS:[I

.field public static final LIBERTY_COLORS:[I

.field public static final MATERIAL_COLORS:[I

.field public static final PASTEL_COLORS:[I

.field public static final VORDIPLOM_COLORS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const/16 v0, 0xf8

    .line 2
    .line 3
    const/16 v1, 0xf6

    .line 4
    .line 5
    const/16 v2, 0xcf

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x94

    .line 12
    .line 13
    const/16 v2, 0xd4

    .line 14
    .line 15
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v2, 0xb4

    .line 20
    .line 21
    const/16 v3, 0xbb

    .line 22
    .line 23
    const/16 v4, 0x88

    .line 24
    .line 25
    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/16 v3, 0xae

    .line 30
    .line 31
    const/16 v4, 0xaf

    .line 32
    .line 33
    const/16 v5, 0x76

    .line 34
    .line 35
    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/16 v4, 0x6d

    .line 40
    .line 41
    const/16 v5, 0x82

    .line 42
    .line 43
    const/16 v6, 0x2a

    .line 44
    .line 45
    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->LIBERTY_COLORS:[I

    .line 54
    .line 55
    const/16 v0, 0x8a

    .line 56
    .line 57
    const/16 v1, 0xd9

    .line 58
    .line 59
    const/16 v2, 0x50

    .line 60
    .line 61
    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v3, 0x7

    .line 66
    const/16 v4, 0xfe

    .line 67
    .line 68
    const/16 v5, 0x95

    .line 69
    .line 70
    invoke-static {v4, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const/16 v6, 0x78

    .line 75
    .line 76
    const/16 v7, 0xf7

    .line 77
    .line 78
    invoke-static {v4, v7, v6}, Landroid/graphics/Color;->rgb(III)I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    const/16 v6, 0x6a

    .line 83
    .line 84
    const/16 v8, 0xa7

    .line 85
    .line 86
    const/16 v9, 0x86

    .line 87
    .line 88
    invoke-static {v6, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    const/16 v10, 0xc2

    .line 93
    .line 94
    const/16 v11, 0xd1

    .line 95
    .line 96
    const/16 v12, 0x35

    .line 97
    .line 98
    invoke-static {v12, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    filled-new-array {v0, v3, v4, v8, v10}, [I

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->JOYFUL_COLORS:[I

    .line 107
    .line 108
    const/16 v0, 0x59

    .line 109
    .line 110
    const/16 v3, 0x80

    .line 111
    .line 112
    const/16 v4, 0x40

    .line 113
    .line 114
    invoke-static {v4, v0, v3}, Landroid/graphics/Color;->rgb(III)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const/16 v3, 0xa5

    .line 119
    .line 120
    const/16 v4, 0x7c

    .line 121
    .line 122
    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    const/16 v4, 0xb8

    .line 127
    .line 128
    const/16 v5, 0xa2

    .line 129
    .line 130
    invoke-static {v1, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    const/16 v4, 0xbf

    .line 135
    .line 136
    invoke-static {v4, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    const/16 v5, 0x30

    .line 141
    .line 142
    const/16 v8, 0xb3

    .line 143
    .line 144
    invoke-static {v8, v5, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    filled-new-array {v0, v3, v1, v4, v2}, [I

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->PASTEL_COLORS:[I

    .line 153
    .line 154
    const/16 v0, 0x25

    .line 155
    .line 156
    const/16 v1, 0x52

    .line 157
    .line 158
    const/16 v2, 0xc1

    .line 159
    .line 160
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    const/16 v1, 0xff

    .line 165
    .line 166
    const/16 v2, 0x66

    .line 167
    .line 168
    const/4 v3, 0x0

    .line 169
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    const/16 v4, 0xf5

    .line 174
    .line 175
    const/16 v5, 0xc7

    .line 176
    .line 177
    invoke-static {v4, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    const/16 v4, 0x96

    .line 182
    .line 183
    const/16 v5, 0x1f

    .line 184
    .line 185
    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    const/16 v5, 0x64

    .line 190
    .line 191
    invoke-static {v8, v5, v12}, Landroid/graphics/Color;->rgb(III)I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    filled-new-array {v0, v2, v3, v4, v5}, [I

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->COLORFUL_COLORS:[I

    .line 200
    .line 201
    const/16 v0, 0xc0

    .line 202
    .line 203
    const/16 v2, 0x8c

    .line 204
    .line 205
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    invoke-static {v1, v7, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    const/16 v4, 0xd0

    .line 214
    .line 215
    invoke-static {v1, v4, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    const/16 v5, 0xea

    .line 220
    .line 221
    invoke-static {v2, v5, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    const/16 v6, 0x9d

    .line 226
    .line 227
    invoke-static {v1, v2, v6}, Landroid/graphics/Color;->rgb(III)I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    filled-new-array {v0, v3, v4, v5, v1}, [I

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->VORDIPLOM_COLORS:[I

    .line 236
    .line 237
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 238
    .line 239
    const/4 v1, 0x2

    .line 240
    new-array v2, v1, [J

    .line 241
    .line 242
    fill-array-data v2, :array_0

    .line 243
    .line 244
    .line 245
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/ColorTemplate;->rgb(Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 257
    .line 258
    new-array v3, v1, [J

    .line 259
    .line 260
    fill-array-data v3, :array_1

    .line 261
    .line 262
    .line 263
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/ColorTemplate;->rgb(Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 275
    .line 276
    new-array v4, v1, [J

    .line 277
    .line 278
    fill-array-data v4, :array_2

    .line 279
    .line 280
    .line 281
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/ColorTemplate;->rgb(Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 293
    .line 294
    new-array v1, v1, [J

    .line 295
    .line 296
    fill-array-data v1, :array_3

    .line 297
    .line 298
    .line 299
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->rgb(Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    filled-new-array {v0, v2, v3, v1}, [I

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->MATERIAL_COLORS:[I

    .line 315
    .line 316
    return-void

    .line 317
    :array_0
    .array-data 8
        -0x2c2de1f77ade84d0L    # -6.046618018354042E95
        -0x31314135ef2b6756L    # -4.2439212055407993E71
    .end array-data

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
    :array_1
    .array-data 8
        -0x7432705f10f4e870L    # -8.064055074483629E-252
        0x73ac2e535984d887L    # 1.5763120823427734E249
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
    :array_2
    .array-data 8
        0x5206344c547c0312L    # 1.3803386521988898E87
        0x3583d397aa500b11L    # 6.623957208576651E-51
    .end array-data

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    :array_3
    .array-data 8
        0x60fc378ce4d34113L    # 1.5496316142012919E159
        0x1b44cd848e076f37L
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

.method public static colorWithAlpha(II)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static createColors(Landroid/content/res/Resources;[I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "[I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 3
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createColors([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getHoloBlue()I
    .locals 3

    .line 1
    const/16 v0, 0xb5

    .line 2
    .line 3
    const/16 v1, 0xe5

    .line 4
    .line 5
    const/16 v2, 0x33

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public static rgb(Ljava/lang/String;)I
    .locals 6

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    new-array v2, v2, [J

    .line 20
    .line 21
    const-wide v3, -0x26526a8f9452920aL    # -9.778256151890867E123

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    aput-wide v3, v2, v5

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
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/16 v0, 0x10

    .line 41
    .line 42
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    long-to-int p0, v1

    .line 47
    shr-int/lit8 v0, p0, 0x10

    .line 48
    .line 49
    and-int/lit16 v0, v0, 0xff

    .line 50
    .line 51
    shr-int/lit8 v1, p0, 0x8

    .line 52
    .line 53
    and-int/lit16 v1, v1, 0xff

    .line 54
    .line 55
    and-int/lit16 p0, p0, 0xff

    .line 56
    .line 57
    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    return p0

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        0x318fce511a78f22fL    # 5.760484999312003E-70
        0xa12a61684b8fe57L
    .end array-data
.end method
