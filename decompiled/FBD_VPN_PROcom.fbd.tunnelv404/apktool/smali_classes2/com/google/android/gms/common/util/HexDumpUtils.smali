.class public final Lcom/google/android/gms/common/util/HexDumpUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([BIIZ)Ljava/lang/String;
    .locals 16
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    if-eqz v0, :cond_e

    .line 11
    .line 12
    array-length v6, v0

    .line 13
    if-eqz v6, :cond_e

    .line 14
    .line 15
    if-ltz p1, :cond_e

    .line 16
    .line 17
    if-lez v1, :cond_e

    .line 18
    .line 19
    add-int v7, p1, v1

    .line 20
    .line 21
    if-le v7, v6, :cond_0

    .line 22
    .line 23
    goto/16 :goto_6

    .line 24
    .line 25
    :cond_0
    if-eqz p3, :cond_1

    .line 26
    .line 27
    const/16 v6, 0x4b

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/16 v6, 0x39

    .line 31
    .line 32
    :goto_0
    add-int/lit8 v7, v1, 0xf

    .line 33
    .line 34
    new-instance v8, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    div-int/2addr v7, v2

    .line 37
    mul-int v7, v7, v6

    .line 38
    .line 39
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    .line 41
    .line 42
    move/from16 v6, p1

    .line 43
    .line 44
    move v7, v1

    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v10, 0x0

    .line 47
    :goto_1
    if-lez v7, :cond_d

    .line 48
    .line 49
    const/16 v11, 0x8

    .line 50
    .line 51
    if-nez v9, :cond_3

    .line 52
    .line 53
    const/high16 v10, 0x10000

    .line 54
    .line 55
    if-ge v1, v10, :cond_2

    .line 56
    .line 57
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    new-array v12, v5, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object v10, v12, v3

    .line 64
    .line 65
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v13, v4, [J

    .line 68
    .line 69
    fill-array-data v13, :array_0

    .line 70
    .line 71
    .line 72
    invoke-direct {v10, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    new-array v12, v5, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object v10, v12, v3

    .line 94
    .line 95
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array v13, v4, [J

    .line 98
    .line 99
    fill-array-data v13, :array_1

    .line 100
    .line 101
    .line 102
    invoke-direct {v10, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    :goto_2
    move v10, v6

    .line 117
    goto :goto_3

    .line 118
    :cond_3
    if-ne v9, v11, :cond_4

    .line 119
    .line 120
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v13, v4, [J

    .line 123
    .line 124
    fill-array-data v13, :array_2

    .line 125
    .line 126
    .line 127
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_3
    aget-byte v12, v0, v6

    .line 138
    .line 139
    and-int/lit16 v12, v12, 0xff

    .line 140
    .line 141
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    new-array v13, v5, [Ljava/lang/Object;

    .line 146
    .line 147
    aput-object v12, v13, v3

    .line 148
    .line 149
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v14, v4, [J

    .line 152
    .line 153
    fill-array-data v14, :array_3

    .line 154
    .line 155
    .line 156
    invoke-direct {v12, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    add-int/lit8 v7, v7, -0x1

    .line 171
    .line 172
    add-int/2addr v9, v5

    .line 173
    if-eqz p3, :cond_a

    .line 174
    .line 175
    if-eq v9, v2, :cond_5

    .line 176
    .line 177
    if-nez v7, :cond_a

    .line 178
    .line 179
    :cond_5
    rsub-int/lit8 v12, v9, 0x10

    .line 180
    .line 181
    if-lez v12, :cond_6

    .line 182
    .line 183
    const/4 v13, 0x0

    .line 184
    :goto_4
    if-ge v13, v12, :cond_6

    .line 185
    .line 186
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 187
    .line 188
    new-array v15, v4, [J

    .line 189
    .line 190
    fill-array-data v15, :array_4

    .line 191
    .line 192
    .line 193
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v14

    .line 200
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    add-int/2addr v13, v5

    .line 204
    goto :goto_4

    .line 205
    :cond_6
    if-lt v12, v11, :cond_7

    .line 206
    .line 207
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 208
    .line 209
    new-array v12, v4, [J

    .line 210
    .line 211
    fill-array-data v12, :array_5

    .line 212
    .line 213
    .line 214
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    :cond_7
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    new-array v12, v4, [J

    .line 227
    .line 228
    fill-array-data v12, :array_6

    .line 229
    .line 230
    .line 231
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v11

    .line 238
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const/4 v11, 0x0

    .line 242
    :goto_5
    if-ge v11, v9, :cond_a

    .line 243
    .line 244
    add-int v12, v10, v11

    .line 245
    .line 246
    aget-byte v12, v0, v12

    .line 247
    .line 248
    int-to-char v12, v12

    .line 249
    const/16 v13, 0x20

    .line 250
    .line 251
    const/16 v14, 0x2e

    .line 252
    .line 253
    if-lt v12, v13, :cond_8

    .line 254
    .line 255
    const/16 v13, 0x7e

    .line 256
    .line 257
    if-le v12, v13, :cond_9

    .line 258
    .line 259
    :cond_8
    const/16 v12, 0x2e

    .line 260
    .line 261
    :cond_9
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    add-int/2addr v11, v5

    .line 265
    goto :goto_5

    .line 266
    :cond_a
    if-eq v9, v2, :cond_b

    .line 267
    .line 268
    if-nez v7, :cond_c

    .line 269
    .line 270
    :cond_b
    const/16 v9, 0xa

    .line 271
    .line 272
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const/4 v9, 0x0

    .line 276
    :cond_c
    add-int/2addr v6, v5

    .line 277
    goto/16 :goto_1

    .line 278
    .line 279
    :cond_d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    return-object v0

    .line 284
    :cond_e
    :goto_6
    const/4 v0, 0x0

    .line 285
    return-object v0

    .line 286
    nop

    .line 287
    :array_0
    .array-data 8
        -0x49ddd231d0fc0f8L    # -2.157504857362763E286
        -0x4f687d71293429bcL    # -1.2994320261152382E-74
    .end array-data

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
    :array_1
    .array-data 8
        0xdfaaac69db0b89fL
        0x31e00e82dca6a3a3L    # 1.8611735045134293E-68
    .end array-data

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
    :array_2
    .array-data 8
        -0x7f290e9bc2f8e89eL
        0x274c41dd492715deL
    .end array-data

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    :array_3
    .array-data 8
        -0x3e559718a378ee84L    # -2.2154129426380527E8
        -0x2743f63b305b3ea4L    # -2.828184904734207E119
    .end array-data

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    :array_4
    .array-data 8
        -0x23b00d4da6ea40aL
        0x735241c625109a68L    # 3.191274752865779E247
    .end array-data

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :array_5
    .array-data 8
        -0x9453f8a60b78406L    # -8.423821256332676E263
        0x232311dfad45135aL
    .end array-data

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    :array_6
    .array-data 8
        0x301e52e66e376aafL    # 6.547042373669683E-77
        0xa178cc8e419c25aL
    .end array-data
.end method
