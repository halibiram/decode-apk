.class public abstract enum Lcom/google/gson/FieldNamingPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/FieldNamingStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/gson/FieldNamingPolicy;",
        ">;",
        "Lcom/google/gson/FieldNamingStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gson/FieldNamingPolicy;

.field public static final enum IDENTITY:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DASHES:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DOTS:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE_WITH_SPACES:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum UPPER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/google/gson/FieldNamingPolicy$1;

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
    invoke-direct {v0, v1, v3}, Lcom/google/gson/FieldNamingPolicy$1;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    .line 23
    .line 24
    new-instance v1, Lcom/google/gson/FieldNamingPolicy$2;

    .line 25
    .line 26
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v5, 0x3

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
    invoke-direct {v1, v4, v6}, Lcom/google/gson/FieldNamingPolicy$2;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Lcom/google/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/google/gson/FieldNamingPolicy;

    .line 46
    .line 47
    new-instance v4, Lcom/google/gson/FieldNamingPolicy$3;

    .line 48
    .line 49
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v8, 0x5

    .line 52
    new-array v9, v8, [J

    .line 53
    .line 54
    fill-array-data v9, :array_2

    .line 55
    .line 56
    .line 57
    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-direct {v4, v7, v2}, Lcom/google/gson/FieldNamingPolicy$3;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    sput-object v4, Lcom/google/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lcom/google/gson/FieldNamingPolicy;

    .line 68
    .line 69
    new-instance v7, Lcom/google/gson/FieldNamingPolicy$4;

    .line 70
    .line 71
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v10, v8, [J

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
    invoke-direct {v7, v9, v5}, Lcom/google/gson/FieldNamingPolicy$4;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    sput-object v7, Lcom/google/gson/FieldNamingPolicy;->UPPER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    .line 89
    .line 90
    new-instance v9, Lcom/google/gson/FieldNamingPolicy$5;

    .line 91
    .line 92
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v11, v8, [J

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
    const/4 v11, 0x4

    .line 107
    invoke-direct {v9, v10, v11}, Lcom/google/gson/FieldNamingPolicy$5;-><init>(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    sput-object v9, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    .line 111
    .line 112
    new-instance v10, Lcom/google/gson/FieldNamingPolicy$6;

    .line 113
    .line 114
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v13, v11, [J

    .line 117
    .line 118
    fill-array-data v13, :array_5

    .line 119
    .line 120
    .line 121
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    invoke-direct {v10, v12, v8}, Lcom/google/gson/FieldNamingPolicy$6;-><init>(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    sput-object v10, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcom/google/gson/FieldNamingPolicy;

    .line 132
    .line 133
    new-instance v12, Lcom/google/gson/FieldNamingPolicy$7;

    .line 134
    .line 135
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v14, v11, [J

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
    invoke-direct {v12, v13, v14}, Lcom/google/gson/FieldNamingPolicy$7;-><init>(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    sput-object v12, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DOTS:Lcom/google/gson/FieldNamingPolicy;

    .line 154
    .line 155
    const/4 v13, 0x7

    .line 156
    new-array v13, v13, [Lcom/google/gson/FieldNamingPolicy;

    .line 157
    .line 158
    aput-object v0, v13, v3

    .line 159
    .line 160
    aput-object v1, v13, v6

    .line 161
    .line 162
    aput-object v4, v13, v2

    .line 163
    .line 164
    aput-object v7, v13, v5

    .line 165
    .line 166
    aput-object v9, v13, v11

    .line 167
    .line 168
    aput-object v10, v13, v8

    .line 169
    .line 170
    aput-object v12, v13, v14

    .line 171
    .line 172
    sput-object v13, Lcom/google/gson/FieldNamingPolicy;->$VALUES:[Lcom/google/gson/FieldNamingPolicy;

    .line 173
    .line 174
    return-void

    .line 175
    :array_0
    .array-data 8
        -0x5c561b3ca0f87945L    # -6.958001517858094E-137
        -0x2ec8152b8a636c77L    # -1.8149766871974552E83
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
    :array_1
    .array-data 8
        0x967a01c1b76fe5fL
        -0x28399edd11394fbaL    # -6.889021915793548E114
        0x7cefa1f9afa86ddfL    # 6.31338500092143E293
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
    .line 200
    .line 201
    .line 202
    .line 203
    :array_2
    .array-data 8
        0x3c427a835f22ea50L    # 2.0034502563814057E-18
        -0x2719315b9c52f6a2L
        -0x1adde101d7d844c9L    # -1.4686258581877606E179
        -0x139f5dffa8361d93L    # -1.119883285749849E214
        0x7903e773b27ce2d4L
    .end array-data

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
    :array_3
    .array-data 8
        0x17f1f0e6fdfb545cL    # 2.457706598782955E-193
        0x42d3a10bd5467c6eL    # 8.632963675595372E13
        -0x2006c0d30f954050L    # -2.1156498121185608E154
        -0x1180ee323fdfee02L    # -1.7969322167928744E224
        -0x4b8beb4160208c8L
    .end array-data

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
    :array_4
    .array-data 8
        -0x9076c1ed214c87cL
        -0x2923b11b17e5ab46L    # -2.6593186786149025E110
        -0x608ef61338ca5b98L    # -3.102562165996243E-157
        -0x34da4c34e42569caL    # -1.0393345461326535E54
        0x2af33d3c426bc4fbL    # 8.589907757807794E-102
    .end array-data

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
    :array_5
    .array-data 8
        0x664d8ec7739c4179L    # 6.2796935428400815E184
        -0x3664cd2f5db065dbL    # -3.8818990664799205E46
        -0x1c00d411f245731dL    # -4.818552893428137E173
        -0x6d273afde71d2f18L
    .end array-data

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
    :array_6
    .array-data 8
        0x4c13a3caf1d7c556L    # 3.0820279895820766E58
        0x279dbd6b5632bba3L    # 7.370916490922902E-118
        -0x641044d3c195b946L
        0x4a5486936ee5e1ffL    # 1.199933015201166E50
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

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/gson/FieldNamingPolicy$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static separateCamelCase(Ljava/lang/String;C)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_2

    .line 18
    .line 19
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    add-int/2addr v2, v3

    .line 69
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/FieldNamingPolicy;
    .locals 1

    .line 1
    const-class v0, Lcom/google/gson/FieldNamingPolicy;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/gson/FieldNamingPolicy;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/gson/FieldNamingPolicy;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/gson/FieldNamingPolicy;->$VALUES:[Lcom/google/gson/FieldNamingPolicy;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/gson/FieldNamingPolicy;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/gson/FieldNamingPolicy;

    .line 8
    .line 9
    return-object v0
.end method
