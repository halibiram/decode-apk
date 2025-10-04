.class Lcom/airbnb/lottie/parser/GradientFillParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 11

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
    move-result-object v3

    .line 16
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v2, v1, [J

    .line 19
    .line 20
    fill-array-data v2, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v2, v1, [J

    .line 33
    .line 34
    fill-array-data v2, :array_2

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v2, v1, [J

    .line 47
    .line 48
    fill-array-data v2, :array_3

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v2, v1, [J

    .line 61
    .line 62
    fill-array-data v2, :array_4

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v2, v1, [J

    .line 75
    .line 76
    fill-array-data v2, :array_5

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v2, v1, [J

    .line 89
    .line 90
    fill-array-data v2, :array_6

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v2, v1, [J

    .line 103
    .line 104
    fill-array-data v2, :array_7

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    sput-object v0, Lcom/airbnb/lottie/parser/GradientFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 123
    .line 124
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 125
    .line 126
    new-array v2, v1, [J

    .line 127
    .line 128
    fill-array-data v2, :array_8

    .line 129
    .line 130
    .line 131
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v1, v1, [J

    .line 141
    .line 142
    fill-array-data v1, :array_9

    .line 143
    .line 144
    .line 145
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    sput-object v0, Lcom/airbnb/lottie/parser/GradientFillParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 161
    .line 162
    return-void

    .line 163
    :array_0
    .array-data 8
        0x6026c7c79ffa43aaL    # 1.527175453994397E155
        0x75b67508f06652ffL    # 1.0790244099458803E259
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_1
    .array-data 8
        -0x2d3fc1a74c2d4c51L    # -4.136084672901424E90
        -0x117330918b3c9d41L    # -3.332531427267044E224
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_2
    .array-data 8
        0x55bf636cee018de5L    # 1.1248313768598682E105
        -0x1279caee0c0d2153L    # -3.919608740096475E219
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    :array_3
    .array-data 8
        -0x3f4110062e37a501L    # -7919.97585727903
        0x242be6a701d79828L
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_4
    .array-data 8
        -0x1250229caa353fe8L    # -2.2496657868356131E220
        -0x7d849058e8482bb9L    # -1.048787126270952E-296
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_5
    .array-data 8
        -0x33f496f1c705520eL    # -2.1507212702018658E58
        0x570598031b86f982L    # 1.6228464882526459E111
    .end array-data

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_6
    .array-data 8
        -0x21761724d6242b32L    # -2.588263617241023E147
        0x3b05e2432309ba9eL
    .end array-data

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
    :array_7
    .array-data 8
        0x1d5d268dd3fb27a5L
        0x188aff970cba4f16L
    .end array-data

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
    .line 258
    .line 259
    :array_8
    .array-data 8
        0x2cd365f5cd76a25fL    # 9.299607315700557E-93
        0x47292c0b0e895fadL    # 6.535036174729191E34
    .end array-data

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
    :array_9
    .array-data 8
        -0x6643e858154798a8L    # -1.033026842913652E-184
        -0x28efb9141002f057L    # -2.44654822218581E111
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientFill;
    .locals 14

    .line 1
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    move-object v6, v0

    .line 6
    move-object v4, v1

    .line 7
    move-object v5, v4

    .line 8
    move-object v7, v5

    .line 9
    move-object v9, v7

    .line 10
    move-object v10, v9

    .line 11
    const/4 v13, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_5

    .line 17
    .line 18
    sget-object v0, Lcom/airbnb/lottie/parser/GradientFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    packed-switch v0, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    .line 36
    .line 37
    .line 38
    move-result v13

    .line 39
    goto :goto_0

    .line 40
    :pswitch_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-ne v0, v2, :cond_0

    .line 45
    .line 46
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 47
    .line 48
    :goto_1
    move-object v6, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :pswitch_2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    goto :goto_0

    .line 58
    :pswitch_3
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    goto :goto_0

    .line 63
    :pswitch_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-ne v0, v2, :cond_1

    .line 68
    .line 69
    sget-object v0, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    .line 70
    .line 71
    :goto_2
    move-object v5, v0

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :pswitch_5
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    goto :goto_0

    .line 81
    :pswitch_6
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 82
    .line 83
    .line 84
    const/4 v0, -0x1

    .line 85
    :goto_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_4

    .line 90
    .line 91
    sget-object v3, Lcom/airbnb/lottie/parser/GradientFillParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 92
    .line 93
    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    if-eq v3, v2, :cond_2

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_2
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseGradientColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    goto :goto_3

    .line 113
    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :pswitch_7
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    goto :goto_0

    .line 127
    :cond_5
    if-nez v1, :cond_6

    .line 128
    .line 129
    new-instance p0, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 130
    .line 131
    new-instance p1, Lcom/airbnb/lottie/value/Keyframe;

    .line 132
    .line 133
    const/16 v0, 0x64

    .line 134
    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-direct {p1, v0}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    .line 147
    .line 148
    .line 149
    move-object v8, p0

    .line 150
    goto :goto_4

    .line 151
    :cond_6
    move-object v8, v1

    .line 152
    :goto_4
    new-instance p0, Lcom/airbnb/lottie/model/content/GradientFill;

    .line 153
    .line 154
    const/4 v11, 0x0

    .line 155
    const/4 v12, 0x0

    .line 156
    move-object v3, p0

    .line 157
    invoke-direct/range {v3 .. v13}, Lcom/airbnb/lottie/model/content/GradientFill;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 158
    .line 159
    .line 160
    return-object p0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
