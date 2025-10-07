.class public final Lcom/google/android/gms/ads/internal/client/zzy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:[Lcom/google/android/gms/ads/AdSize;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v1, Lcom/google/android/gms/ads/R$styleable;->AdsAttrs:[I

    .line 10
    .line 11
    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget p2, Lcom/google/android/gms/ads/R$styleable;->AdsAttrs_adSize:I

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    sget v1, Lcom/google/android/gms/ads/R$styleable;->AdsAttrs_adSizes:I

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/client/zzy;->zzc(Ljava/lang/String;)[Lcom/google/android/gms/ads/AdSize;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zza:[Lcom/google/android/gms/ads/AdSize;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    if-eqz v2, :cond_2

    .line 47
    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/client/zzy;->zzc(Ljava/lang/String;)[Lcom/google/android/gms/ads/AdSize;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zza:[Lcom/google/android/gms/ads/AdSize;

    .line 55
    .line 56
    :goto_0
    sget p2, Lcom/google/android/gms/ads/R$styleable;->AdsAttrs_adUnitId:I

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzb:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    .line 66
    .line 67
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_1

    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v0, v0, [J

    .line 79
    .line 80
    fill-array-data v0, :array_0

    .line 81
    .line 82
    .line 83
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_2
    if-nez v2, :cond_3

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    .line 98
    .line 99
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    const/16 v0, 0xe

    .line 104
    .line 105
    new-array v0, v0, [J

    .line 106
    .line 107
    fill-array-data v0, :array_1

    .line 108
    .line 109
    .line 110
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    .line 123
    .line 124
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 125
    .line 126
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v0, v0, [J

    .line 129
    .line 130
    fill-array-data v0, :array_2

    .line 131
    .line 132
    .line 133
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1

    .line 144
    nop

    .line 145
    :array_0
    .array-data 8
        -0x11ba397b0dba7168L    # -1.574252037777526E223
        -0x2e80fddfe360b90fL    # -3.7649290401709207E84
        0x24b5f622a7636e33L    # 7.735052053112344E-132
        0x2795ed7acaa49ff6L    # 5.434678981131961E-118
        0x1cb71f6216e7f16bL    # 2.393309971908946E-170
        0x1fbace63c11f67dL
        -0x787b22efefb5c5a3L    # -1.928331286970122E-272
    .end array-data

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
    .line 176
    .line 177
    :array_1
    .array-data 8
        0x378e10e7a94ed0f3L    # 4.314264421806354E-41
        -0xa398750794019a3L
        0x7ba5978f2dd620baL    # 4.109787065770112E287
        0x4ff046d7ce1651bcL    # 1.1779478885489306E77
        -0x280ac4337582e1ebL    # -5.229037729840037E115
        -0x1ad27c4158ae553aL    # -2.39201968655016E179
        -0x6c8d0d17e58f2853L    # -5.496750907759271E-215
        0x586265bf9caa5363L    # 5.799173092524875E117
        0x58b1360e9c4eb752L    # 1.7360748807479263E119
        -0x6765a428dc063617L    # -3.697494914582008E-190
        -0x441f1d7d7b2c2c1dL    # -2.8603970693017125E-20
        -0x5de9f83fe722c506L
        0x2d86af2d8141ae5cL    # 2.22718580951314E-89
        0x79a7de62a404bcd4L    # 1.0577782850074726E278
    .end array-data

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
    :array_2
    .array-data 8
        0x288fe3eed40c28f8L
        0x5e4330c40c326b06L
        -0x1e64a8e417fdfa29L    # -1.537518948715581E162
        -0x75bfa91a32a0eddL
        0x211ec6b6562fd60cL
        0xc1f01240197b9f4L
        0x638eff7645aa6132L
    .end array-data
.end method

.method private static zzc(Ljava/lang/String;)[Lcom/google/android/gms/ads/AdSize;
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x6

    .line 3
    const/4 v2, 0x3

    .line 4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v4, 0x2

    .line 7
    new-array v5, v4, [J

    .line 8
    .line 9
    fill-array-data v5, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    array-length v5, v3

    .line 24
    new-array v6, v5, [Lcom/google/android/gms/ads/AdSize;

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    :goto_0
    array-length v9, v3

    .line 29
    if-ge v8, v9, :cond_c

    .line 30
    .line 31
    aget-object v9, v3, v8

    .line 32
    .line 33
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v11, 0x7

    .line 40
    new-array v11, v11, [J

    .line 41
    .line 42
    fill-array-data v11, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    if-eqz v10, :cond_2

    .line 57
    .line 58
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v11, v4, [J

    .line 61
    .line 62
    fill-array-data v11, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    aget-object v11, v10, v7

    .line 77
    .line 78
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    aput-object v11, v10, v7

    .line 83
    .line 84
    aget-object v11, v10, v0

    .line 85
    .line 86
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    aput-object v11, v10, v0

    .line 91
    .line 92
    :try_start_0
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v12, v2, [J

    .line 95
    .line 96
    fill-array-data v12, :array_3

    .line 97
    .line 98
    .line 99
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    aget-object v12, v10, v7

    .line 107
    .line 108
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    if-eqz v11, :cond_0

    .line 113
    .line 114
    const/4 v11, -0x1

    .line 115
    goto :goto_1

    .line 116
    :cond_0
    aget-object v11, v10, v7

    .line 117
    .line 118
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    :goto_1
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array v13, v2, [J

    .line 125
    .line 126
    fill-array-data v13, :array_4

    .line 127
    .line 128
    .line 129
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    aget-object v13, v10, v0

    .line 137
    .line 138
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    if-eqz v12, :cond_1

    .line 143
    .line 144
    const/4 v9, -0x2

    .line 145
    goto :goto_2

    .line 146
    :cond_1
    aget-object v10, v10, v0

    .line 147
    .line 148
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_2
    new-instance v10, Lcom/google/android/gms/ads/AdSize;

    .line 153
    .line 154
    invoke-direct {v10, v11, v9}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 155
    .line 156
    .line 157
    aput-object v10, v6, v8

    .line 158
    .line 159
    goto/16 :goto_3

    .line 160
    .line 161
    :catch_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v0, v1, [J

    .line 164
    .line 165
    fill-array-data v0, :array_5

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 176
    .line 177
    invoke-virtual {p0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v0

    .line 185
    :cond_2
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 186
    .line 187
    new-array v11, v4, [J

    .line 188
    .line 189
    fill-array-data v11, :array_6

    .line 190
    .line 191
    .line 192
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    if-eqz v10, :cond_3

    .line 204
    .line 205
    sget-object v9, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 206
    .line 207
    aput-object v9, v6, v8

    .line 208
    .line 209
    goto/16 :goto_3

    .line 210
    .line 211
    :cond_3
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 212
    .line 213
    new-array v11, v2, [J

    .line 214
    .line 215
    fill-array-data v11, :array_7

    .line 216
    .line 217
    .line 218
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    if-eqz v10, :cond_4

    .line 230
    .line 231
    sget-object v9, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 232
    .line 233
    aput-object v9, v6, v8

    .line 234
    .line 235
    goto/16 :goto_3

    .line 236
    .line 237
    :cond_4
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 238
    .line 239
    new-array v11, v2, [J

    .line 240
    .line 241
    fill-array-data v11, :array_8

    .line 242
    .line 243
    .line 244
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    if-eqz v10, :cond_5

    .line 256
    .line 257
    sget-object v9, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 258
    .line 259
    aput-object v9, v6, v8

    .line 260
    .line 261
    goto/16 :goto_3

    .line 262
    .line 263
    :cond_5
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 264
    .line 265
    new-array v11, v2, [J

    .line 266
    .line 267
    fill-array-data v11, :array_9

    .line 268
    .line 269
    .line 270
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v10

    .line 277
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v10

    .line 281
    if-eqz v10, :cond_6

    .line 282
    .line 283
    sget-object v9, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    .line 284
    .line 285
    aput-object v9, v6, v8

    .line 286
    .line 287
    goto/16 :goto_3

    .line 288
    .line 289
    :cond_6
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 290
    .line 291
    new-array v11, v2, [J

    .line 292
    .line 293
    fill-array-data v11, :array_a

    .line 294
    .line 295
    .line 296
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v10

    .line 303
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v10

    .line 307
    if-eqz v10, :cond_7

    .line 308
    .line 309
    sget-object v9, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    .line 310
    .line 311
    aput-object v9, v6, v8

    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_7
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 315
    .line 316
    new-array v11, v2, [J

    .line 317
    .line 318
    fill-array-data v11, :array_b

    .line 319
    .line 320
    .line 321
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v10

    .line 328
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v10

    .line 332
    if-eqz v10, :cond_8

    .line 333
    .line 334
    sget-object v9, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 335
    .line 336
    aput-object v9, v6, v8

    .line 337
    .line 338
    goto :goto_3

    .line 339
    :cond_8
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 340
    .line 341
    new-array v11, v2, [J

    .line 342
    .line 343
    fill-array-data v11, :array_c

    .line 344
    .line 345
    .line 346
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v10

    .line 357
    if-eqz v10, :cond_9

    .line 358
    .line 359
    sget-object v9, Lcom/google/android/gms/ads/AdSize;->WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;

    .line 360
    .line 361
    aput-object v9, v6, v8

    .line 362
    .line 363
    goto :goto_3

    .line 364
    :cond_9
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 365
    .line 366
    new-array v11, v4, [J

    .line 367
    .line 368
    fill-array-data v11, :array_d

    .line 369
    .line 370
    .line 371
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v10

    .line 378
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v10

    .line 382
    if-eqz v10, :cond_a

    .line 383
    .line 384
    sget-object v9, Lcom/google/android/gms/ads/AdSize;->FLUID:Lcom/google/android/gms/ads/AdSize;

    .line 385
    .line 386
    aput-object v9, v6, v8

    .line 387
    .line 388
    goto :goto_3

    .line 389
    :cond_a
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 390
    .line 391
    new-array v11, v4, [J

    .line 392
    .line 393
    fill-array-data v11, :array_e

    .line 394
    .line 395
    .line 396
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v10

    .line 403
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v10

    .line 407
    if-eqz v10, :cond_b

    .line 408
    .line 409
    sget-object v9, Lcom/google/android/gms/ads/AdSize;->zza:Lcom/google/android/gms/ads/AdSize;

    .line 410
    .line 411
    aput-object v9, v6, v8

    .line 412
    .line 413
    :goto_3
    add-int/2addr v8, v0

    .line 414
    goto/16 :goto_0

    .line 415
    .line 416
    :cond_b
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 417
    .line 418
    new-array v0, v1, [J

    .line 419
    .line 420
    fill-array-data v0, :array_f

    .line 421
    .line 422
    .line 423
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p0

    .line 430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 431
    .line 432
    invoke-virtual {p0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p0

    .line 436
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    throw v0

    .line 440
    :cond_c
    if-eqz v5, :cond_d

    .line 441
    .line 442
    return-object v6

    .line 443
    :cond_d
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 444
    .line 445
    new-array v1, v1, [J

    .line 446
    .line 447
    fill-array-data v1, :array_10

    .line 448
    .line 449
    .line 450
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 458
    .line 459
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object p0

    .line 463
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    throw v1

    .line 467
    :array_0
    .array-data 8
        -0x18f7b90cba346b0eL    # -2.1126375802637577E188
        0x416e7e060d92fa2aL    # 1.5986736424191553E7
    .end array-data

    .line 468
    .line 469
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
    :array_1
    .array-data 8
        -0x3f010e887e43958eL    # -126743.46917382794
        0x56f27de86d21010eL    # 6.94861520107442E110
        0x282bfbf67fc0663dL    # 3.551117408490796E-115
        -0x5cfd07b8c565ec2aL    # -4.978008353634435E-140
        -0xc76ea7dd0da9addL    # -3.507708851938674E248
        -0x586d0e8946fc79bL    # -9.142812775375945E281
        0x7c3673f21ae0a9L
    .end array-data

    .line 480
    .line 481
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
    :array_2
    .array-data 8
        0x2d1e481dfad7e80L
        -0x12f307311596234bL    # -1.9974870746263035E217
    .end array-data

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    :array_3
    .array-data 8
        -0x17a487d973d71464L    # -5.01308897155486E194
        0x3da66d73182788c5L    # 1.0198863242502943E-11
        -0x23f493fd824f97caL    # -2.491413533671884E135
    .end array-data

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
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    :array_4
    .array-data 8
        -0x44ee886cc8c4f8e0L    # -3.612109568798676E-24
        -0x68449f166ec27d9L
        0x30e1987085ddd3b5L    # 3.112087930918322E-73
    .end array-data

    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
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
    :array_5
    .array-data 8
        -0x5ca62926da5389a1L    # -2.169811078462942E-138
        0x1c33664580f80d49L    # 7.843555797447524E-173
        -0x7a777fc059a7c0a4L    # -5.272509508978674E-282
        -0x35a7de488b297f21L    # -1.4107410882306833E50
        -0x225d5f8ecabd3b21L    # -1.1357023303420173E143
        0x568b09b685bcb75cL    # 7.937469567853621E108
    .end array-data

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    :array_6
    .array-data 8
        0x72af4f4f335fd75dL    # 2.6723099307119817E244
        -0x6fc086067abcfa26L
    .end array-data

    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    :array_7
    .array-data 8
        0x584ccc2c11d3ed85L    # 2.2693622860797962E117
        0x32b8532f27d0e3ccL    # 2.3097909940901676E-64
        0x3ce4e00f397bce71L    # 2.317616355288112E-15
    .end array-data

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    :array_8
    .array-data 8
        0x787067d439f19f7eL    # 1.386716685775225E272
        -0x743244779c5de3a7L    # -8.110839249621268E-252
        -0x702af16ac21bda5bL
    .end array-data

    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    :array_9
    .array-data 8
        -0x2d32291fbcca9abdL    # -7.597981095090951E90
        0x308021a57a671f88L    # 4.458040296804262E-75
        -0x7c7c72acb3193973L    # -9.796401154827307E-292
    .end array-data

    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    :array_a
    .array-data 8
        0x5a5a075c9bebe3ddL    # 1.7619420239217436E127
        0x7881dc0dd0764905L    # 3.0192388803120286E272
        -0x2d2b13ce3a86d223L    # -1.0655039774092175E91
    .end array-data

    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    :array_b
    .array-data 8
        0x453e9293ba7d82eL
        0x378be5e953bf48caL    # 4.003179809996608E-41
        0x3ca3f3c9a0ee3c2cL    # 1.3844686063422502E-16
    .end array-data

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    :array_c
    .array-data 8
        0x1d6e174edea84927L
        -0x2e463a5262f3945bL    # -5.0066813111637905E85
        0x2bed0a5a5d63f4bL
    .end array-data

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    :array_d
    .array-data 8
        0x91592823245ac45L
        -0x105916281b75823cL    # -6.947958296197779E229
    .end array-data

    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    :array_e
    .array-data 8
        0x1978ef730fa54d44L
        -0x203c5c0fcdf2f3c3L    # -2.0573007361916745E153
    .end array-data

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    :array_f
    .array-data 8
        0x7720f6b4b8a778bfL    # 6.837331652061796E265
        0x995241e893cdb65L
        0x7029b8e38fff18a6L    # 1.9967107769181707E232
        0x2c4ca8700afae02aL    # 2.683345840296955E-95
        -0x30cb3d73564953cfL    # -3.667967235230291E73
        -0x49b022df531954c5L    # -4.360416577452155E-47
    .end array-data

    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    :array_10
    .array-data 8
        -0x755adfb548c8f648L
        0x75be5a1e2fc425e2L    # 1.4583572754706924E259
        -0x2360a33365188b71L    # -1.4589105490613542E138
        -0x112239be487cba23L    # -1.1020983979941764E226
        0x615705b8d9281adaL    # 8.091841886260431E160
        -0x32dc1af0fe0ff303L    # -4.092114831724645E63
    .end array-data
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb(Z)[Lcom/google/android/gms/ads/AdSize;
    .locals 2

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zza:[Lcom/google/android/gms/ads/AdSize;

    .line 4
    .line 5
    array-length p1, p1

    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/16 v1, 0x9

    .line 15
    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zza:[Lcom/google/android/gms/ads/AdSize;

    .line 33
    .line 34
    return-object p1

    .line 35
    :array_0
    .array-data 8
        -0x7958a6a3d1e17edeL
        0x5a0d7ab8b39d4117L    # 6.236006607778061E125
        0x1612ef86f7bc87bdL
        0x73866ba9f1c1297bL    # 3.1352554585469457E248
        0x31ce6bcb1b0ac10aL    # 8.815469699246572E-69
        -0x765967a3ef0be3c2L    # -3.587807279952779E-262
        -0x46ea34c2f81fa21cL    # -1.049338115644385E-33
        0x7c88122d80a6e0b6L    # 7.506544639059427E291
        -0x5e1f339cfab74282L
    .end array-data
.end method
