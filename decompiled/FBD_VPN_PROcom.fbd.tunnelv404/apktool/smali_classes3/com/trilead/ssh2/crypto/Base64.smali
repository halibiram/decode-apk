.class public Lcom/trilead/ssh2/crypto/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/trilead/ssh2/crypto/Base64;->alphabet:[C

    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x178a76a8c65d9de8L    # -1.572143103389119E195
        -0x6a1d20f033c2c9d1L
        0x75fec7818e435076L    # 2.3662209790329468E260
        -0x68fc3c2df2a82023L    # -8.262814515454212E-198
        -0x378e370607070c42L    # -9.6831100295877E40
        -0x86a329cef6fc0e4L
        0x378a97fd16615d4eL    # 3.81600960087833E-41
        -0x7db1fa5682a02efdL
        -0x49d4e683cb014437L    # -9.271132787810679E-48
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

.method public static decode([C)[B
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v3, 0x41

    .line 4
    .line 5
    const/16 v4, 0xa

    .line 6
    .line 7
    const/4 v5, 0x2

    .line 8
    const/16 v6, 0x3f

    .line 9
    .line 10
    const/4 v7, 0x1

    .line 11
    const/4 v8, 0x4

    .line 12
    new-array v9, v8, [B

    .line 13
    .line 14
    array-length v10, v0

    .line 15
    new-array v10, v10, [B

    .line 16
    .line 17
    array-length v11, v0

    .line 18
    const/4 v12, 0x0

    .line 19
    const/4 v13, 0x0

    .line 20
    const/4 v14, 0x0

    .line 21
    const/4 v15, 0x0

    .line 22
    :goto_0
    if-ge v13, v11, :cond_d

    .line 23
    .line 24
    aget-char v1, v0, v13

    .line 25
    .line 26
    if-eq v1, v4, :cond_c

    .line 27
    .line 28
    const/16 v4, 0xd

    .line 29
    .line 30
    if-eq v1, v4, :cond_a

    .line 31
    .line 32
    const/16 v4, 0x20

    .line 33
    .line 34
    if-eq v1, v4, :cond_a

    .line 35
    .line 36
    const/16 v4, 0x9

    .line 37
    .line 38
    if-ne v1, v4, :cond_0

    .line 39
    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_0
    const/16 v4, 0x40

    .line 43
    .line 44
    if-lt v1, v3, :cond_1

    .line 45
    .line 46
    const/16 v2, 0x5a

    .line 47
    .line 48
    if-gt v1, v2, :cond_1

    .line 49
    .line 50
    add-int/lit8 v2, v14, 0x1

    .line 51
    .line 52
    sub-int/2addr v1, v3

    .line 53
    int-to-byte v1, v1

    .line 54
    aput-byte v1, v9, v14

    .line 55
    .line 56
    :goto_1
    move v14, v2

    .line 57
    goto :goto_3

    .line 58
    :cond_1
    const/16 v2, 0x61

    .line 59
    .line 60
    if-lt v1, v2, :cond_2

    .line 61
    .line 62
    const/16 v2, 0x7a

    .line 63
    .line 64
    if-gt v1, v2, :cond_2

    .line 65
    .line 66
    add-int/lit8 v2, v14, 0x1

    .line 67
    .line 68
    add-int/lit8 v1, v1, -0x47

    .line 69
    .line 70
    int-to-byte v1, v1

    .line 71
    aput-byte v1, v9, v14

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/16 v2, 0x30

    .line 75
    .line 76
    if-lt v1, v2, :cond_3

    .line 77
    .line 78
    const/16 v2, 0x39

    .line 79
    .line 80
    if-gt v1, v2, :cond_3

    .line 81
    .line 82
    add-int/lit8 v2, v14, 0x1

    .line 83
    .line 84
    add-int/lit8 v1, v1, 0x4

    .line 85
    .line 86
    int-to-byte v1, v1

    .line 87
    aput-byte v1, v9, v14

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const/16 v2, 0x2b

    .line 91
    .line 92
    if-ne v1, v2, :cond_4

    .line 93
    .line 94
    add-int/lit8 v1, v14, 0x1

    .line 95
    .line 96
    const/16 v2, 0x3e

    .line 97
    .line 98
    aput-byte v2, v9, v14

    .line 99
    .line 100
    :goto_2
    move v14, v1

    .line 101
    goto :goto_3

    .line 102
    :cond_4
    const/16 v2, 0x2f

    .line 103
    .line 104
    if-ne v1, v2, :cond_5

    .line 105
    .line 106
    add-int/lit8 v1, v14, 0x1

    .line 107
    .line 108
    aput-byte v6, v9, v14

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_5
    const/16 v2, 0x3d

    .line 112
    .line 113
    if-ne v1, v2, :cond_b

    .line 114
    .line 115
    add-int/lit8 v1, v14, 0x1

    .line 116
    .line 117
    aput-byte v4, v9, v14

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :goto_3
    if-ne v14, v8, :cond_a

    .line 121
    .line 122
    aget-byte v1, v9, v12

    .line 123
    .line 124
    if-ne v1, v4, :cond_6

    .line 125
    .line 126
    goto/16 :goto_6

    .line 127
    .line 128
    :cond_6
    aget-byte v2, v9, v7

    .line 129
    .line 130
    if-eq v2, v4, :cond_9

    .line 131
    .line 132
    aget-byte v14, v9, v5

    .line 133
    .line 134
    if-ne v14, v4, :cond_7

    .line 135
    .line 136
    and-int/lit8 v0, v1, 0x3f

    .line 137
    .line 138
    shl-int/lit8 v0, v0, 0x6

    .line 139
    .line 140
    and-int/lit8 v1, v2, 0x3f

    .line 141
    .line 142
    or-int/2addr v0, v1

    .line 143
    add-int/2addr v7, v15

    .line 144
    shr-int/2addr v0, v8

    .line 145
    int-to-byte v0, v0

    .line 146
    aput-byte v0, v10, v15

    .line 147
    .line 148
    move v15, v7

    .line 149
    goto/16 :goto_6

    .line 150
    .line 151
    :cond_7
    const/16 v16, 0x3

    .line 152
    .line 153
    aget-byte v3, v9, v16

    .line 154
    .line 155
    if-ne v3, v4, :cond_8

    .line 156
    .line 157
    and-int/lit8 v0, v1, 0x3f

    .line 158
    .line 159
    shl-int/lit8 v0, v0, 0xc

    .line 160
    .line 161
    and-int/lit8 v1, v2, 0x3f

    .line 162
    .line 163
    shl-int/lit8 v1, v1, 0x6

    .line 164
    .line 165
    or-int/2addr v0, v1

    .line 166
    and-int/lit8 v1, v14, 0x3f

    .line 167
    .line 168
    or-int/2addr v0, v1

    .line 169
    add-int/2addr v7, v15

    .line 170
    const/16 v4, 0xa

    .line 171
    .line 172
    shr-int/lit8 v1, v0, 0xa

    .line 173
    .line 174
    int-to-byte v1, v1

    .line 175
    aput-byte v1, v10, v15

    .line 176
    .line 177
    add-int/2addr v15, v5

    .line 178
    shr-int/2addr v0, v5

    .line 179
    int-to-byte v0, v0

    .line 180
    aput-byte v0, v10, v7

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_8
    const/16 v4, 0xa

    .line 184
    .line 185
    and-int/2addr v1, v6

    .line 186
    shl-int/lit8 v1, v1, 0x12

    .line 187
    .line 188
    and-int/2addr v2, v6

    .line 189
    shl-int/lit8 v2, v2, 0xc

    .line 190
    .line 191
    or-int/2addr v1, v2

    .line 192
    and-int/lit8 v2, v14, 0x3f

    .line 193
    .line 194
    shl-int/lit8 v2, v2, 0x6

    .line 195
    .line 196
    or-int/2addr v1, v2

    .line 197
    and-int/lit8 v2, v3, 0x3f

    .line 198
    .line 199
    or-int/2addr v1, v2

    .line 200
    add-int/lit8 v2, v15, 0x1

    .line 201
    .line 202
    shr-int/lit8 v3, v1, 0x10

    .line 203
    .line 204
    int-to-byte v3, v3

    .line 205
    aput-byte v3, v10, v15

    .line 206
    .line 207
    add-int/lit8 v3, v15, 0x2

    .line 208
    .line 209
    shr-int/lit8 v14, v1, 0x8

    .line 210
    .line 211
    int-to-byte v14, v14

    .line 212
    aput-byte v14, v10, v2

    .line 213
    .line 214
    const/4 v2, 0x3

    .line 215
    add-int/2addr v15, v2

    .line 216
    int-to-byte v1, v1

    .line 217
    aput-byte v1, v10, v3

    .line 218
    .line 219
    const/4 v3, 0x5

    .line 220
    const/4 v14, 0x0

    .line 221
    goto :goto_5

    .line 222
    :cond_9
    new-instance v0, Ljava/io/IOException;

    .line 223
    .line 224
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    const/4 v3, 0x5

    .line 227
    new-array v2, v3, [J

    .line 228
    .line 229
    fill-array-data v2, :array_0

    .line 230
    .line 231
    .line 232
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v0

    .line 243
    :cond_a
    :goto_4
    const/4 v2, 0x3

    .line 244
    const/4 v3, 0x5

    .line 245
    const/16 v4, 0xa

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_b
    const/4 v3, 0x5

    .line 249
    new-instance v0, Ljava/io/IOException;

    .line 250
    .line 251
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 252
    .line 253
    new-array v2, v3, [J

    .line 254
    .line 255
    fill-array-data v2, :array_1

    .line 256
    .line 257
    .line 258
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v0

    .line 269
    :cond_c
    const/4 v2, 0x3

    .line 270
    const/4 v3, 0x5

    .line 271
    :goto_5
    add-int/2addr v13, v7

    .line 272
    const/16 v3, 0x41

    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_d
    :goto_6
    new-array v0, v15, [B

    .line 277
    .line 278
    invoke-static {v10, v12, v0, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    .line 280
    .line 281
    return-object v0

    .line 282
    nop

    .line 283
    :array_0
    .array-data 8
        0x5b15536f61e8e8f4L    # 5.912972740149531E130
        0x251779930c0d4c9cL
        -0x5f7dc918cffde5bL    # -6.846278190190066E279
        -0x1f906aeb2d073511L    # -3.387600555020601E156
        -0x6564121e295f1092L    # -1.6826799903979774E-180
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
    :array_1
    .array-data 8
        -0x4fe318f5ede54aeL
        -0xac72b7ca30edbb2L
        -0x4c98f1cf97e7387aL    # -4.483570906968103E-61
        0x44ca12fb93655c11L    # 2.4626339578461748E23
        0x5a13010fbafbe849L    # 8.040194770010783E125
    .end array-data
.end method

.method public static encode([B)[C
    .locals 9

    .line 1
    new-instance v0, Ljava/io/CharArrayWriter;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    mul-int/lit8 v1, v1, 0x4

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    div-int/2addr v1, v2

    .line 8
    invoke-direct {v0, v1}, Ljava/io/CharArrayWriter;-><init>(I)V

    .line 9
    .line 10
    .line 11
    array-length v1, p0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    :goto_0
    const/4 v7, 0x1

    .line 17
    if-ge v4, v1, :cond_3

    .line 18
    .line 19
    aget-byte v8, p0, v4

    .line 20
    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    and-int/lit16 v6, v8, 0xff

    .line 24
    .line 25
    shl-int/lit8 v6, v6, 0x10

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    if-ne v5, v7, :cond_1

    .line 29
    .line 30
    and-int/lit16 v7, v8, 0xff

    .line 31
    .line 32
    shl-int/lit8 v7, v7, 0x8

    .line 33
    .line 34
    :goto_1
    or-int/2addr v6, v7

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    and-int/lit16 v7, v8, 0xff

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 40
    .line 41
    if-ne v5, v2, :cond_2

    .line 42
    .line 43
    sget-object v5, Lcom/trilead/ssh2/crypto/Base64;->alphabet:[C

    .line 44
    .line 45
    shr-int/lit8 v7, v6, 0x12

    .line 46
    .line 47
    aget-char v7, v5, v7

    .line 48
    .line 49
    invoke-virtual {v0, v7}, Ljava/io/CharArrayWriter;->write(I)V

    .line 50
    .line 51
    .line 52
    shr-int/lit8 v7, v6, 0xc

    .line 53
    .line 54
    and-int/lit8 v7, v7, 0x3f

    .line 55
    .line 56
    aget-char v7, v5, v7

    .line 57
    .line 58
    invoke-virtual {v0, v7}, Ljava/io/CharArrayWriter;->write(I)V

    .line 59
    .line 60
    .line 61
    shr-int/lit8 v7, v6, 0x6

    .line 62
    .line 63
    and-int/lit8 v7, v7, 0x3f

    .line 64
    .line 65
    aget-char v7, v5, v7

    .line 66
    .line 67
    invoke-virtual {v0, v7}, Ljava/io/CharArrayWriter;->write(I)V

    .line 68
    .line 69
    .line 70
    and-int/lit8 v7, v6, 0x3f

    .line 71
    .line 72
    aget-char v5, v5, v7

    .line 73
    .line 74
    invoke-virtual {v0, v5}, Ljava/io/CharArrayWriter;->write(I)V

    .line 75
    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const/16 p0, 0x3d

    .line 82
    .line 83
    if-ne v5, v7, :cond_4

    .line 84
    .line 85
    sget-object v1, Lcom/trilead/ssh2/crypto/Base64;->alphabet:[C

    .line 86
    .line 87
    shr-int/lit8 v2, v6, 0x12

    .line 88
    .line 89
    aget-char v2, v1, v2

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write(I)V

    .line 92
    .line 93
    .line 94
    shr-int/lit8 v2, v6, 0xc

    .line 95
    .line 96
    and-int/lit8 v2, v2, 0x3f

    .line 97
    .line 98
    aget-char v1, v1, v2

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/io/CharArrayWriter;->write(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p0}, Ljava/io/CharArrayWriter;->write(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p0}, Ljava/io/CharArrayWriter;->write(I)V

    .line 107
    .line 108
    .line 109
    :cond_4
    const/4 v1, 0x2

    .line 110
    if-ne v5, v1, :cond_5

    .line 111
    .line 112
    sget-object v1, Lcom/trilead/ssh2/crypto/Base64;->alphabet:[C

    .line 113
    .line 114
    shr-int/lit8 v2, v6, 0x12

    .line 115
    .line 116
    aget-char v2, v1, v2

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write(I)V

    .line 119
    .line 120
    .line 121
    shr-int/lit8 v2, v6, 0xc

    .line 122
    .line 123
    and-int/lit8 v2, v2, 0x3f

    .line 124
    .line 125
    aget-char v2, v1, v2

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write(I)V

    .line 128
    .line 129
    .line 130
    shr-int/lit8 v2, v6, 0x6

    .line 131
    .line 132
    and-int/lit8 v2, v2, 0x3f

    .line 133
    .line 134
    aget-char v1, v1, v2

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/io/CharArrayWriter;->write(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p0}, Ljava/io/CharArrayWriter;->write(I)V

    .line 140
    .line 141
    .line 142
    :cond_5
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0
.end method
