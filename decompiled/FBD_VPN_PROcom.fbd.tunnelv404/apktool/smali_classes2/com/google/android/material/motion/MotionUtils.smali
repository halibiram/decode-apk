.class public Lcom/google/android/material/motion/MotionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EASING_TYPE_CUBIC_BEZIER:Ljava/lang/String;

.field private static final EASING_TYPE_FORMAT_END:Ljava/lang/String;

.field private static final EASING_TYPE_FORMAT_START:Ljava/lang/String;

.field private static final EASING_TYPE_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/motion/MotionUtils;->EASING_TYPE_CUBIC_BEZIER:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/motion/MotionUtils;->EASING_TYPE_PATH:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_2

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/motion/MotionUtils;->EASING_TYPE_FORMAT_START:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/motion/MotionUtils;->EASING_TYPE_FORMAT_END:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        -0x232b26b216f58e9cL    # -1.551743790242508E139
        -0x422ed1b0eb44f195L    # -6.250372891365724E-11
        -0x7ca00eac17467629L    # -2.0005788068545077E-292
    .end array-data

    :array_1
    .array-data 8
        -0x1b69d2db1092ce1bL    # -3.510325933968242E176
        0x7bdf5d4b9c7d06aaL    # 4.775879183354615E288
    .end array-data

    :array_2
    .array-data 8
        -0x6ca666d8ab49b776L
        -0x2a350f4b98511f04L    # -1.9308572632541E105
    .end array-data

    :array_3
    .array-data 8
        0x6d2c4728f9943509L    # 7.798572179368592E217
        0x2b57f48d2fc21257L    # 6.845145558883757E-100
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

