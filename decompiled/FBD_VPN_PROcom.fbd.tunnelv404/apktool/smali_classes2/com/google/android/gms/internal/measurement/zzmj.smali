.class final Lcom/google/android/gms/internal/measurement/zzmj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/measurement/zzjb;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_4

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(I)B

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/16 v4, 0x22

    .line 23
    .line 24
    if-eq v3, v4, :cond_3

    .line 25
    .line 26
    const/16 v4, 0x27

    .line 27
    .line 28
    if-eq v3, v4, :cond_2

    .line 29
    .line 30
    const/16 v4, 0x5c

    .line 31
    .line 32
    if-eq v3, v4, :cond_1

    .line 33
    .line 34
    packed-switch v3, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    const/16 v5, 0x20

    .line 38
    .line 39
    if-lt v3, v5, :cond_0

    .line 40
    .line 41
    const/16 v5, 0x7e

    .line 42
    .line 43
    if-gt v3, v5, :cond_0

    .line 44
    .line 45
    int-to-char v3, v3

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    ushr-int/lit8 v4, v3, 0x6

    .line 55
    .line 56
    and-int/lit8 v4, v4, 0x3

    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x30

    .line 59
    .line 60
    int-to-char v4, v4

    .line 61
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    ushr-int/lit8 v4, v3, 0x3

    .line 65
    .line 66
    and-int/lit8 v4, v4, 0x7

    .line 67
    .line 68
    add-int/lit8 v4, v4, 0x30

    .line 69
    .line 70
    int-to-char v4, v4

    .line 71
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    and-int/lit8 v3, v3, 0x7

    .line 75
    .line 76
    add-int/lit8 v3, v3, 0x30

    .line 77
    .line 78
    int-to-char v3, v3

    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :pswitch_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v4, v0, [J

    .line 87
    .line 88
    fill-array-data v4, :array_0

    .line 89
    .line 90
    .line 91
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :pswitch_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array v4, v0, [J

    .line 106
    .line 107
    fill-array-data v4, :array_1

    .line 108
    .line 109
    .line 110
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :pswitch_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array v4, v0, [J

    .line 125
    .line 126
    fill-array-data v4, :array_2

    .line 127
    .line 128
    .line 129
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    goto/16 :goto_1

    .line 140
    .line 141
    :pswitch_3
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v4, v0, [J

    .line 144
    .line 145
    fill-array-data v4, :array_3

    .line 146
    .line 147
    .line 148
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :pswitch_4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    new-array v4, v0, [J

    .line 162
    .line 163
    fill-array-data v4, :array_4

    .line 164
    .line 165
    .line 166
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :pswitch_5
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    new-array v4, v0, [J

    .line 180
    .line 181
    fill-array-data v4, :array_5

    .line 182
    .line 183
    .line 184
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :pswitch_6
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 196
    .line 197
    new-array v4, v0, [J

    .line 198
    .line 199
    fill-array-data v4, :array_6

    .line 200
    .line 201
    .line 202
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 214
    .line 215
    new-array v4, v0, [J

    .line 216
    .line 217
    fill-array-data v4, :array_7

    .line 218
    .line 219
    .line 220
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 232
    .line 233
    new-array v4, v0, [J

    .line 234
    .line 235
    fill-array-data v4, :array_8

    .line 236
    .line 237
    .line 238
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_3
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 250
    .line 251
    new-array v4, v0, [J

    .line 252
    .line 253
    fill-array-data v4, :array_9

    .line 254
    .line 255
    .line 256
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 267
    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    return-object p0

    .line 275
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :array_0
    .array-data 8
        0x237e088ffd40c2aL
        -0x90b2cd4c29eb9f0L
    .end array-data

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
    :array_1
    .array-data 8
        0x2fe5cd37433e39d9L    # 5.883828246330817E-78
        -0x6cbf064bf4f4664cL    # -6.155356676106464E-216
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    :array_2
    .array-data 8
        -0x657c0888a2f0a898L    # -6.014757855844966E-181
        -0x433cc067b326fef9L    # -5.34250912021408E-16
    .end array-data

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_3
    .array-data 8
        0x736a0a111b800624L    # 9.103243224152122E247
        -0x3f7d0dd71adcac5cL    # -606.2699682960415
    .end array-data

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    :array_4
    .array-data 8
        0x67289395640fbb7aL    # 8.554749600436433E188
        0x224e9ba4908145edL
    .end array-data

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    :array_5
    .array-data 8
        -0x1ad4835cfbc9ff1fL    # -2.22767897671782E179
        0x1221cb64b6edab2bL
    .end array-data

    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :array_6
    .array-data 8
        -0x1fcfc8d6bf915e34L    # -2.174139501695565E155
        0x14c5303efa16df95L    # 1.288998541359916E-208
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :array_7
    .array-data 8
        0x1e651358578efe12L    # 2.927868773555062E-162
        0x7a6957d9ebde61a2L    # 4.600307710814588E281
    .end array-data

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :array_8
    .array-data 8
        -0x41e31f0ca4affb5cL    # -1.680962353036479E-9
        -0x3628fb86f6fef642L    # -5.2562613744104516E47
    .end array-data

    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    :array_9
    .array-data 8
        0x4b6f300a6161d84dL    # 2.3897473708141397E55
        -0x1a7d858c6328a82bL    # -9.584512993970636E180
    .end array-data
.end method
