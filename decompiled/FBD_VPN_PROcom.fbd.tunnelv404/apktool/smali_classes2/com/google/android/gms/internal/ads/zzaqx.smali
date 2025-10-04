.class public final Lcom/google/android/gms/internal/ads/zzaqx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/lang/String;)J
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v4, 0x5

    .line 7
    new-array v4, v4, [J

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaqx;->zzd(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-wide v0

    .line 32
    :catch_0
    move-exception v3

    .line 33
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v5, v2, [J

    .line 36
    .line 37
    fill-array-data v5, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v6, 0x7

    .line 54
    new-array v6, v6, [J

    .line 55
    .line 56
    fill-array-data v6, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-nez v4, :cond_1

    .line 67
    .line 68
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v2, v2, [J

    .line 71
    .line 72
    fill-array-data v2, :array_3

    .line 73
    .line 74
    .line 75
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_0

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 90
    .line 91
    aput-object p0, v1, v0

    .line 92
    .line 93
    invoke-static {v3, v5, v1}, Lcom/google/android/gms/internal/ads/zzaqm;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 98
    .line 99
    aput-object p0, v1, v0

    .line 100
    .line 101
    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/zzaqm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :goto_1
    const-wide/16 v0, 0x0

    .line 105
    .line 106
    return-wide v0

    .line 107
    :array_0
    .array-data 8
        -0x1133478b98e5cce8L    # -5.315439282824784E225
        0x7d154b9ba42a8be7L    # 3.400168420545622E294
        -0x20a30454ff67cbcaL    # -2.371823385967822E151
        -0x31d85ff34e66eec6L    # -3.184669809569793E68
        -0x29d3f90a1289cf66L
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_1
    .array-data 8
        -0x2bdaed71c795f4c2L    # -2.2505274835452276E97
        -0x4081dcd150853e26L    # -0.007357771267991054
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_2
    .array-data 8
        -0x3153cce4208241e7L    # -9.731339518048755E70
        -0x7bfaf9da2b4f3016L
        0x3a88a3200510be41L    # 9.95088879562929E-27
        0x4469592bf9018ceaL    # 3.740752839369339E21
        -0x2618662cc8af49d5L    # -1.2481201625458169E125
        -0x34d8849038846d43L    # -1.1245727345388361E54
        0x4256f3de33dc8799L    # 3.943228250741187E11
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
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
    .line 172
    .line 173
    .line 174
    .line 175
    :array_3
    .array-data 8
        -0x10df6546f4e88679L    # -1.9667518412881928E227
        0x22dd8586ee1c9d4cL    # 9.683710201492502E-141
    .end array-data
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzapw;)Lcom/google/android/gms/internal/ads/zzapj;
    .locals 22
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v4

    .line 9
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzapw;->zzc:Ljava/util/Map;

    .line 10
    .line 11
    if-nez v6, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array v8, v3, [J

    .line 18
    .line 19
    fill-array-data v8, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    check-cast v7, Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v7, :cond_1

    .line 36
    .line 37
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v10

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-wide/16 v10, 0x0

    .line 43
    .line 44
    :goto_0
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v12, v2, [J

    .line 47
    .line 48
    fill-array-data v12, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v7, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    check-cast v7, Ljava/lang/String;

    .line 63
    .line 64
    const/4 v12, 0x0

    .line 65
    if-eqz v7, :cond_8

    .line 66
    .line 67
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v14, v3, [J

    .line 70
    .line 71
    fill-array-data v14, :array_2

    .line 72
    .line 73
    .line 74
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    invoke-virtual {v7, v13, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    const/4 v13, 0x0

    .line 86
    const-wide/16 v14, 0x0

    .line 87
    .line 88
    const-wide/16 v16, 0x0

    .line 89
    .line 90
    :goto_1
    array-length v8, v7

    .line 91
    if-ge v12, v8, :cond_7

    .line 92
    .line 93
    aget-object v8, v7, v12

    .line 94
    .line 95
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v1, v3, [J

    .line 102
    .line 103
    fill-array-data v1, :array_3

    .line 104
    .line 105
    .line 106
    invoke-direct {v9, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_6

    .line 118
    .line 119
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v9, v3, [J

    .line 122
    .line 123
    fill-array-data v9, :array_4

    .line 124
    .line 125
    .line 126
    invoke-direct {v1, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_6

    .line 138
    .line 139
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    new-array v9, v3, [J

    .line 142
    .line 143
    fill-array-data v9, :array_5

    .line 144
    .line 145
    .line 146
    invoke-direct {v1, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_3

    .line 158
    .line 159
    const/16 v1, 0x8

    .line 160
    .line 161
    :try_start_0
    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 166
    .line 167
    .line 168
    move-result-wide v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :catch_0
    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 170
    goto :goto_3

    .line 171
    :cond_3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 172
    .line 173
    const/4 v9, 0x4

    .line 174
    new-array v9, v9, [J

    .line 175
    .line 176
    fill-array-data v9, :array_6

    .line 177
    .line 178
    .line 179
    invoke-direct {v1, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_4

    .line 191
    .line 192
    const/16 v1, 0x17

    .line 193
    .line 194
    :try_start_1
    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 199
    .line 200
    .line 201
    move-result-wide v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    goto :goto_2

    .line 203
    :cond_4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 204
    .line 205
    new-array v9, v2, [J

    .line 206
    .line 207
    fill-array-data v9, :array_7

    .line 208
    .line 209
    .line 210
    invoke-direct {v1, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_5

    .line 222
    .line 223
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 224
    .line 225
    new-array v9, v2, [J

    .line 226
    .line 227
    fill-array-data v9, :array_8

    .line 228
    .line 229
    .line 230
    invoke-direct {v1, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_2

    .line 242
    .line 243
    :cond_5
    const/4 v1, 0x1

    .line 244
    const/4 v13, 0x1

    .line 245
    :goto_3
    add-int/2addr v12, v1

    .line 246
    goto/16 :goto_1

    .line 247
    .line 248
    :cond_6
    :goto_4
    const/4 v0, 0x0

    .line 249
    return-object v0

    .line 250
    :cond_7
    const/4 v1, 0x1

    .line 251
    move v12, v13

    .line 252
    goto :goto_5

    .line 253
    :cond_8
    const/4 v1, 0x0

    .line 254
    const-wide/16 v14, 0x0

    .line 255
    .line 256
    const-wide/16 v16, 0x0

    .line 257
    .line 258
    :goto_5
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 259
    .line 260
    new-array v8, v3, [J

    .line 261
    .line 262
    fill-array-data v8, :array_9

    .line 263
    .line 264
    .line 265
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    check-cast v7, Ljava/lang/String;

    .line 277
    .line 278
    if-eqz v7, :cond_9

    .line 279
    .line 280
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;)J

    .line 281
    .line 282
    .line 283
    move-result-wide v7

    .line 284
    goto :goto_6

    .line 285
    :cond_9
    const-wide/16 v7, 0x0

    .line 286
    .line 287
    :goto_6
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 288
    .line 289
    new-array v2, v2, [J

    .line 290
    .line 291
    fill-array-data v2, :array_a

    .line 292
    .line 293
    .line 294
    invoke-direct {v9, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    check-cast v2, Ljava/lang/String;

    .line 306
    .line 307
    if-eqz v2, :cond_a

    .line 308
    .line 309
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;)J

    .line 310
    .line 311
    .line 312
    move-result-wide v18

    .line 313
    move-wide/from16 v20, v18

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_a
    const-wide/16 v20, 0x0

    .line 317
    .line 318
    :goto_7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 319
    .line 320
    new-array v3, v3, [J

    .line 321
    .line 322
    fill-array-data v3, :array_b

    .line 323
    .line 324
    .line 325
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    check-cast v2, Ljava/lang/String;

    .line 337
    .line 338
    if-eqz v1, :cond_c

    .line 339
    .line 340
    const-wide/16 v7, 0x3e8

    .line 341
    .line 342
    mul-long v16, v16, v7

    .line 343
    .line 344
    add-long v3, v16, v4

    .line 345
    .line 346
    if-eqz v12, :cond_b

    .line 347
    .line 348
    move-wide v8, v3

    .line 349
    goto :goto_8

    .line 350
    :cond_b
    invoke-static {v14, v15}, Ljava/lang/Long;->signum(J)I

    .line 351
    .line 352
    .line 353
    mul-long v14, v14, v7

    .line 354
    .line 355
    add-long/2addr v14, v3

    .line 356
    move-wide v8, v14

    .line 357
    :goto_8
    move-wide v12, v8

    .line 358
    move-wide v8, v3

    .line 359
    goto :goto_9

    .line 360
    :cond_c
    const-wide/16 v12, 0x0

    .line 361
    .line 362
    cmp-long v1, v10, v12

    .line 363
    .line 364
    if-lez v1, :cond_d

    .line 365
    .line 366
    cmp-long v1, v7, v10

    .line 367
    .line 368
    if-ltz v1, :cond_d

    .line 369
    .line 370
    sub-long/2addr v7, v10

    .line 371
    add-long v8, v7, v4

    .line 372
    .line 373
    move-wide v12, v8

    .line 374
    goto :goto_9

    .line 375
    :cond_d
    move-wide v8, v12

    .line 376
    :goto_9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapj;

    .line 377
    .line 378
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzapj;-><init>()V

    .line 379
    .line 380
    .line 381
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzapw;->zzb:[B

    .line 382
    .line 383
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzapj;->zza:[B

    .line 384
    .line 385
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzapj;->zzb:Ljava/lang/String;

    .line 386
    .line 387
    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzapj;->zzf:J

    .line 388
    .line 389
    iput-wide v12, v1, Lcom/google/android/gms/internal/ads/zzapj;->zze:J

    .line 390
    .line 391
    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzapj;->zzc:J

    .line 392
    .line 393
    move-wide/from16 v2, v20

    .line 394
    .line 395
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzapj;->zzd:J

    .line 396
    .line 397
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzapj;->zzg:Ljava/util/Map;

    .line 398
    .line 399
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzapw;->zzd:Ljava/util/List;

    .line 400
    .line 401
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzapj;->zzh:Ljava/util/List;

    .line 402
    .line 403
    return-object v1

    .line 404
    nop

    .line 405
    :array_0
    .array-data 8
        0x43a8c709b381eee6L    # 8.9270322192970214E17
        -0x7cc208c2f76f36e1L    # -4.691910799351833E-293
    .end array-data

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    :array_1
    .array-data 8
        -0x669e6538eb1ada5L
        -0x78e2396df3b31b90L
        -0x326f03ff34751a2cL    # -4.471661828663916E65
    .end array-data

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    :array_2
    .array-data 8
        -0x3c1b0c497051d5b9L    # -1.2078008226542664E19
        -0x4e31c06a662c639fL    # -8.765426881391112E-69
    .end array-data

    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    :array_3
    .array-data 8
        0x38154834fb9cc2c9L    # 1.563558717930903E-38
        0x3b83d3b8af1d3175L    # 5.248172943777198E-22
    .end array-data

    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    :array_4
    .array-data 8
        0x5c06f6e350acd8cL
        0x31f4a2ac7c2894c2L    # 4.783819833480626E-68
    .end array-data

    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    :array_5
    .array-data 8
        -0x5ea9fe5bcc0ee8bcL    # -4.302604006361775E-148
        0x4ce6db5722a1252cL    # 2.9383567043507966E62
    .end array-data

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    :array_6
    .array-data 8
        0x2190b3e3717aa57dL    # 5.225026845240007E-147
        0x3e80589f325ba91dL    # 1.2178852520163784E-7
        -0x269b6909a3f845f5L    # -4.253419332635642E122
        -0x2de88cde1565594eL    # -2.9155246841274085E87
    .end array-data

    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    :array_7
    .array-data 8
        -0x69d21903bd4c7855L    # -7.629873175765139E-202
        0x143e6ed178722633L
        0x1309e34ac047f0bL
    .end array-data

    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    :array_8
    .array-data 8
        0x395df27739d7a28cL    # 2.30704311093801E-32
        0x3a1d7cf3305eb6fdL    # 9.304799213129729E-29
        0x17c59ed80b045b99L    # 3.702185865786121E-194
    .end array-data

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    :array_9
    .array-data 8
        0x3c92f04f1b4aff31L    # 6.570683952184974E-17
        0x3b21ee22ab322c8eL    # 7.415763735040449E-24
    .end array-data

    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    :array_a
    .array-data 8
        0x440d32ee6ab2be73L    # 6.732819577498281E19
        0x260e83d08b7c00ddL
        0x5df4adc0c4ece18aL    # 4.0346107833486375E144
    .end array-data

    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    :array_b
    .array-data 8
        0x59bdc8e2925ce81bL    # 1.9689358479997638E124
        0x877cbb9a6f1971L
    .end array-data
.end method

.method public static zzc(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

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
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzd(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Ljava/util/Date;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0xde2489507be6016L
        0x4e61095ff0fff3f1L    # 3.674450975772698E69
        0x26fb913cf17d44dbL    # 6.672315198164806E-121
        -0x58f56fe4011a5537L
        -0x59201b07d941b77aL
    .end array-data
.end method

.method private static zzd(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :array_0
    .array-data 8
        -0xb9e37557a36a52aL    # -4.074480222596269E252
        0x6ea8dd0510a2ff60L    # 1.1503939021179793E225
    .end array-data
.end method
