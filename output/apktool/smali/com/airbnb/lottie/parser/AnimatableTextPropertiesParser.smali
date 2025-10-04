.class public Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANIMATABLE_PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final ANIMATABLE_RANGE_PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 6

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
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v3, v1, [J

    .line 19
    .line 20
    fill-array-data v3, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 39
    .line 40
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array v2, v1, [J

    .line 43
    .line 44
    fill-array-data v2, :array_2

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v3, v1, [J

    .line 57
    .line 58
    fill-array-data v3, :array_3

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v4, v1, [J

    .line 71
    .line 72
    fill-array-data v4, :array_4

    .line 73
    .line 74
    .line 75
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v5, v1, [J

    .line 85
    .line 86
    fill-array-data v5, :array_5

    .line 87
    .line 88
    .line 89
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->ANIMATABLE_RANGE_PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 105
    .line 106
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v2, v1, [J

    .line 109
    .line 110
    fill-array-data v2, :array_6

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v3, v1, [J

    .line 123
    .line 124
    fill-array-data v3, :array_7

    .line 125
    .line 126
    .line 127
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 135
    .line 136
    new-array v4, v1, [J

    .line 137
    .line 138
    fill-array-data v4, :array_8

    .line 139
    .line 140
    .line 141
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v5, v1, [J

    .line 151
    .line 152
    fill-array-data v5, :array_9

    .line 153
    .line 154
    .line 155
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    new-array v1, v1, [J

    .line 165
    .line 166
    fill-array-data v1, :array_a

    .line 167
    .line 168
    .line 169
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    filled-new-array {v0, v2, v3, v4, v1}, [Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->ANIMATABLE_PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 185
    .line 186
    return-void

    .line 187
    :array_0
    .array-data 8
        -0x3945979cae21d28cL    # -5.3561311658459445E32
        -0x613d7bdc1c1cf6dfL    # -1.646279389766567E-160
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
    :array_1
    .array-data 8
        -0x3aa3b9714c7ecb36L    # -1.3673248390138642E26
        -0x7723b9080b1cd48eL
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
    :array_2
    .array-data 8
        0x104066b1ee991213L    # 2.112845268412149E-230
        0x5b7b4409dff1572fL    # 4.838335354026978E132
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
    :array_3
    .array-data 8
        0x1aabfab490f7ca7bL    # 3.371395679609253E-180
        0x77606374b9f6ad2eL
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
    :array_4
    .array-data 8
        -0x4835ea5384ddf0b9L    # -5.988744944990588E-40
        0x7af6dd4d0018a288L    # 2.1249895591573326E284
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
    :array_5
    .array-data 8
        0x232557e7f8472761L
        -0x8fcda5ef4d60528L
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
    :array_6
    .array-data 8
        0x4c1eb805c00846c6L    # 4.8206317421647664E58
        0x553df755ce96c93cL    # 4.194783360067249E102
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
    :array_7
    .array-data 8
        0x4043e6e3ef4ca963L    # 39.80383101695295
        0x70362d30220ecc37L    # 3.442944185135679E232
    .end array-data

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
    :array_8
    .array-data 8
        -0x5cc8040508882e09L    # -5.035110744306921E-139
        -0x69a906fd7dea5e50L    # -4.689373692825502E-201
    .end array-data

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
    .line 294
    .line 295
    :array_9
    .array-data 8
        0x32a2b9f3b9a418fbL    # 8.890878217589629E-65
        0xbb45517597abb24L
    .end array-data

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
    .line 306
    .line 307
    :array_a
    .array-data 8
        -0x1f25e05704bce64cL    # -3.586674476256792E158
        0x69f035d821c26ed3L    # 1.9853127746355707E202
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

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move-object v1, v0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    sget-object v2, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-eq v2, v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->parseAnimatableTextStyle(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->parseAnimatableTextRangeSelector(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 41
    .line 42
    .line 43
    new-instance p0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    .line 44
    .line 45
    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;)V

    .line 46
    .line 47
    .line 48
    return-object p0
.end method

.method private static parseAnimatableTextRangeSelector(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move-object v1, v0

    .line 6
    move-object v2, v1

    .line 7
    move-object v3, v2

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-eqz v4, :cond_6

    .line 13
    .line 14
    sget-object v4, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->ANIMATABLE_RANGE_PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 15
    .line 16
    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_5

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    if-eq v4, v5, :cond_4

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    if-eq v4, v6, :cond_3

    .line 27
    .line 28
    const/4 v7, 0x3

    .line 29
    if-eq v4, v7, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eq v3, v5, :cond_1

    .line 43
    .line 44
    if-eq v3, v6, :cond_1

    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v6, 0x5

    .line 54
    new-array v6, v6, [J

    .line 55
    .line 56
    fill-array-data v6, :array_0

    .line 57
    .line 58
    .line 59
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {p1, v3}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v3, Lcom/airbnb/lottie/model/content/TextRangeUnits;->INDEX:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    if-ne v3, v5, :cond_2

    .line 83
    .line 84
    sget-object v3, Lcom/airbnb/lottie/model/content/TextRangeUnits;->PERCENT:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    sget-object v3, Lcom/airbnb/lottie/model/content/TextRangeUnits;->INDEX:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    goto :goto_0

    .line 100
    :cond_5
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    goto :goto_0

    .line 105
    :cond_6
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 106
    .line 107
    .line 108
    if-nez v0, :cond_7

    .line 109
    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 113
    .line 114
    new-instance p0, Lcom/airbnb/lottie/value/Keyframe;

    .line 115
    .line 116
    const/4 p1, 0x0

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    :cond_7
    new-instance p0, Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;

    .line 132
    .line 133
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/content/TextRangeUnits;)V

    .line 134
    .line 135
    .line 136
    return-object p0

    .line 137
    :array_0
    .array-data 8
        0x177c4b7aca66c6faL    # 1.514084474391727E-195
        -0x218b5ac4aa4f5b12L    # -1.0311977897295795E147
        -0x6fdfc15aa1534777L    # -5.231729963021961E-231
        0xb54038168f63133L    # 4.26531303947639E-254
        0x10153b9f66fe5a17L    # 3.419106859632493E-231
    .end array-data
.end method

.method private static parseAnimatableTextStyle(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move-object v2, v0

    .line 6
    move-object v3, v2

    .line 7
    move-object v4, v3

    .line 8
    move-object v5, v4

    .line 9
    move-object v6, v5

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    sget-object v0, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->ANIMATABLE_PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-eq v0, v1, :cond_3

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    if-eq v0, v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    goto :goto_0

    .line 63
    :cond_4
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    goto :goto_0

    .line 68
    :cond_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 69
    .line 70
    .line 71
    new-instance p0, Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;

    .line 72
    .line 73
    move-object v1, p0

    .line 74
    invoke-direct/range {v1 .. v6}, Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;)V

    .line 75
    .line 76
    .line 77
    return-object p0
.end method
