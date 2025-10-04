.class public final enum Lcom/github/mikephil/charting/components/Legend$LegendPosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/components/Legend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LegendPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/mikephil/charting/components/Legend$LegendPosition;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum ABOVE_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum ABOVE_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum ABOVE_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum LEFT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum PIECHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum RIGHT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

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
    invoke-direct {v0, v1, v3}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 23
    .line 24
    new-instance v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 25
    .line 26
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v5, 0x4

    .line 29
    new-array v6, v5, [J

    .line 30
    .line 31
    fill-array-data v6, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const/4 v6, 0x1

    .line 42
    invoke-direct {v1, v4, v6}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 46
    .line 47
    new-instance v4, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 48
    .line 49
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v8, v5, [J

    .line 52
    .line 53
    fill-array-data v8, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    const/4 v8, 0x2

    .line 64
    invoke-direct {v4, v7, v8}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    sput-object v4, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 68
    .line 69
    new-instance v7, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 70
    .line 71
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v10, v2, [J

    .line 74
    .line 75
    fill-array-data v10, :array_3

    .line 76
    .line 77
    .line 78
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-direct {v7, v9, v2}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    sput-object v7, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 89
    .line 90
    new-instance v9, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 91
    .line 92
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v11, v5, [J

    .line 95
    .line 96
    fill-array-data v11, :array_4

    .line 97
    .line 98
    .line 99
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-direct {v9, v10, v5}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v9, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 110
    .line 111
    new-instance v10, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 112
    .line 113
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v12, v5, [J

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
    invoke-direct {v10, v11, v12}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    sput-object v10, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 132
    .line 133
    new-instance v11, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 134
    .line 135
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v14, v2, [J

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
    invoke-direct {v11, v13, v14}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    sput-object v11, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 154
    .line 155
    new-instance v13, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 156
    .line 157
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v14, v5, [J

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
    invoke-direct {v13, v14, v15}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    sput-object v13, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 176
    .line 177
    new-instance v14, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 178
    .line 179
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v12, v5, [J

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
    invoke-direct {v14, v12, v15}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    sput-object v14, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 199
    .line 200
    new-instance v12, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 201
    .line 202
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    new-array v8, v2, [J

    .line 205
    .line 206
    fill-array-data v8, :array_9

    .line 207
    .line 208
    .line 209
    invoke-direct {v15, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    const/16 v15, 0x9

    .line 217
    .line 218
    invoke-direct {v12, v8, v15}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    .line 219
    .line 220
    .line 221
    sput-object v12, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 222
    .line 223
    new-instance v8, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 224
    .line 225
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    new-array v6, v5, [J

    .line 228
    .line 229
    fill-array-data v6, :array_a

    .line 230
    .line 231
    .line 232
    invoke-direct {v15, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    const/16 v15, 0xa

    .line 240
    .line 241
    invoke-direct {v8, v6, v15}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    .line 242
    .line 243
    .line 244
    sput-object v8, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 245
    .line 246
    new-instance v6, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 247
    .line 248
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 249
    .line 250
    new-array v3, v5, [J

    .line 251
    .line 252
    fill-array-data v3, :array_b

    .line 253
    .line 254
    .line 255
    invoke-direct {v15, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    const/16 v15, 0xb

    .line 263
    .line 264
    invoke-direct {v6, v3, v15}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    .line 265
    .line 266
    .line 267
    sput-object v6, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 268
    .line 269
    new-instance v3, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 270
    .line 271
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v5, v2, [J

    .line 274
    .line 275
    fill-array-data v5, :array_c

    .line 276
    .line 277
    .line 278
    invoke-direct {v15, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    const/16 v15, 0xc

    .line 286
    .line 287
    invoke-direct {v3, v5, v15}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    .line 288
    .line 289
    .line 290
    sput-object v3, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->PIECHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 291
    .line 292
    const/16 v5, 0xd

    .line 293
    .line 294
    new-array v5, v5, [Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 295
    .line 296
    const/16 v16, 0x0

    .line 297
    .line 298
    aput-object v0, v5, v16

    .line 299
    .line 300
    const/4 v0, 0x1

    .line 301
    aput-object v1, v5, v0

    .line 302
    .line 303
    const/4 v0, 0x2

    .line 304
    aput-object v4, v5, v0

    .line 305
    .line 306
    aput-object v7, v5, v2

    .line 307
    .line 308
    const/4 v0, 0x4

    .line 309
    aput-object v9, v5, v0

    .line 310
    .line 311
    const/4 v0, 0x5

    .line 312
    aput-object v10, v5, v0

    .line 313
    .line 314
    const/4 v0, 0x6

    .line 315
    aput-object v11, v5, v0

    .line 316
    .line 317
    const/4 v0, 0x7

    .line 318
    aput-object v13, v5, v0

    .line 319
    .line 320
    const/16 v0, 0x8

    .line 321
    .line 322
    aput-object v14, v5, v0

    .line 323
    .line 324
    const/16 v0, 0x9

    .line 325
    .line 326
    aput-object v12, v5, v0

    .line 327
    .line 328
    const/16 v0, 0xa

    .line 329
    .line 330
    aput-object v8, v5, v0

    .line 331
    .line 332
    const/16 v0, 0xb

    .line 333
    .line 334
    aput-object v6, v5, v0

    .line 335
    .line 336
    aput-object v3, v5, v15

    .line 337
    .line 338
    sput-object v5, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->$VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 339
    .line 340
    return-void

    .line 341
    :array_0
    .array-data 8
        -0x164db96b99665220L    # -1.398914548562471E201
        0x73648898f0b2034fL    # 7.178458620423062E247
        -0x1202323bb1b87d75L    # -6.733302499940496E221
    .end array-data

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    :array_1
    .array-data 8
        0x1f0e81194b7004c2L
        0x48793d9cefad6953L    # 1.3742331104497978E41
        0x269113cc05d6a93dL    # 6.458353262517114E-123
        -0x47e75ce4869a3a7eL    # -1.8100510317425917E-38
    .end array-data

    :array_2
    .array-data 8
        0x2cee6a41dc5334adL    # 2.9162189235052448E-92
        0x1e891350f6187244L
        0x53b04a9b53b909e8L    # 1.359308157643552E95
        -0x4e5bea8b343b3587L    # -1.4549805517289423E-69
    .end array-data

    :array_3
    .array-data 8
        -0x6962168d969c1a04L    # -9.769378084553425E-200
        0x1ae1e39b648ffb16L
        -0x47d93464171f0d3fL    # -3.34947531210946E-38
    .end array-data

    :array_4
    .array-data 8
        -0x7c41a5a0860eb601L
        0x797006a8e88c83baL    # 8.877722560972674E276
        -0x57967cc0a8402c41L
        0x62fa256ea01a9d3cL    # 6.167178064836961E168
    .end array-data

    :array_5
    .array-data 8
        -0x35b980b08bba381bL    # -6.575969947363107E49
        -0x4e7cc7223f32db69L    # -3.4813894770953165E-70
        0x8706d8af043cf92L
        -0x625c6c98d7473a3eL    # -6.639444701614689E-166
    .end array-data

    :array_6
    .array-data 8
        -0x1f388c3c9d77d240L    # -1.6099460828097827E158
        -0x5f712fcb297274e8L
        0x5329240fc4779886L    # 4.097027814998774E92
    .end array-data

    :array_7
    .array-data 8
        -0x7fe91f8797d1dde1L    # -3.181415785133974E-308
        -0x867622cfcee42c2L    # -1.2699963743919002E268
        -0x4a733673e77f328dL    # -9.617707918059238E-51
        -0x62d182b2e0a23a2bL
    .end array-data

    :array_8
    .array-data 8
        0x12dfce91a3b40725L    # 9.010411491432299E-218
        0x2dc808ca8784d42dL    # 3.775578341420168E-88
        -0x1b964fd318045f1cL    # -5.082775329671019E175
        0x4df118d855cb5f1cL    # 2.880847396587619E67
    .end array-data

    :array_9
    .array-data 8
        0x6648ac83eafe5cadL    # 5.242095719392839E184
        -0x5b5f0878e2190e9aL    # -2.987958438943626E-132
        -0x2fbd32b4a51798efL    # -4.354229762367705E78
    .end array-data

    :array_a
    .array-data 8
        -0x7f58540fccbfb978L
        0x56206b6f5eaa6a65L    # 7.53169722077597E106
        -0x66b852d0c0c6cbf3L    # -6.801900022428272E-187
        0x4a7b98377dbf4fc7L    # 6.452727728035398E50
    .end array-data

    :array_b
    .array-data 8
        0xc87bde7b38b305L
        -0x77e5ecb82bcfb725L    # -1.233938325814041E-269
        -0x70b5f85d74a9e5cfL    # -5.116637228230499E-235
        -0x635a37857c8f5ef5L
    .end array-data

    :array_c
    .array-data 8
        -0x5383dadc6652a7c2L    # -2.1082580741678196E-94
        -0xb3a6837a52cac1cL
        -0x530e7b1525905ca8L    # -3.3595090757741675E-92
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

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    .locals 1

    .line 1
    const-class v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->$VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/github/mikephil/charting/components/Legend$LegendPosition;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 8
    .line 9
    return-object v0
.end method