.method private static getLegacyControlPoint([Ljava/lang/String;I)F
    .locals 3

    .line 1
    aget-object p0, p0, p1

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 p1, 0x0

    .line 8
    cmpg-float p1, p0, p1

    .line 9
    .line 10
    if-ltz p1, :cond_0

    .line 11
    .line 12
    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    cmpl-float p1, p0, p1

    .line 15
    .line 16
    if-gtz p1, :cond_0

    .line 17
    .line 18
    return p0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/16 v2, 0xa

    .line 29
    .line 30
    new-array v2, v2, [J

    .line 31
    .line 32
    fill-array-data v2, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        0x6183b2cbee9b7d08L    # 5.538844538586039E161
        -0x4b8c7e3448fffb9dL    # -4.97223477054434E-56
        0x28aeeaeb00ec5ddL
        -0x7490bb675250157cL
        -0x60b1d181e166fb5L    # -2.961955710911979E279
        0x65fe45abdfc9eb87L    # 2.0098363787203367E183
        -0x2e9a8afb72c1cabcL    # -1.3026263142128694E84
        0x4290f9ac75f32febL    # 4.6661315780599795E12
        -0x2a1c00fc351f1d95L    # -5.732643257874434E105
        -0x41b997f185de8036L    # -1.0433826084534252E-8
    .end array-data
.end method

.method private static getLegacyEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v2, v1, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, p1

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v1, v1, [J

    .line 32
    .line 33
    fill-array-data v1, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    sub-int/2addr p1, v1

    .line 48
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :array_0
    .array-data 8
        0x56e3d07bbc5131aeL    # 3.722794728020627E110
        0x31739c72603883b1L    # 1.7759201124398063E-70
    .end array-data

    .line 54
    .line 55
    :array_1
    .array-data 8
        -0x51674aa60e1b83daL    # -3.179698274757937E-84
        -0x204bf7934103330bL    # -1.0492085961495913E153
    .end array-data
.end method

.method private static getLegacyThemeInterpolator(Ljava/lang/String;)Landroid/animation/TimeInterpolator;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p0, v1}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v3, v2, [J

    .line 26
    .line 27
    fill-array-data v3, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {p0, v1}, Lcom/google/android/material/motion/MotionUtils;->getLegacyEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v3, v0, [J

    .line 44
    .line 45
    fill-array-data v3, :array_2

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    array-length v1, p0

    .line 60
    const/4 v3, 0x4

    .line 61
    if-ne v1, v3, :cond_0

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v1}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint([Ljava/lang/String;I)F

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v3, 0x1

    .line 69
    invoke-static {p0, v3}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint([Ljava/lang/String;I)F

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint([Ljava/lang/String;I)F

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {p0, v2}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint([Ljava/lang/String;I)F

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    invoke-static {v1, v3, v0, p0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    const/16 v3, 0xe

    .line 96
    .line 97
    new-array v3, v3, [J

    .line 98
    .line 99
    fill-array-data v3, :array_3

    .line 100
    .line 101
    .line 102
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    array-length p0, p0

    .line 113
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0

    .line 124
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 125
    .line 126
    new-array v2, v0, [J

    .line 127
    .line 128
    fill-array-data v2, :array_4

    .line 129
    .line 130
    .line 131
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {p0, v1}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_2

    .line 143
    .line 144
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v0, v0, [J

    .line 147
    .line 148
    fill-array-data v0, :array_5

    .line 149
    .line 150
    .line 151
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->getLegacyEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-static {p0}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-static {p0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0

    .line 171
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 172
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    const/4 v3, 0x5

    .line 181
    new-array v3, v3, [J

    .line 182
    .line 183
    fill-array-data v3, :array_6

    .line 184
    .line 185
    .line 186
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw v0

    .line 197
    :array_0
    .array-data 8
        -0x58496a8dcc530580L
        0x216ae3a7afd49418L
        -0x6b53bcf58adab5fcL
    .end array-data

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
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :array_1
    .array-data 8
        0xb27d0a927636431L
        0x34630b6a3c8e68c2L    # 2.427182555759977E-56
        0x4d7faa2b046d1a06L    # 2.0841775697068118E65
    .end array-data

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
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_2
    .array-data 8
        0x7c4c62545181f13eL
        0x6b008eea8bfdc5d9L    # 2.6580423450349356E207
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_3
    .array-data 8
        0x4cc9637c1d9f998L
        0x14f99e40fd7fdb5aL
        -0x7dabee7e6e9212deL
        -0x275a9004cfdea151L    # -1.0811873468632058E119
        0x1b6a5896067470dfL
        -0x7191e5d0c1da3e2bL
        0x4c18670b49c862a8L    # 3.8294268874179455E58
        -0x597954667bf7414aL
        0x592d46060cd26ae2L    # 3.7795784400537313E121
        0x1aed44f88f342475L
        -0x162b1cc4b5bc6923L    # -6.395376868386142E201
        -0x365c53a08092d077L    # -5.61574359239785E46
        -0x5a0eb61fb6e28257L    # -6.385003053243663E-126
        -0x7083b3c5c1cb1b03L    # -4.449953758588143E-234
    .end array-data

    :array_4
    .array-data 8
        -0x4b525649563cde98L    # -6.048741798350229E-55
        -0x4fc6853df975e4e4L    # -2.2004545615064366E-76
    .end array-data

    :array_5
    .array-data 8
        0x77d512d4d89dde93L    # 1.7395385382266937E269
        0xb8c4590faf0fd68L
    .end array-data

    :array_6
    .array-data 8
        0x245805974a5c79caL
        0x4cec97fb86fdaf32L    # 3.675862002636158E62
        -0x1bd0a760508b60e1L    # -3.876432458885537E174
        -0x5937fa7603483c67L    # -7.267655962994551E-122
        0x2dd96cd899a8bdbL
    .end array-data
.end method

.method private static isLegacyEasingAttribute(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    new-array v1, v1, [J

    .line 26
    .line 27
    fill-array-data v1, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p0, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 47
    :goto_1
    return p0

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        0x625ee7a67f0f77b8L    # 7.11876660309713E165
        0x76eaa42699532774L
        0x6951f92d2ef2d3e1L    # 2.149641681062544E199
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 8
        -0x5f5b65774dd5f472L    # -1.966963576794436E-151
        0x4d0f31b149caa940L    # 1.604064142472634E63
    .end array-data
.end method

.method private static isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v2, v1, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v0, v1, [J

    .line 36
    .line 37
    fill-array-data v0, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_0

    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p0, 0x0

    .line 56
    :goto_0
    return p0

    .line 57
    :array_0
    .array-data 8
        0x5b9431a78385e695L    # 1.4333743947078475E133
        0x328a1133d68dbb60L    # 3.094035466281962E-65
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :array_1
    .array-data 8
        0x53d8232a51a2788bL    # 8.055796503303191E95
        0x1ac497442e50bbcbL    # 9.924476130508862E-180
    .end array-data
.end method

.method public static resolveThemeDuration(Landroid/content/Context;II)I
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveInteger(Landroid/content/Context;II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p2    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-object p2

    .line 18
    :cond_0
    iget p1, v0, Landroid/util/TypedValue;->type:I

    .line 19
    .line 20
    const/4 p2, 0x3

    .line 21
    if-ne p1, p2, :cond_2

    .line 22
    .line 23
    iget-object p1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingAttribute(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/android/material/motion/MotionUtils;->getLegacyThemeInterpolator(Ljava/lang/String;)Landroid/animation/TimeInterpolator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_1
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/16 p2, 0x15

    .line 52
    .line 53
    new-array p2, p2, [J

    .line 54
    .line 55
    fill-array-data p2, :array_0

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :array_0
    .array-data 8
        -0x18b04365ba06791cL    # -4.4188519766567677E189
        0x7c43674f84bee25aL    # 3.781875138837564E290
        0x5ec462ca8bc486eeL    # 3.258350769594506E148
        -0x490bdbf2a235a3a8L    # -5.644662536863514E-44
        -0x2ab7bb04e8b90989L    # -6.794673405103956E102
        -0x3e9f7356136318d3L    # -8676687.394153202
        0x2fc5f85905cded41L    # 1.482324680685875E-78
        0x36a6a7e45677ab75L    # 1.984223553447707E-45
        -0x79c9c5e07de477daL    # -9.795931034326675E-279
        0x175cb07073b5d05bL    # 3.837969457044944E-196
        -0x9c817997c424a1dL    # -2.940736599052742E261
        -0x3055b8bcff4257c3L    # -5.943021320871329E75
        -0x5cd64a9e56d0445dL
        0x73217585a18dfe27L    # 3.814763159030478E246
        -0x5e9b0e1e267958d8L    # -8.190104493638985E-148
        -0x7a9ad7e8124701f0L
        0x7cf6d6bfe1e3f138L    # 9.116545635008709E293
        0x7f6bbe0a16f5d7L
        -0x58ec4694a4cbacb4L
        0x37670f3344b90cf1L    # 8.27214546927798E-42
        -0x3eb8bf1af472a5d4L    # -3047882.090251228
    .end array-data
.end method
