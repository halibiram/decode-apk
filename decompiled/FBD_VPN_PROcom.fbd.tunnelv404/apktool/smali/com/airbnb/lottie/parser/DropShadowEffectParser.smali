.class public Lcom/airbnb/lottie/parser/DropShadowEffectParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DROP_SHADOW_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final INNER_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# instance fields
.field private color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

.field private direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    move-result-object v0

    .line 16
    filled-new-array {v0}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->DROP_SHADOW_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 25
    .line 26
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v2, v1, [J

    .line 29
    .line 30
    fill-array-data v2, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array v1, v1, [J

    .line 43
    .line 44
    fill-array-data v1, :array_2

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->INNER_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 63
    .line 64
    return-void

    .line 65
    :array_0
    .array-data 8
        0x394d7ef15ac1e16L
        0x735ba54b8af243cdL    # 4.832410193772024E247
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
    :array_1
    .array-data 8
        0x1e33e9e72574b51eL    # 3.458071383351882E-163
        0x2db9a2d7af598d64L    # 2.013600457852869E-88
    .end array-data

    .line 78
    .line 79
    .line 80
    :array_2
    .array-data 8
        -0x6e22cb5fed017f01L
        0x76b39694017f1e0dL    # 6.168089368040553E263
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

.method private maybeParseInnerEffect(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    new-array v4, v3, [J

    .line 7
    .line 8
    const-wide v5, 0x684d9c19a5b4f658L    # 2.7018560131630313E194

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    aput-wide v5, v4, v7

    .line 15
    .line 16
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_8

    .line 31
    .line 32
    sget-object v4, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->INNER_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 33
    .line 34
    invoke-virtual {p1, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_7

    .line 39
    .line 40
    if-eq v4, v3, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const/4 v5, 0x4

    .line 54
    sparse-switch v4, :sswitch_data_0

    .line 55
    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :sswitch_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v6, v1, [J

    .line 62
    .line 63
    fill-array-data v6, :array_0

    .line 64
    .line 65
    .line 66
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_1

    .line 78
    .line 79
    const/4 v4, 0x4

    .line 80
    goto :goto_2

    .line 81
    :sswitch_1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v6, v0, [J

    .line 84
    .line 85
    fill-array-data v6, :array_1

    .line 86
    .line 87
    .line 88
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_1

    .line 100
    .line 101
    const/4 v4, 0x0

    .line 102
    goto :goto_2

    .line 103
    :sswitch_2
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array v6, v0, [J

    .line 106
    .line 107
    fill-array-data v6, :array_2

    .line 108
    .line 109
    .line 110
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_1

    .line 122
    .line 123
    const/4 v4, 0x2

    .line 124
    goto :goto_2

    .line 125
    :sswitch_3
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v6, v1, [J

    .line 128
    .line 129
    fill-array-data v6, :array_3

    .line 130
    .line 131
    .line 132
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_1

    .line 144
    .line 145
    const/4 v4, 0x1

    .line 146
    goto :goto_2

    .line 147
    :sswitch_4
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    new-array v6, v1, [J

    .line 150
    .line 151
    fill-array-data v6, :array_4

    .line 152
    .line 153
    .line 154
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_1

    .line 166
    .line 167
    const/4 v4, 0x3

    .line 168
    goto :goto_2

    .line 169
    :cond_1
    :goto_1
    const/4 v4, -0x1

    .line 170
    :goto_2
    if-eqz v4, :cond_6

    .line 171
    .line 172
    if-eq v4, v3, :cond_5

    .line 173
    .line 174
    if-eq v4, v1, :cond_4

    .line 175
    .line 176
    if-eq v4, v0, :cond_3

    .line 177
    .line 178
    if-eq v4, v5, :cond_2

    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_2
    invoke-static {p1, p2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    iput-object v4, p0, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_3
    invoke-static {p1, p2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    iput-object v4, p0, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_4
    invoke-static {p1, p2, v7}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    iput-object v4, p0, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_5
    invoke-static {p1, p2, v7}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    iput-object v4, p0, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_6
    invoke-static {p1, p2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    iput-object v4, p0, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_7
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_8
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :sswitch_data_0
    .sparse-switch
        0x150bf015 -> :sswitch_4
        0x17b08feb -> :sswitch_3
        0x3e12275f -> :sswitch_2
        0x5237c863 -> :sswitch_1
        0x5279bda1 -> :sswitch_0
    .end sparse-switch

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :array_0
    .array-data 8
        -0x5eb6999d19c97f46L    # -2.483047054323777E-148
        0x54ccc8fba6834535L    # 3.148010435256919E100
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
        -0x1ecf92434b1cfbe7L    # -1.443576722212489E160
        0x5a5be485f414759L
        -0x85d088de7cfa85cL
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
    .line 282
    .line 283
    .line 284
    .line 285
    :array_2
    .array-data 8
        -0x41278d43177c0b91L    # -5.828903916202656E-6
        0x76b9392ce79a0e74L    # 7.942529523602513E263
        0x6f1b08b36f044f45L    # 1.601057258012768E227
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
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
    :array_3
    .array-data 8
        -0x5b9d7db856e6043L
        0x240304f5ba4c9029L    # 3.270906920590004E-135
    .end array-data

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
    :array_4
    .array-data 8
        -0x2046c209cbe2cb99L    # -1.3220328027748218E153
        -0x71a8097c299bb9ebL    # -1.437486341478034E-239
    .end array-data
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/parser/DropShadowEffect;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    sget-object v0, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->DROP_SHADOW_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 23
    .line 24
    .line 25
    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->maybeParseInnerEffect(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v2, p0, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    iget-object v3, p0, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    iget-object v4, p0, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 48
    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    iget-object v5, p0, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 52
    .line 53
    if-eqz v5, :cond_3

    .line 54
    .line 55
    iget-object v6, p0, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 56
    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    new-instance p1, Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 60
    .line 61
    move-object v1, p1

    .line 62
    invoke-direct/range {v1 .. v6}, Lcom/airbnb/lottie/parser/DropShadowEffect;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_3
    const/4 p1, 0x0

    .line 67
    return-object p1
.end method
