.class public abstract enum Lcom/google/common/base/CaseFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/CaseFormat$StringConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/CaseFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/CaseFormat;

.field public static final enum LOWER_CAMEL:Lcom/google/common/base/CaseFormat;

.field public static final enum LOWER_HYPHEN:Lcom/google/common/base/CaseFormat;

.field public static final enum LOWER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

.field public static final enum UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

.field public static final enum UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;


# instance fields
.field private final wordBoundary:Lcom/google/common/base/CharMatcher;

.field private final wordSeparator:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/google/common/base/CaseFormat;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lcom/google/common/base/CaseFormat;

    .line 3
    .line 4
    sget-object v1, Lcom/google/common/base/CaseFormat;->LOWER_HYPHEN:Lcom/google/common/base/CaseFormat;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/google/common/base/CaseFormat;->LOWER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/google/common/base/CaseFormat;->LOWER_CAMEL:Lcom/google/common/base/CaseFormat;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/google/common/base/CaseFormat;->UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/google/common/base/CaseFormat;->UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/google/common/base/CaseFormat$1;

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
    const/16 v3, 0x2d

    .line 19
    .line 20
    invoke-static {v3}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    new-array v6, v5, [J

    .line 28
    .line 29
    fill-array-data v6, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-direct {v0, v1, v6, v3, v4}, Lcom/google/common/base/CaseFormat$1;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/google/common/base/CaseFormat;->LOWER_HYPHEN:Lcom/google/common/base/CaseFormat;

    .line 44
    .line 45
    new-instance v0, Lcom/google/common/base/CaseFormat$2;

    .line 46
    .line 47
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v3, v2, [J

    .line 50
    .line 51
    fill-array-data v3, :array_2

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/16 v3, 0x5f

    .line 62
    .line 63
    invoke-static {v3}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v8, v5, [J

    .line 70
    .line 71
    fill-array-data v8, :array_3

    .line 72
    .line 73
    .line 74
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    const/4 v8, 0x1

    .line 82
    invoke-direct {v0, v1, v8, v4, v7}, Lcom/google/common/base/CaseFormat$2;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sput-object v0, Lcom/google/common/base/CaseFormat;->LOWER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    .line 86
    .line 87
    new-instance v0, Lcom/google/common/base/CaseFormat$3;

    .line 88
    .line 89
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v4, v2, [J

    .line 92
    .line 93
    fill-array-data v4, :array_4

    .line 94
    .line 95
    .line 96
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const/16 v4, 0x41

    .line 104
    .line 105
    const/16 v7, 0x5a

    .line 106
    .line 107
    invoke-static {v4, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    new-array v11, v8, [J

    .line 114
    .line 115
    const-wide v12, -0xea720c805a5fd1L

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    aput-wide v12, v11, v6

    .line 121
    .line 122
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    invoke-direct {v0, v1, v5, v9, v10}, Lcom/google/common/base/CaseFormat$3;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sput-object v0, Lcom/google/common/base/CaseFormat;->LOWER_CAMEL:Lcom/google/common/base/CaseFormat;

    .line 133
    .line 134
    new-instance v0, Lcom/google/common/base/CaseFormat$4;

    .line 135
    .line 136
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    new-array v9, v2, [J

    .line 139
    .line 140
    fill-array-data v9, :array_5

    .line 141
    .line 142
    .line 143
    invoke-direct {v1, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v4, v7}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    new-array v8, v8, [J

    .line 157
    .line 158
    const-wide v9, 0x3518e17670ff49d5L    # 6.494169244554012E-53

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    aput-wide v9, v8, v6

    .line 164
    .line 165
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    invoke-direct {v0, v1, v2, v4, v6}, Lcom/google/common/base/CaseFormat$4;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sput-object v0, Lcom/google/common/base/CaseFormat;->UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

    .line 176
    .line 177
    new-instance v0, Lcom/google/common/base/CaseFormat$5;

    .line 178
    .line 179
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v2, v2, [J

    .line 182
    .line 183
    fill-array-data v2, :array_6

    .line 184
    .line 185
    .line 186
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {v3}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 198
    .line 199
    new-array v4, v5, [J

    .line 200
    .line 201
    fill-array-data v4, :array_7

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
    const/4 v4, 0x4

    .line 212
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/common/base/CaseFormat$5;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    sput-object v0, Lcom/google/common/base/CaseFormat;->UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    .line 216
    .line 217
    invoke-static {}, Lcom/google/common/base/CaseFormat;->$values()[Lcom/google/common/base/CaseFormat;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    sput-object v0, Lcom/google/common/base/CaseFormat;->$VALUES:[Lcom/google/common/base/CaseFormat;

    .line 222
    .line 223
    return-void

    .line 224
    nop

    .line 225
    :array_0
    .array-data 8
        0x2285476dae426533L    # 2.181240878483535E-142
        0x5d1f3dae2f5bb76fL    # 3.7203352490385425E140
        -0x6c9cdc0eaceb4fedL    # -2.776157764434819E-215
    .end array-data

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
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_1
    .array-data 8
        0x39824ab6b9e762d6L    # 1.1273223348330085E-31
        -0x6fa940756c1e72e5L    # -5.860983750231881E-230
    .end array-data

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
    :array_2
    .array-data 8
        -0x1f61f1ddab015ea7L    # -2.5790368081565498E157
        0x5d2baee2981f60b9L    # 6.593308863760022E140
        -0x36d6ad7925a36aedL    # -2.8235386274962765E44
    .end array-data

    .line 254
    .line 255
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
    .line 268
    .line 269
    :array_3
    .array-data 8
        0x2a06fc6263f17247L    # 3.131934024037087E-106
        -0x7158e492814a9b7aL
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
    :array_4
    .array-data 8
        0x1017f0168691ad2aL
        0xdaa693f8239a46eL
        0xbb62e4bb8478177L
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
    :array_5
    .array-data 8
        0x6245e52acfd3d4adL    # 2.5217164188393914E165
        -0x2e32c82cec3288c0L    # -1.1352205012567407E86
        -0x6aec5ba7b5c0bf7fL
    .end array-data

    :array_6
    .array-data 8
        -0x55e219cfbf13b9adL    # -8.14780680025536E-106
        -0x3422f3cf3dbdb859L    # -2.8489821818370012E57
        -0x40003d67af413356L    # -1.9850085405458153
    .end array-data

    :array_7
    .array-data 8
        -0x6d3dd0379d0b84e8L    # -2.576000214150414E-218
        0x41cd1cda28d0012L
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/CharMatcher;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/google/common/base/CaseFormat;->wordBoundary:Lcom/google/common/base/CharMatcher;

    .line 4
    iput-object p4, p0, Lcom/google/common/base/CaseFormat;->wordSeparator:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;Lcom/google/common/base/CaseFormat$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/base/CaseFormat;->firstCharOnlyToUpper(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static firstCharOnlyToUpper(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lcom/google/common/base/Ascii;->toUpperCase(C)C

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v1, p0}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(ILjava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/CaseFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/base/CaseFormat;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/base/CaseFormat;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/base/CaseFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/base/CaseFormat;->$VALUES:[Lcom/google/common/base/CaseFormat;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/base/CaseFormat;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/base/CaseFormat;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public convert(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, -0x1

    .line 4
    const/4 v3, -0x1

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/google/common/base/CaseFormat;->wordBoundary:Lcom/google/common/base/CharMatcher;

    .line 6
    .line 7
    add-int/lit8 v3, v3, 0x1

    .line 8
    .line 9
    invoke-virtual {v4, p2, v3}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eq v3, v2, :cond_1

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iget-object v5, p1, Lcom/google/common/base/CaseFormat;->wordSeparator:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    mul-int/lit8 v5, v5, 0x4

    .line 30
    .line 31
    add-int/2addr v5, v4

    .line 32
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, v1}, Lcom/google/common/base/CaseFormat;->normalizeFirstWord(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1, v1}, Lcom/google/common/base/CaseFormat;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :goto_1
    iget-object v1, p1, Lcom/google/common/base/CaseFormat;->wordSeparator:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/common/base/CaseFormat;->wordSeparator:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    add-int/2addr v1, v3

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    if-nez v1, :cond_2

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lcom/google/common/base/CaseFormat;->normalizeFirstWord(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p1, p2}, Lcom/google/common/base/CaseFormat;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :goto_2
    return-object p1
.end method

.method public converterTo(Lcom/google/common/base/CaseFormat;)Lcom/google/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/CaseFormat;",
            ")",
            "Lcom/google/common/base/Converter<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/base/CaseFormat$StringConverter;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CaseFormat$StringConverter;-><init>(Lcom/google/common/base/CaseFormat;Lcom/google/common/base/CaseFormat;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public normalizeFirstWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/base/CaseFormat;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public abstract normalizeWord(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final to(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    if-ne p1, p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/CaseFormat;->convert(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :goto_0
    return-object p2
.end method
