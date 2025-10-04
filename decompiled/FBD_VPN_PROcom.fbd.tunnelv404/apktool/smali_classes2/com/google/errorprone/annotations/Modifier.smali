.class public final enum Lcom/google/errorprone/annotations/Modifier;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/errorprone/annotations/Modifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/errorprone/annotations/Modifier;

.field public static final enum ABSTRACT:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum DEFAULT:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum FINAL:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum NATIVE:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum PRIVATE:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum PROTECTED:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum PUBLIC:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum STATIC:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum STRICTFP:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum SYNCHRONIZED:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum TRANSIENT:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum VOLATILE:Lcom/google/errorprone/annotations/Modifier;


# direct methods
.method private static synthetic $values()[Lcom/google/errorprone/annotations/Modifier;
    .locals 3

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/errorprone/annotations/Modifier;

    .line 4
    .line 5
    sget-object v1, Lcom/google/errorprone/annotations/Modifier;->PUBLIC:Lcom/google/errorprone/annotations/Modifier;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/google/errorprone/annotations/Modifier;->PROTECTED:Lcom/google/errorprone/annotations/Modifier;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/google/errorprone/annotations/Modifier;->PRIVATE:Lcom/google/errorprone/annotations/Modifier;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/google/errorprone/annotations/Modifier;->ABSTRACT:Lcom/google/errorprone/annotations/Modifier;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/google/errorprone/annotations/Modifier;->DEFAULT:Lcom/google/errorprone/annotations/Modifier;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/google/errorprone/annotations/Modifier;->STATIC:Lcom/google/errorprone/annotations/Modifier;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/google/errorprone/annotations/Modifier;->FINAL:Lcom/google/errorprone/annotations/Modifier;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/google/errorprone/annotations/Modifier;->TRANSIENT:Lcom/google/errorprone/annotations/Modifier;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/google/errorprone/annotations/Modifier;->VOLATILE:Lcom/google/errorprone/annotations/Modifier;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/google/errorprone/annotations/Modifier;->SYNCHRONIZED:Lcom/google/errorprone/annotations/Modifier;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lcom/google/errorprone/annotations/Modifier;->NATIVE:Lcom/google/errorprone/annotations/Modifier;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lcom/google/errorprone/annotations/Modifier;->STRICTFP:Lcom/google/errorprone/annotations/Modifier;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

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
    invoke-direct {v0, v1, v3}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->PUBLIC:Lcom/google/errorprone/annotations/Modifier;

    .line 23
    .line 24
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v3, 0x3

    .line 29
    new-array v4, v3, [J

    .line 30
    .line 31
    fill-array-data v4, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-direct {v0, v1, v4}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->PROTECTED:Lcom/google/errorprone/annotations/Modifier;

    .line 46
    .line 47
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    .line 48
    .line 49
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v4, v2, [J

    .line 52
    .line 53
    fill-array-data v4, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1, v2}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->PRIVATE:Lcom/google/errorprone/annotations/Modifier;

    .line 67
    .line 68
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    .line 69
    .line 70
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v4, v2, [J

    .line 73
    .line 74
    fill-array-data v4, :array_3

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-direct {v0, v1, v3}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->ABSTRACT:Lcom/google/errorprone/annotations/Modifier;

    .line 88
    .line 89
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    .line 90
    .line 91
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v4, v2, [J

    .line 94
    .line 95
    fill-array-data v4, :array_4

    .line 96
    .line 97
    .line 98
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const/4 v4, 0x4

    .line 106
    invoke-direct {v0, v1, v4}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->DEFAULT:Lcom/google/errorprone/annotations/Modifier;

    .line 110
    .line 111
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    .line 112
    .line 113
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v4, v2, [J

    .line 116
    .line 117
    fill-array-data v4, :array_5

    .line 118
    .line 119
    .line 120
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const/4 v4, 0x5

    .line 128
    invoke-direct {v0, v1, v4}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->STATIC:Lcom/google/errorprone/annotations/Modifier;

    .line 132
    .line 133
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    .line 134
    .line 135
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v4, v2, [J

    .line 138
    .line 139
    fill-array-data v4, :array_6

    .line 140
    .line 141
    .line 142
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const/4 v4, 0x6

    .line 150
    invoke-direct {v0, v1, v4}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->FINAL:Lcom/google/errorprone/annotations/Modifier;

    .line 154
    .line 155
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    .line 156
    .line 157
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v4, v3, [J

    .line 160
    .line 161
    fill-array-data v4, :array_7

    .line 162
    .line 163
    .line 164
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const/4 v4, 0x7

    .line 172
    invoke-direct {v0, v1, v4}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->TRANSIENT:Lcom/google/errorprone/annotations/Modifier;

    .line 176
    .line 177
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    .line 178
    .line 179
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v4, v2, [J

    .line 182
    .line 183
    fill-array-data v4, :array_8

    .line 184
    .line 185
    .line 186
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    const/16 v4, 0x8

    .line 194
    .line 195
    invoke-direct {v0, v1, v4}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->VOLATILE:Lcom/google/errorprone/annotations/Modifier;

    .line 199
    .line 200
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    .line 201
    .line 202
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    new-array v3, v3, [J

    .line 205
    .line 206
    fill-array-data v3, :array_9

    .line 207
    .line 208
    .line 209
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const/16 v3, 0x9

    .line 217
    .line 218
    invoke-direct {v0, v1, v3}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    .line 219
    .line 220
    .line 221
    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->SYNCHRONIZED:Lcom/google/errorprone/annotations/Modifier;

    .line 222
    .line 223
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    .line 224
    .line 225
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    new-array v3, v2, [J

    .line 228
    .line 229
    fill-array-data v3, :array_a

    .line 230
    .line 231
    .line 232
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    const/16 v3, 0xa

    .line 240
    .line 241
    invoke-direct {v0, v1, v3}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    .line 242
    .line 243
    .line 244
    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->NATIVE:Lcom/google/errorprone/annotations/Modifier;

    .line 245
    .line 246
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    .line 247
    .line 248
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 249
    .line 250
    new-array v2, v2, [J

    .line 251
    .line 252
    fill-array-data v2, :array_b

    .line 253
    .line 254
    .line 255
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    const/16 v2, 0xb

    .line 263
    .line 264
    invoke-direct {v0, v1, v2}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    .line 265
    .line 266
    .line 267
    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->STRICTFP:Lcom/google/errorprone/annotations/Modifier;

    .line 268
    .line 269
    invoke-static {}, Lcom/google/errorprone/annotations/Modifier;->$values()[Lcom/google/errorprone/annotations/Modifier;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->$VALUES:[Lcom/google/errorprone/annotations/Modifier;

    .line 274
    .line 275
    return-void

    .line 276
    nop

    .line 277
    :array_0
    .array-data 8
        0x25a8bc5621022af7L
        -0x53b712c1cae14873L    # -2.3339776919922164E-95
    .end array-data

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
    :array_1
    .array-data 8
        0x339bb2507d873e62L    # 4.308899895696697E-60
        0x108eb9ec4b1312aL
        0x67f4f48f484a6eebL    # 5.975460218854432E192
    .end array-data

    .line 290
    :array_2
    .array-data 8
        0x7a0cfbac6c85c410L    # 8.220359679957102E279
        -0x116a3745e5a9022bL    # -5.039601533250737E224
    .end array-data

    :array_3
    .array-data 8
        -0x347005c293c90301L    # -9.801075150764791E55
        0x578a74066964512dL    # 5.0894045412240454E113
    .end array-data

    :array_4
    .array-data 8
        0x30fe22d4c4fe9efbL    # 1.0660253123285733E-72
        0x18afbc2e9a39ebf3L    # 8.903329075042288E-190
    .end array-data

    :array_5
    .array-data 8
        -0x435d4b72fade0680L    # -1.297939311250507E-16
        -0x9d669378349f0c4L
    .end array-data

    :array_6
    .array-data 8
        0x724a943fd921f64cL    # 3.5445963476823125E242
        -0x6a9bf48af508bcf4L    # -1.248687360386193E-205
    .end array-data

    :array_7
    .array-data 8
        0x172e88c4a9ff2b90L
        0x4a6a80e88765066dL    # 3.098798316535252E50
        -0xd517c19c55747aaL
    .end array-data

    :array_8
    .array-data 8
        -0x1fd601f379263913L    # -1.7425041024515912E155
        -0x2e50897b30fdb595L    # -3.0561060708892994E85
    .end array-data

    :array_9
    .array-data 8
        0x58b41eb6f7d9126L
        -0x39ee2f75255290dL
        -0x5257b894d6fe3221L    # -9.535022126935092E-89
    .end array-data

    :array_a
    .array-data 8
        -0x37ad898166222410L    # -2.5130355433079394E40
        -0x42a83aa7a8a98c1aL    # -3.378045111783541E-13
    .end array-data

    :array_b
    .array-data 8
        0x676de1f7186cf9d8L    # 1.66428146490849E190
        0x5a9c85a695de7384L    # 3.0891518677328107E128
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/errorprone/annotations/Modifier;
    .locals 1

    .line 1
    const-class v0, Lcom/google/errorprone/annotations/Modifier;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/errorprone/annotations/Modifier;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/errorprone/annotations/Modifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/errorprone/annotations/Modifier;->$VALUES:[Lcom/google/errorprone/annotations/Modifier;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/errorprone/annotations/Modifier;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/errorprone/annotations/Modifier;

    .line 8
    .line 9
    return-object v0
.end method
