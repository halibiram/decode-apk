.class final enum Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum ANSIX12_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum BASE256_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum C40_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum ECI_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum EDIFACT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum TEXT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

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
    invoke-direct {v0, v1, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 23
    .line 24
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 25
    .line 26
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v5, v2, [J

    .line 29
    .line 30
    fill-array-data v5, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x1

    .line 41
    invoke-direct {v1, v4, v5}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 45
    .line 46
    new-instance v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 47
    .line 48
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v7, v2, [J

    .line 51
    .line 52
    fill-array-data v7, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    const/4 v7, 0x2

    .line 63
    invoke-direct {v4, v6, v7}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 67
    .line 68
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 69
    .line 70
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v9, v2, [J

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
    invoke-direct {v6, v8, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 88
    .line 89
    new-instance v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

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
    invoke-direct {v8, v9, v10}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 110
    .line 111
    new-instance v9, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 112
    .line 113
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v12, v2, [J

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
    invoke-direct {v9, v11, v12}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    sput-object v9, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 132
    .line 133
    new-instance v11, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

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
    invoke-direct {v11, v13, v14}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    sput-object v11, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 154
    .line 155
    new-instance v13, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 156
    .line 157
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v14, v2, [J

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
    invoke-direct {v13, v14, v15}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    sput-object v13, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ECI_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 176
    .line 177
    const/16 v14, 0x8

    .line 178
    .line 179
    new-array v14, v14, [Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 180
    .line 181
    aput-object v0, v14, v3

    .line 182
    .line 183
    aput-object v1, v14, v5

    .line 184
    .line 185
    aput-object v4, v14, v7

    .line 186
    .line 187
    aput-object v6, v14, v2

    .line 188
    .line 189
    aput-object v8, v14, v10

    .line 190
    .line 191
    aput-object v9, v14, v12

    .line 192
    .line 193
    const/4 v0, 0x6

    .line 194
    aput-object v11, v14, v0

    .line 195
    .line 196
    aput-object v13, v14, v15

    .line 197
    .line 198
    sput-object v14, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->$VALUES:[Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 199
    .line 200
    return-void

    .line 201
    :array_0
    .array-data 8
        0x39db1cce3b588e4fL    # 5.3470021319277705E-30
        -0xc4ef0f3d427553L
        -0x5732f815ac5fe188L
    .end array-data

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
    .line 214
    .line 215
    .line 216
    .line 217
    :array_1
    .array-data 8
        0x71f108ef400f1531L    # 7.099310220137457E240
        0x30e5cbca078bcaefL    # 3.8550399872019066E-73
        0x28639f633dc17f44L    # 3.984083034401059E-114
    .end array-data

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
    .line 230
    .line 231
    .line 232
    .line 233
    :array_2
    .array-data 8
        0x2b8a711b1752b363L    # 6.0445332873509425E-99
        -0x3567c2e1507fb46eL    # -2.2671982107919687E51
        0x166d598b133bde24L
    .end array-data

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
    .line 246
    .line 247
    .line 248
    .line 249
    :array_3
    .array-data 8
        -0x21384ded99a86b7fL    # -3.7873502158272624E148
        0x7e6aefc19993f159L    # 9.019607146694565E300
        0x66282e0b47e5f822L    # 1.2842842111613108E184
    .end array-data

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
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :array_4
    .array-data 8
        0x66a15acb3e10c017L    # 2.3597366429330093E186
        0x559ab3ca393a49bL
        0x75e0438a4ee90787L    # 6.251569723743837E259
    .end array-data

    .line 266
    .line 267
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
    .line 280
    .line 281
    :array_5
    .array-data 8
        0x146d86b0728d907eL    # 2.806593824512569E-210
        0xf820a596e38fda1L    # 5.673880606987163E-234
        -0x17a7cde122e980e9L    # -4.415673005954218E194
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
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :array_6
    .array-data 8
        -0x1e6396907338161L
        0x776755500b4f4104L    # 1.5047399605190298E267
        -0x203c5b5ce6406df3L    # -2.057586686469316E153
    .end array-data

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
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_7
    .array-data 8
        0x26f65aca761f52caL    # 5.410652742627263E-121
        -0x6a70f1be04f9336cL
        0x51e1b8720ade8cf5L    # 2.7540035975232266E86
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->$VALUES:[Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 8
    .line 9
    return-object v0
.end method
