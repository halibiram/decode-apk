.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/nio/charset/Charset;

.field public static final GB2312:Ljava/lang/String;

.field public static final GB2312_CHARSET:Ljava/nio/charset/Charset;

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field public static final SHIFT_JIS:Ljava/lang/String;

.field public static final SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 4

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
    sput-object v0, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v2, v1, [J

    .line 21
    .line 22
    fill-array-data v2, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/google/zxing/common/StringUtils;->GB2312:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v3, v1, [J

    .line 44
    .line 45
    fill-array-data v3, :array_2

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 56
    .line 57
    .line 58
    move-result-object v2
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-object v2, v0

    .line 61
    :goto_0
    sput-object v2, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    .line 62
    .line 63
    :try_start_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v3, v1, [J

    .line 66
    .line 67
    fill-array-data v3, :array_3

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 78
    .line 79
    .line 80
    move-result-object v2
    :try_end_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    goto :goto_1

    .line 82
    :catch_1
    move-object v2, v0

    .line 83
    :goto_1
    sput-object v2, Lcom/google/zxing/common/StringUtils;->GB2312_CHARSET:Ljava/nio/charset/Charset;

    .line 84
    .line 85
    :try_start_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    new-array v1, v1, [J

    .line 88
    .line 89
    fill-array-data v1, :array_4

    .line 90
    .line 91
    .line 92
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 100
    .line 101
    .line 102
    move-result-object v0
    :try_end_2
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 103
    goto :goto_2

    .line 104
    :catch_2
    nop

    .line 105
    :goto_2
    sput-object v0, Lcom/google/zxing/common/StringUtils;->EUC_JP:Ljava/nio/charset/Charset;

    .line 106
    .line 107
    sget-object v1, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    .line 108
    .line 109
    if-eqz v1, :cond_0

    .line 110
    .line 111
    sget-object v2, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_1

    .line 118
    .line 119
    :cond_0
    if-eqz v0, :cond_2

    .line 120
    .line 121
    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    :cond_1
    const/4 v0, 0x1

    .line 130
    goto :goto_3

    .line 131
    :cond_2
    const/4 v0, 0x0

    .line 132
    :goto_3
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    .line 133
    .line 134
    return-void

    .line 135
    :array_0
    .array-data 8
        0x64005479825e3733L    # 5.048625353621553E173
        0x517aa6e485af7aa0L    # 3.235991536878466E84
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_1
    .array-data 8
        0x3c6209ba379e43c5L    # 7.82273451739502E-18
        0x7013ffb420bc4febL    # 7.762141117443703E231
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_2
    .array-data 8
        -0xfb6abe9c402f893L    # -7.864579805546243E232
        -0x411ffb3e70f22ee2L    # -7.63825343750489E-6
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_3
    .array-data 8
        0x25c1e55433b227ceL    # 8.261584355921323E-127
        0x69a3da5181d9efcL
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_4
    .array-data 8
        0x5cf255cc5090bdc1L    # 5.458614762004204E139
        -0x66aaa06aa8a89bffL    # -1.228049159274091E-186
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

.method public static guessCharset([BLjava/util/Map;)Ljava/nio/charset/Charset;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/nio/charset/Charset;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    .line 8
    .line 9
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_0
    array-length v1, v0

    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    if-le v1, v2, :cond_3

    .line 33
    .line 34
    aget-byte v1, v0, v4

    .line 35
    .line 36
    const/4 v5, -0x2

    .line 37
    const/4 v6, -0x1

    .line 38
    if-ne v1, v5, :cond_1

    .line 39
    .line 40
    aget-byte v7, v0, v3

    .line 41
    .line 42
    if-eq v7, v6, :cond_2

    .line 43
    .line 44
    :cond_1
    if-ne v1, v6, :cond_3

    .line 45
    .line 46
    aget-byte v1, v0, v3

    .line 47
    .line 48
    if-ne v1, v5, :cond_3

    .line 49
    .line 50
    :cond_2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_3
    array-length v1, v0

    .line 54
    sget-object v5, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    .line 55
    .line 56
    if-eqz v5, :cond_4

    .line 57
    .line 58
    const/4 v5, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_4
    const/4 v5, 0x0

    .line 61
    :goto_0
    array-length v6, v0

    .line 62
    const/4 v7, 0x3

    .line 63
    if-le v6, v7, :cond_5

    .line 64
    .line 65
    aget-byte v6, v0, v4

    .line 66
    .line 67
    const/16 v8, -0x11

    .line 68
    .line 69
    if-ne v6, v8, :cond_5

    .line 70
    .line 71
    aget-byte v6, v0, v3

    .line 72
    .line 73
    const/16 v8, -0x45

    .line 74
    .line 75
    if-ne v6, v8, :cond_5

    .line 76
    .line 77
    aget-byte v6, v0, v2

    .line 78
    .line 79
    const/16 v8, -0x41

    .line 80
    .line 81
    if-ne v6, v8, :cond_5

    .line 82
    .line 83
    const/4 v6, 0x1

    .line 84
    goto :goto_1

    .line 85
    :cond_5
    const/4 v6, 0x0

    .line 86
    :goto_1
    move v8, v5

    .line 87
    const/4 v2, 0x0

    .line 88
    const/4 v5, 0x1

    .line 89
    const/4 v9, 0x0

    .line 90
    const/4 v10, 0x0

    .line 91
    const/4 v11, 0x0

    .line 92
    const/4 v12, 0x0

    .line 93
    const/4 v13, 0x0

    .line 94
    const/4 v14, 0x0

    .line 95
    const/4 v15, 0x0

    .line 96
    const/16 v16, 0x0

    .line 97
    .line 98
    const/16 v17, 0x0

    .line 99
    .line 100
    const/16 v18, 0x0

    .line 101
    .line 102
    :goto_2
    if-ge v9, v1, :cond_6

    .line 103
    .line 104
    if-nez v3, :cond_7

    .line 105
    .line 106
    if-nez v8, :cond_7

    .line 107
    .line 108
    if-eqz v5, :cond_6

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_6
    move/from16 v19, v1

    .line 112
    .line 113
    goto/16 :goto_c

    .line 114
    .line 115
    :cond_7
    :goto_3
    aget-byte v7, v0, v9

    .line 116
    .line 117
    and-int/lit16 v0, v7, 0xff

    .line 118
    .line 119
    if-eqz v5, :cond_a

    .line 120
    .line 121
    if-lez v10, :cond_b

    .line 122
    .line 123
    and-int/lit16 v7, v7, 0x80

    .line 124
    .line 125
    if-nez v7, :cond_9

    .line 126
    .line 127
    move/from16 v19, v1

    .line 128
    .line 129
    :cond_8
    :goto_4
    const/4 v5, 0x0

    .line 130
    goto :goto_6

    .line 131
    :cond_9
    add-int/lit8 v10, v10, -0x1

    .line 132
    .line 133
    :cond_a
    move/from16 v19, v1

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_b
    move/from16 v19, v1

    .line 137
    .line 138
    and-int/lit16 v1, v7, 0x80

    .line 139
    .line 140
    if-eqz v1, :cond_f

    .line 141
    .line 142
    and-int/lit8 v1, v7, 0x40

    .line 143
    .line 144
    if-nez v1, :cond_c

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_c
    add-int/lit8 v1, v10, 0x1

    .line 148
    .line 149
    and-int/lit8 v20, v7, 0x20

    .line 150
    .line 151
    if-nez v20, :cond_d

    .line 152
    .line 153
    add-int/lit8 v12, v12, 0x1

    .line 154
    .line 155
    :goto_5
    move v10, v1

    .line 156
    goto :goto_6

    .line 157
    :cond_d
    add-int/lit8 v1, v10, 0x2

    .line 158
    .line 159
    and-int/lit8 v20, v7, 0x10

    .line 160
    .line 161
    if-nez v20, :cond_e

    .line 162
    .line 163
    add-int/lit8 v13, v13, 0x1

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_e
    add-int/lit8 v10, v10, 0x3

    .line 167
    .line 168
    and-int/lit8 v1, v7, 0x8

    .line 169
    .line 170
    if-nez v1, :cond_8

    .line 171
    .line 172
    add-int/lit8 v14, v14, 0x1

    .line 173
    .line 174
    :cond_f
    :goto_6
    const/16 v1, 0xa0

    .line 175
    .line 176
    const/16 v7, 0x7f

    .line 177
    .line 178
    if-eqz v3, :cond_12

    .line 179
    .line 180
    if-le v0, v7, :cond_10

    .line 181
    .line 182
    if-ge v0, v1, :cond_10

    .line 183
    .line 184
    const/4 v3, 0x0

    .line 185
    goto :goto_7

    .line 186
    :cond_10
    const/16 v1, 0x9f

    .line 187
    .line 188
    if-le v0, v1, :cond_12

    .line 189
    .line 190
    const/16 v1, 0xc0

    .line 191
    .line 192
    if-lt v0, v1, :cond_11

    .line 193
    .line 194
    const/16 v1, 0xd7

    .line 195
    .line 196
    if-eq v0, v1, :cond_11

    .line 197
    .line 198
    const/16 v1, 0xf7

    .line 199
    .line 200
    if-ne v0, v1, :cond_12

    .line 201
    .line 202
    :cond_11
    add-int/lit8 v16, v16, 0x1

    .line 203
    .line 204
    :cond_12
    :goto_7
    if-eqz v8, :cond_1b

    .line 205
    .line 206
    if-lez v11, :cond_15

    .line 207
    .line 208
    const/16 v1, 0x40

    .line 209
    .line 210
    if-lt v0, v1, :cond_14

    .line 211
    .line 212
    if-eq v0, v7, :cond_14

    .line 213
    .line 214
    const/16 v1, 0xfc

    .line 215
    .line 216
    if-le v0, v1, :cond_13

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_13
    add-int/lit8 v11, v11, -0x1

    .line 220
    .line 221
    goto :goto_b

    .line 222
    :cond_14
    :goto_8
    const/4 v8, 0x0

    .line 223
    goto :goto_b

    .line 224
    :cond_15
    const/16 v1, 0x80

    .line 225
    .line 226
    if-eq v0, v1, :cond_14

    .line 227
    .line 228
    const/16 v1, 0xa0

    .line 229
    .line 230
    if-eq v0, v1, :cond_14

    .line 231
    .line 232
    const/16 v7, 0xef

    .line 233
    .line 234
    if-le v0, v7, :cond_16

    .line 235
    .line 236
    goto :goto_8

    .line 237
    :cond_16
    if-le v0, v1, :cond_18

    .line 238
    .line 239
    const/16 v1, 0xe0

    .line 240
    .line 241
    if-ge v0, v1, :cond_18

    .line 242
    .line 243
    add-int/lit8 v2, v2, 0x1

    .line 244
    .line 245
    add-int/lit8 v0, v18, 0x1

    .line 246
    .line 247
    if-le v0, v15, :cond_17

    .line 248
    .line 249
    move v15, v0

    .line 250
    move/from16 v18, v15

    .line 251
    .line 252
    :goto_9
    const/16 v17, 0x0

    .line 253
    .line 254
    goto :goto_b

    .line 255
    :cond_17
    move/from16 v18, v0

    .line 256
    .line 257
    goto :goto_9

    .line 258
    :cond_18
    const/16 v1, 0x7f

    .line 259
    .line 260
    if-le v0, v1, :cond_1a

    .line 261
    .line 262
    add-int/lit8 v11, v11, 0x1

    .line 263
    .line 264
    add-int/lit8 v0, v17, 0x1

    .line 265
    .line 266
    if-le v0, v4, :cond_19

    .line 267
    .line 268
    move v4, v0

    .line 269
    move/from16 v17, v4

    .line 270
    .line 271
    :goto_a
    const/16 v18, 0x0

    .line 272
    .line 273
    goto :goto_b

    .line 274
    :cond_19
    move/from16 v17, v0

    .line 275
    .line 276
    goto :goto_a

    .line 277
    :cond_1a
    const/16 v17, 0x0

    .line 278
    .line 279
    goto :goto_a

    .line 280
    :cond_1b
    :goto_b
    add-int/lit8 v9, v9, 0x1

    .line 281
    .line 282
    move-object/from16 v0, p0

    .line 283
    .line 284
    move/from16 v1, v19

    .line 285
    .line 286
    const/4 v7, 0x3

    .line 287
    goto/16 :goto_2

    .line 288
    .line 289
    :goto_c
    if-eqz v5, :cond_1c

    .line 290
    .line 291
    if-lez v10, :cond_1c

    .line 292
    .line 293
    const/4 v5, 0x0

    .line 294
    :cond_1c
    if-eqz v8, :cond_1d

    .line 295
    .line 296
    if-lez v11, :cond_1d

    .line 297
    .line 298
    const/4 v8, 0x0

    .line 299
    :cond_1d
    if-eqz v5, :cond_1f

    .line 300
    .line 301
    if-nez v6, :cond_1e

    .line 302
    .line 303
    add-int/2addr v12, v13

    .line 304
    add-int/2addr v12, v14

    .line 305
    if-lez v12, :cond_1f

    .line 306
    .line 307
    :cond_1e
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 308
    .line 309
    return-object v0

    .line 310
    :cond_1f
    if-eqz v8, :cond_21

    .line 311
    .line 312
    sget-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    .line 313
    .line 314
    if-nez v0, :cond_20

    .line 315
    .line 316
    const/4 v0, 0x3

    .line 317
    if-ge v15, v0, :cond_20

    .line 318
    .line 319
    if-lt v4, v0, :cond_21

    .line 320
    .line 321
    :cond_20
    sget-object v0, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    .line 322
    .line 323
    return-object v0

    .line 324
    :cond_21
    if-eqz v3, :cond_25

    .line 325
    .line 326
    if-eqz v8, :cond_25

    .line 327
    .line 328
    const/4 v0, 0x2

    .line 329
    if-ne v15, v0, :cond_22

    .line 330
    .line 331
    if-eq v2, v0, :cond_23

    .line 332
    .line 333
    :cond_22
    mul-int/lit8 v0, v16, 0xa

    .line 334
    .line 335
    move/from16 v1, v19

    .line 336
    .line 337
    if-lt v0, v1, :cond_24

    .line 338
    .line 339
    :cond_23
    sget-object v0, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    .line 340
    .line 341
    goto :goto_d

    .line 342
    :cond_24
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 343
    .line 344
    :goto_d
    return-object v0

    .line 345
    :cond_25
    if-eqz v3, :cond_26

    .line 346
    .line 347
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 348
    .line 349
    return-object v0

    .line 350
    :cond_26
    if-eqz v8, :cond_27

    .line 351
    .line 352
    sget-object v0, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    .line 353
    .line 354
    return-object v0

    .line 355
    :cond_27
    if-eqz v5, :cond_28

    .line 356
    .line 357
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 358
    .line 359
    return-object v0

    .line 360
    :cond_28
    sget-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 361
    .line 362
    return-object v0
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, p1}, Lcom/google/zxing/common/StringUtils;->guessCharset([BLjava/util/Map;)Ljava/nio/charset/Charset;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    sget-object p1, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    new-array p1, v0, [J

    .line 17
    .line 18
    fill-array-data p1, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array p1, v0, [J

    .line 40
    .line 41
    fill-array-data p1, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_1
    sget-object p1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    const/4 p1, 0x3

    .line 63
    new-array p1, p1, [J

    .line 64
    .line 65
    fill-array-data p1, :array_2

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_2
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :array_0
    .array-data 8
        0x19619234b3144140L    # 2.019166136790993E-186
        -0x1212a373108a0f3fL    # -3.3166943148271625E221
    .end array-data

    .line 82
    :array_1
    .array-data 8
        0xb7a2d7a9a562084L
        -0x11d580f80b90d045L    # -4.788843608494259E222
    .end array-data

    :array_2
    .array-data 8
        -0x816154254ba91c8L    # -4.278683264332466E269
        -0x70aa04c12820f55dL    # -8.641702010383459E-235
        0x51e765ddfeac1f0bL    # 3.636352691988937E86
    .end array-data
.end method
