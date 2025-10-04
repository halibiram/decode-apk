.class Lcom/airbnb/lottie/parser/KeyframeParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static INTERPOLATOR_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options; = null

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_CP_VALUE:F = 100.0f

.field static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    new-array v2, v1, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v2, v1, [J

    .line 26
    .line 27
    fill-array-data v2, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v2, v1, [J

    .line 40
    .line 41
    fill-array-data v2, :array_2

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v2, v1, [J

    .line 54
    .line 55
    fill-array-data v2, :array_3

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v2, v1, [J

    .line 68
    .line 69
    fill-array-data v2, :array_4

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v2, v1, [J

    .line 82
    .line 83
    fill-array-data v2, :array_5

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v2, v1, [J

    .line 96
    .line 97
    fill-array-data v2, :array_6

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v2, v1, [J

    .line 110
    .line 111
    fill-array-data v2, :array_7

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 130
    .line 131
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v2, v1, [J

    .line 134
    .line 135
    fill-array-data v2, :array_8

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array v1, v1, [J

    .line 148
    .line 149
    fill-array-data v1, :array_9

    .line 150
    .line 151
    .line 152
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->INTERPOLATOR_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 168
    .line 169
    return-void

    .line 170
    nop

    .line 171
    :array_0
    .array-data 8
        -0x3572df169c481f51L    # -1.3622860783225741E51
        0x587cdeac51e2bdf3L    # 1.8200459265385039E118
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    :array_1
    .array-data 8
        0x55265cebd4c8d443L    # 1.5652297597638674E102
        0x263efce58ae3504fL
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_2
    .array-data 8
        0x3498ceec4c03da20L
        0xbcddd051687f1edL
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_3
    .array-data 8
        -0x4db77584b713271L
        0x28b3ef90e0f16887L
    .end array-data

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_4
    .array-data 8
        0x53c2d6eb9e9b9d74L    # 3.143827949828811E95
        0x3bef4834bf96d37L
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :array_5
    .array-data 8
        0x3ef33ca718e41ab9L    # 1.8345761014361003E-5
        0x5ae7506a46640755L    # 8.080294810117245E129
    .end array-data

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    :array_6
    .array-data 8
        -0x2ae5060f11106eeaL    # -9.4406404853846E101
        0x50be5e365360dd10L    # 9.001922739415535E80
    .end array-data

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
    :array_7
    .array-data 8
        -0x2ac38e12171f6517L    # -3.9818513037725013E102
        0x367f7cded356d4deL    # 3.447169595290953E-46
    .end array-data

    .line 256
    .line 257
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
    :array_8
    .array-data 8
        -0x71e8f5a53f027104L    # -8.638421349439349E-241
        -0x44ed6af886623e41L    # -3.8426975851048354E-24
    .end array-data

    .line 268
    .line 269
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
    :array_9
    .array-data 8
        -0x7b15286abf22ed11L    # -5.640933078565724E-285
        -0x5aab9f36f6597d7fL    # -7.349619622929381E-129
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

.method private static getInterpolator(I)Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/airbnb/lottie/parser/KeyframeParser;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache()Landroidx/collection/SparseArrayCompat;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method private static interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;
    .locals 6

    .line 1
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 12
    .line 13
    iget v0, p0, Landroid/graphics/PointF;->y:F

    .line 14
    .line 15
    const/high16 v3, -0x3d380000    # -100.0f

    .line 16
    .line 17
    const/high16 v4, 0x42c80000    # 100.0f

    .line 18
    .line 19
    invoke-static {v0, v3, v4}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 24
    .line 25
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 32
    .line 33
    iget v0, p1, Landroid/graphics/PointF;->y:F

    .line 34
    .line 35
    invoke-static {v0, v3, v4}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 40
    .line 41
    iget v1, p0, Landroid/graphics/PointF;->x:F

    .line 42
    .line 43
    iget v3, p0, Landroid/graphics/PointF;->y:F

    .line 44
    .line 45
    iget v4, p1, Landroid/graphics/PointF;->x:F

    .line 46
    .line 47
    invoke-static {v1, v3, v4, v0}, Lcom/airbnb/lottie/utils/Utils;->hashFor(FFFF)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {}, Lcom/airbnb/lottie/L;->getDisablePathInterpolatorCache()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v3, 0x0

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    move-object v1, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-static {v0}, Lcom/airbnb/lottie/parser/KeyframeParser;->getInterpolator(I)Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :goto_0
    if-eqz v1, :cond_1

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Landroid/view/animation/Interpolator;

    .line 71
    .line 72
    :cond_1
    if-eqz v1, :cond_2

    .line 73
    .line 74
    if-nez v3, :cond_4

    .line 75
    .line 76
    :cond_2
    :try_start_0
    iget v1, p0, Landroid/graphics/PointF;->x:F

    .line 77
    .line 78
    iget v3, p0, Landroid/graphics/PointF;->y:F

    .line 79
    .line 80
    iget v4, p1, Landroid/graphics/PointF;->x:F

    .line 81
    .line 82
    iget v5, p1, Landroid/graphics/PointF;->y:F

    .line 83
    .line 84
    invoke-static {v1, v3, v4, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    .line 85
    .line 86
    .line 87
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_1
    move-object v3, p0

    .line 89
    goto :goto_2

    .line 90
    :catch_0
    move-exception v1

    .line 91
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    const/4 v4, 0x6

    .line 94
    new-array v4, v4, [J

    .line 95
    .line 96
    fill-array-data v4, :array_0

    .line 97
    .line 98
    .line 99
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    iget v1, p0, Landroid/graphics/PointF;->x:F

    .line 117
    .line 118
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 123
    .line 124
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 125
    .line 126
    const/4 v3, 0x0

    .line 127
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 132
    .line 133
    invoke-static {v1, p0, v2, p1}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    goto :goto_1

    .line 138
    :cond_3
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    .line 139
    .line 140
    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :goto_2
    invoke-static {}, Lcom/airbnb/lottie/L;->getDisablePathInterpolatorCache()Z

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    if-nez p0, :cond_4

    .line 149
    .line 150
    :try_start_1
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 151
    .line 152
    invoke-direct {p0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v0, p0}, Lcom/airbnb/lottie/parser/KeyframeParser;->putInterpolator(ILjava/lang/ref/WeakReference;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    .line 157
    .line 158
    :catch_1
    :cond_4
    return-object v3

    .line 159
    :array_0
    .array-data 8
        -0x2d68621b007ba40aL    # -7.51690957902106E89
        -0x466a167b7a47e201L    # -2.700884511337478E-31
        -0x45086b056460b167L    # -1.219158187296511E-24
        0x6bee74b8ff82cd47L    # 8.010121234238874E211
        -0x340f9aa276e92d2L    # -7.740055183137016E292
        0xab098cb4c8ade90L
    .end array-data
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;ZZ)Lcom/airbnb/lottie/value/Keyframe;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;ZZ)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p0, p2, p3}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseMultiDimensionalKeyframe(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    if-eqz p4, :cond_1

    .line 11
    .line 12
    invoke-static {p1, p0, p2, p3}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseKeyframe(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseStaticValue(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private static parseKeyframe(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    move-object v1, v0

    .line 8
    move-object v3, v1

    .line 9
    move-object v5, v3

    .line 10
    move-object v10, v5

    .line 11
    move-object v11, v10

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    if-eqz v6, :cond_1

    .line 19
    .line 20
    sget-object v6, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 21
    .line 22
    invoke-virtual {p1, v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const/high16 v7, 0x3f800000    # 1.0f

    .line 27
    .line 28
    packed-switch v6, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_0
    invoke-static {p1, p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    goto :goto_0

    .line 40
    :pswitch_1
    invoke-static {p1, p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    goto :goto_0

    .line 45
    :pswitch_2
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v6, 0x1

    .line 50
    if-ne v4, v6, :cond_0

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v4, 0x0

    .line 55
    goto :goto_0

    .line 56
    :pswitch_3
    invoke-static {p1, v7}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_0

    .line 61
    :pswitch_4
    invoke-static {p1, v7}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_0

    .line 66
    :pswitch_5
    invoke-interface {p3, p1, p2}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    goto :goto_0

    .line 71
    :pswitch_6
    invoke-interface {p3, p1, p2}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    goto :goto_0

    .line 76
    :pswitch_7
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 77
    .line 78
    .line 79
    move-result-wide v6

    .line 80
    double-to-float v8, v6

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 83
    .line 84
    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    sget-object p1, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 88
    .line 89
    move-object v7, p1

    .line 90
    move-object v6, v5

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    if-eqz v0, :cond_3

    .line 93
    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :goto_1
    move-object v7, p1

    .line 101
    move-object v6, v3

    .line 102
    goto :goto_2

    .line 103
    :cond_3
    sget-object p1, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :goto_2
    new-instance p1, Lcom/airbnb/lottie/value/Keyframe;

    .line 107
    .line 108
    const/4 v9, 0x0

    .line 109
    move-object v3, p1

    .line 110
    move-object v4, p0

    .line 111
    invoke-direct/range {v3 .. v9}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 112
    .line 113
    .line 114
    iput-object v10, p1, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 115
    .line 116
    iput-object v11, p1, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 117
    .line 118
    return-object p1

    .line 119
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

.method private static parseMultiDimensionalKeyframe(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x0

    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v12, 0x0

    .line 18
    const/4 v13, 0x0

    .line 19
    const/4 v14, 0x0

    .line 20
    const/4 v15, 0x0

    .line 21
    const/16 v16, 0x0

    .line 22
    .line 23
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v17

    .line 27
    if-eqz v17, :cond_11

    .line 28
    .line 29
    sget-object v4, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x1

    .line 36
    packed-switch v4, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_0
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    goto :goto_0

    .line 48
    :pswitch_1
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 49
    .line 50
    .line 51
    move-result-object v15

    .line 52
    goto :goto_0

    .line 53
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-ne v4, v5, :cond_0

    .line 58
    .line 59
    const/4 v6, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v6, 0x0

    .line 62
    goto :goto_0

    .line 63
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    sget-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 68
    .line 69
    if-ne v4, v5, :cond_8

    .line 70
    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 72
    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    const/4 v5, 0x0

    .line 76
    const/4 v12, 0x0

    .line 77
    const/4 v13, 0x0

    .line 78
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v18

    .line 82
    if-eqz v18, :cond_7

    .line 83
    .line 84
    move-object/from16 v18, v15

    .line 85
    .line 86
    sget-object v15, Lcom/airbnb/lottie/parser/KeyframeParser;->INTERPOLATOR_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 87
    .line 88
    invoke-virtual {v0, v15}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 89
    .line 90
    .line 91
    move-result v15

    .line 92
    if-eqz v15, :cond_4

    .line 93
    .line 94
    move-object/from16 v19, v3

    .line 95
    .line 96
    const/4 v3, 0x1

    .line 97
    if-eq v15, v3, :cond_1

    .line 98
    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 100
    .line 101
    .line 102
    :goto_2
    move-object/from16 v15, v18

    .line 103
    .line 104
    move-object/from16 v3, v19

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    sget-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 112
    .line 113
    if-ne v3, v5, :cond_2

    .line 114
    .line 115
    move v3, v14

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 117
    .line 118
    .line 119
    move-result-wide v13

    .line 120
    double-to-float v13, v13

    .line 121
    move v14, v3

    .line 122
    move v5, v13

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    move v3, v14

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 129
    .line 130
    .line 131
    move-result-wide v13

    .line 132
    double-to-float v13, v13

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    if-ne v14, v5, :cond_3

    .line 138
    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 140
    .line 141
    .line 142
    move-result-wide v14

    .line 143
    double-to-float v5, v14

    .line 144
    goto :goto_3

    .line 145
    :cond_3
    move v5, v13

    .line 146
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 147
    .line 148
    .line 149
    move v14, v3

    .line 150
    move-object/from16 v15, v18

    .line 151
    .line 152
    move-object/from16 v3, v19

    .line 153
    .line 154
    move/from16 v20, v13

    .line 155
    .line 156
    move v13, v5

    .line 157
    move/from16 v5, v20

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    move-object/from16 v19, v3

    .line 161
    .line 162
    move v3, v14

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    sget-object v12, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 168
    .line 169
    if-ne v4, v12, :cond_5

    .line 170
    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 172
    .line 173
    .line 174
    move-result-wide v14

    .line 175
    double-to-float v12, v14

    .line 176
    move v14, v3

    .line 177
    move v4, v12

    .line 178
    goto :goto_2

    .line 179
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 180
    .line 181
    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 183
    .line 184
    .line 185
    move-result-wide v14

    .line 186
    double-to-float v4, v14

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 188
    .line 189
    .line 190
    move-result-object v14

    .line 191
    if-ne v14, v12, :cond_6

    .line 192
    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 194
    .line 195
    .line 196
    move-result-wide v14

    .line 197
    double-to-float v12, v14

    .line 198
    goto :goto_4

    .line 199
    :cond_6
    move v12, v4

    .line 200
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 201
    .line 202
    .line 203
    move v14, v3

    .line 204
    goto :goto_2

    .line 205
    :cond_7
    move-object/from16 v19, v3

    .line 206
    .line 207
    move v3, v14

    .line 208
    move-object/from16 v18, v15

    .line 209
    .line 210
    new-instance v14, Landroid/graphics/PointF;

    .line 211
    .line 212
    invoke-direct {v14, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 213
    .line 214
    .line 215
    new-instance v4, Landroid/graphics/PointF;

    .line 216
    .line 217
    invoke-direct {v4, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 218
    .line 219
    .line 220
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 221
    .line 222
    .line 223
    move-object v13, v4

    .line 224
    move-object v12, v14

    .line 225
    :goto_5
    move v14, v3

    .line 226
    :goto_6
    move-object/from16 v3, v19

    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_8
    move-object/from16 v19, v3

    .line 231
    .line 232
    move v3, v14

    .line 233
    move-object/from16 v18, v15

    .line 234
    .line 235
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    goto :goto_6

    .line 240
    :pswitch_4
    move-object/from16 v19, v3

    .line 241
    .line 242
    move v3, v14

    .line 243
    move-object/from16 v18, v15

    .line 244
    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    sget-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 250
    .line 251
    if-ne v4, v5, :cond_10

    .line 252
    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 254
    .line 255
    .line 256
    const/4 v4, 0x0

    .line 257
    const/4 v5, 0x0

    .line 258
    const/4 v9, 0x0

    .line 259
    const/4 v11, 0x0

    .line 260
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result v14

    .line 264
    if-eqz v14, :cond_f

    .line 265
    .line 266
    sget-object v14, Lcom/airbnb/lottie/parser/KeyframeParser;->INTERPOLATOR_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 267
    .line 268
    invoke-virtual {v0, v14}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 269
    .line 270
    .line 271
    move-result v14

    .line 272
    if-eqz v14, :cond_c

    .line 273
    .line 274
    const/4 v15, 0x1

    .line 275
    if-eq v14, v15, :cond_9

    .line 276
    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 278
    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    sget-object v11, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 286
    .line 287
    if-ne v5, v11, :cond_a

    .line 288
    .line 289
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 290
    .line 291
    .line 292
    move-result-wide v14

    .line 293
    double-to-float v11, v14

    .line 294
    move v5, v11

    .line 295
    goto :goto_7

    .line 296
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 297
    .line 298
    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 300
    .line 301
    .line 302
    move-result-wide v14

    .line 303
    double-to-float v5, v14

    .line 304
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 305
    .line 306
    .line 307
    move-result-object v14

    .line 308
    if-ne v14, v11, :cond_b

    .line 309
    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 311
    .line 312
    .line 313
    move-result-wide v14

    .line 314
    double-to-float v11, v14

    .line 315
    goto :goto_8

    .line 316
    :cond_b
    move v11, v5

    .line 317
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 318
    .line 319
    .line 320
    goto :goto_7

    .line 321
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    sget-object v9, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 326
    .line 327
    if-ne v4, v9, :cond_d

    .line 328
    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 330
    .line 331
    .line 332
    move-result-wide v14

    .line 333
    double-to-float v9, v14

    .line 334
    move v4, v9

    .line 335
    goto :goto_7

    .line 336
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 337
    .line 338
    .line 339
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 340
    .line 341
    .line 342
    move-result-wide v14

    .line 343
    double-to-float v4, v14

    .line 344
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 345
    .line 346
    .line 347
    move-result-object v14

    .line 348
    if-ne v14, v9, :cond_e

    .line 349
    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 351
    .line 352
    .line 353
    move-result-wide v14

    .line 354
    double-to-float v9, v14

    .line 355
    goto :goto_9

    .line 356
    :cond_e
    move v9, v4

    .line 357
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 358
    .line 359
    .line 360
    goto :goto_7

    .line 361
    :cond_f
    new-instance v14, Landroid/graphics/PointF;

    .line 362
    .line 363
    invoke-direct {v14, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 364
    .line 365
    .line 366
    new-instance v4, Landroid/graphics/PointF;

    .line 367
    .line 368
    invoke-direct {v4, v9, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 369
    .line 370
    .line 371
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 372
    .line 373
    .line 374
    move-object v11, v4

    .line 375
    move-object v9, v14

    .line 376
    move-object/from16 v15, v18

    .line 377
    .line 378
    goto/16 :goto_5

    .line 379
    .line 380
    :cond_10
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    move v14, v3

    .line 385
    move-object/from16 v15, v18

    .line 386
    .line 387
    goto/16 :goto_6

    .line 388
    .line 389
    :pswitch_5
    move-object/from16 v19, v3

    .line 390
    .line 391
    move v3, v14

    .line 392
    move-object/from16 v18, v15

    .line 393
    .line 394
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v16

    .line 398
    goto/16 :goto_6

    .line 399
    .line 400
    :pswitch_6
    move-object/from16 v19, v3

    .line 401
    .line 402
    move v3, v14

    .line 403
    move-object/from16 v18, v15

    .line 404
    .line 405
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v10

    .line 409
    goto/16 :goto_6

    .line 410
    .line 411
    :pswitch_7
    move-object/from16 v19, v3

    .line 412
    .line 413
    move-object/from16 v18, v15

    .line 414
    .line 415
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 416
    .line 417
    .line 418
    move-result-wide v3

    .line 419
    double-to-float v14, v3

    .line 420
    goto/16 :goto_6

    .line 421
    .line 422
    :cond_11
    move-object/from16 v19, v3

    .line 423
    .line 424
    move v3, v14

    .line 425
    move-object/from16 v18, v15

    .line 426
    .line 427
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 428
    .line 429
    .line 430
    if-eqz v6, :cond_12

    .line 431
    .line 432
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 433
    .line 434
    move-object v11, v10

    .line 435
    :goto_a
    const/4 v12, 0x0

    .line 436
    const/4 v13, 0x0

    .line 437
    goto :goto_c

    .line 438
    :cond_12
    if-eqz v7, :cond_13

    .line 439
    .line 440
    if-eqz v8, :cond_13

    .line 441
    .line 442
    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    :goto_b
    move-object/from16 v11, v16

    .line 447
    .line 448
    goto :goto_a

    .line 449
    :cond_13
    if-eqz v9, :cond_14

    .line 450
    .line 451
    if-eqz v11, :cond_14

    .line 452
    .line 453
    if-eqz v12, :cond_14

    .line 454
    .line 455
    if-eqz v13, :cond_14

    .line 456
    .line 457
    invoke-static {v9, v12}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-static {v11, v13}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    move-object v12, v0

    .line 466
    move-object v13, v1

    .line 467
    move-object/from16 v11, v16

    .line 468
    .line 469
    const/4 v0, 0x0

    .line 470
    goto :goto_c

    .line 471
    :cond_14
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 472
    .line 473
    goto :goto_b

    .line 474
    :goto_c
    if-eqz v12, :cond_15

    .line 475
    .line 476
    if-eqz v13, :cond_15

    .line 477
    .line 478
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 479
    .line 480
    const/4 v15, 0x0

    .line 481
    move-object v8, v0

    .line 482
    move-object/from16 v9, p0

    .line 483
    .line 484
    move v14, v3

    .line 485
    move-object/from16 v1, v18

    .line 486
    .line 487
    invoke-direct/range {v8 .. v15}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 488
    .line 489
    .line 490
    goto :goto_d

    .line 491
    :cond_15
    move-object/from16 v1, v18

    .line 492
    .line 493
    new-instance v2, Lcom/airbnb/lottie/value/Keyframe;

    .line 494
    .line 495
    const/4 v14, 0x0

    .line 496
    move-object v8, v2

    .line 497
    move-object/from16 v9, p0

    .line 498
    .line 499
    move-object v12, v0

    .line 500
    move v13, v3

    .line 501
    invoke-direct/range {v8 .. v14}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 502
    .line 503
    .line 504
    move-object v0, v2

    .line 505
    :goto_d
    iput-object v1, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 506
    .line 507
    move-object/from16 v3, v19

    .line 508
    .line 509
    iput-object v3, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 510
    .line 511
    return-object v0

    .line 512
    nop

    .line 513
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

.method private static parseStaticValue(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p0, p1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Lcom/airbnb/lottie/value/Keyframe;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method private static pathInterpolatorCache()Landroidx/collection/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    .line 13
    .line 14
    return-object v0
.end method

.method private static putInterpolator(ILjava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/airbnb/lottie/parser/KeyframeParser;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    .line 5
    .line 6
    invoke-virtual {v1, p0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method
