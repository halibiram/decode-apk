.class public final enum Lcom/google/android/material/color/utilities/Variant;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/color/utilities/Variant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/color/utilities/Variant;

.field public static final enum CONTENT:Lcom/google/android/material/color/utilities/Variant;

.field public static final enum EXPRESSIVE:Lcom/google/android/material/color/utilities/Variant;

.field public static final enum FIDELITY:Lcom/google/android/material/color/utilities/Variant;

.field public static final enum FRUIT_SALAD:Lcom/google/android/material/color/utilities/Variant;

.field public static final enum MONOCHROME:Lcom/google/android/material/color/utilities/Variant;

.field public static final enum NEUTRAL:Lcom/google/android/material/color/utilities/Variant;

.field public static final enum RAINBOW:Lcom/google/android/material/color/utilities/Variant;

.field public static final enum TONAL_SPOT:Lcom/google/android/material/color/utilities/Variant;

.field public static final enum VIBRANT:Lcom/google/android/material/color/utilities/Variant;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/Variant;

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
    invoke-direct {v0, v1, v3}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/android/material/color/utilities/Variant;->MONOCHROME:Lcom/google/android/material/color/utilities/Variant;

    .line 23
    .line 24
    new-instance v1, Lcom/google/android/material/color/utilities/Variant;

    .line 25
    .line 26
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v5, 0x2

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
    invoke-direct {v1, v4, v6}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Lcom/google/android/material/color/utilities/Variant;->NEUTRAL:Lcom/google/android/material/color/utilities/Variant;

    .line 46
    .line 47
    new-instance v4, Lcom/google/android/material/color/utilities/Variant;

    .line 48
    .line 49
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v8, v2, [J

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
    invoke-direct {v4, v7, v5}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v4, Lcom/google/android/material/color/utilities/Variant;->TONAL_SPOT:Lcom/google/android/material/color/utilities/Variant;

    .line 67
    .line 68
    new-instance v7, Lcom/google/android/material/color/utilities/Variant;

    .line 69
    .line 70
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v9, v5, [J

    .line 73
    .line 74
    fill-array-data v9, :array_3

    .line 75
    .line 76
    .line 77
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-direct {v7, v8, v2}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v7, Lcom/google/android/material/color/utilities/Variant;->VIBRANT:Lcom/google/android/material/color/utilities/Variant;

    .line 88
    .line 89
    new-instance v8, Lcom/google/android/material/color/utilities/Variant;

    .line 90
    .line 91
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v10, v2, [J

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
    invoke-direct {v8, v9, v10}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v8, Lcom/google/android/material/color/utilities/Variant;->EXPRESSIVE:Lcom/google/android/material/color/utilities/Variant;

    .line 110
    .line 111
    new-instance v9, Lcom/google/android/material/color/utilities/Variant;

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
    invoke-direct {v9, v11, v12}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    sput-object v9, Lcom/google/android/material/color/utilities/Variant;->FIDELITY:Lcom/google/android/material/color/utilities/Variant;

    .line 132
    .line 133
    new-instance v11, Lcom/google/android/material/color/utilities/Variant;

    .line 134
    .line 135
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v14, v5, [J

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
    invoke-direct {v11, v13, v14}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    sput-object v11, Lcom/google/android/material/color/utilities/Variant;->CONTENT:Lcom/google/android/material/color/utilities/Variant;

    .line 154
    .line 155
    new-instance v13, Lcom/google/android/material/color/utilities/Variant;

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
    invoke-direct {v13, v14, v15}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    sput-object v13, Lcom/google/android/material/color/utilities/Variant;->RAINBOW:Lcom/google/android/material/color/utilities/Variant;

    .line 176
    .line 177
    new-instance v14, Lcom/google/android/material/color/utilities/Variant;

    .line 178
    .line 179
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v12, v2, [J

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
    invoke-direct {v14, v12, v15}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    sput-object v14, Lcom/google/android/material/color/utilities/Variant;->FRUIT_SALAD:Lcom/google/android/material/color/utilities/Variant;

    .line 199
    .line 200
    const/16 v12, 0x9

    .line 201
    .line 202
    new-array v12, v12, [Lcom/google/android/material/color/utilities/Variant;

    .line 203
    .line 204
    aput-object v0, v12, v3

    .line 205
    .line 206
    aput-object v1, v12, v6

    .line 207
    .line 208
    aput-object v4, v12, v5

    .line 209
    .line 210
    aput-object v7, v12, v2

    .line 211
    .line 212
    aput-object v8, v12, v10

    .line 213
    .line 214
    const/4 v0, 0x5

    .line 215
    aput-object v9, v12, v0

    .line 216
    .line 217
    const/4 v0, 0x6

    .line 218
    aput-object v11, v12, v0

    .line 219
    .line 220
    const/4 v0, 0x7

    .line 221
    aput-object v13, v12, v0

    .line 222
    .line 223
    aput-object v14, v12, v15

    .line 224
    .line 225
    sput-object v12, Lcom/google/android/material/color/utilities/Variant;->$VALUES:[Lcom/google/android/material/color/utilities/Variant;

    .line 226
    .line 227
    return-void

    .line 228
    nop

    .line 229
    :array_0
    .array-data 8
        -0x43680324b89f8a6L
        0x3b1692be3ea3346dL    # 4.668031536170809E-24
        -0x640b509d2a1cf2a8L    # -5.227092417870311E-174
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
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :array_1
    .array-data 8
        -0x4a674e778791ec02L    # -1.6499971240488094E-50
        -0x45cbd54a5ea8ca2eL    # -2.545412302581481E-28
    .end array-data

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
    :array_2
    .array-data 8
        -0x7062107c6f9502b8L
        -0x720ca72418d988b6L
        0xdfbe658e6e91854L    # 2.615077014081218E-241
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
    .line 270
    .line 271
    .line 272
    .line 273
    :array_3
    .array-data 8
        -0x1b50f2fbbe1cc04bL    # -9.830167372524502E176
        -0x5efcab299982b79aL    # -1.181123721872435E-149
    .end array-data

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
    :array_4
    .array-data 8
        -0x48fa6e1b3606f504L    # -1.2090345580607488E-43
        0x89609ce6278c98cL
        0x2514ba9708936bb9L    # 4.672587563410295E-130
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :array_5
    .array-data 8
        0x5bc06e0b71472072L    # 9.329578131307617E133
        -0x727210057d00d847L
    .end array-data

    :array_6
    .array-data 8
        0x26a61037bff0dc61L
        0x4b1eee7fb1d5f8c5L    # 7.40665534213469E53
    .end array-data

    :array_7
    .array-data 8
        -0x1fbfb05bb4e1bbc0L    # -4.373922097865002E155
        -0x1c1eedc342b1bd46L    # -1.319448897623208E173
    .end array-data

    :array_8
    .array-data 8
        -0x1134546900291d98L    # -5.121064086935809E225
        0x3c310bfce4f2d47L    # 1.5284130005489017E-290
        -0x58ace9677c7b8d4cL
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/color/utilities/Variant;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/material/color/utilities/Variant;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/material/color/utilities/Variant;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/android/material/color/utilities/Variant;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/color/utilities/Variant;->$VALUES:[Lcom/google/android/material/color/utilities/Variant;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/material/color/utilities/Variant;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/material/color/utilities/Variant;

    .line 8
    .line 9
    return-object v0
.end method
