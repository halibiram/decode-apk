.class public final Lcom/google/android/gms/internal/ads/zzerw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzexq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfhh;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcdl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzetq;Lcom/google/android/gms/internal/ads/zzfhh;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcdl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzerw;->zza:Lcom/google/android/gms/internal/ads/zzexq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzerw;->zzb:Lcom/google/android/gms/internal/ads/zzfhh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzerw;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzerw;->zzd:Lcom/google/android/gms/internal/ads/zzcdl;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzerw;->zza:Lcom/google/android/gms/internal/ads/zzexq;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzexq;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzerv;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzerv;-><init>(Lcom/google/android/gms/internal/ads/zzerw;)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcep;->zzf:Lcom/google/android/gms/internal/ads/zzgey;

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgen;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfws;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzexv;)Lcom/google/android/gms/internal/ads/zzerx;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzerw;->zzb:Lcom/google/android/gms/internal/ads/zzfhh;

    .line 5
    .line 6
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzfhh;->zze:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 7
    .line 8
    iget-object v2, v4, Lcom/google/android/gms/ads/internal/client/zzq;->zzg:[Lcom/google/android/gms/ads/internal/client/zzq;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v2, v4, Lcom/google/android/gms/ads/internal/client/zzq;->zza:Ljava/lang/String;

    .line 15
    .line 16
    iget-boolean v7, v4, Lcom/google/android/gms/ads/internal/client/zzq;->zzi:Z

    .line 17
    .line 18
    move-object v10, v2

    .line 19
    move v11, v7

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    move-object v10, v3

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v11, 0x0

    .line 26
    :goto_0
    array-length v12, v2

    .line 27
    if-ge v7, v12, :cond_5

    .line 28
    .line 29
    aget-object v12, v2, v7

    .line 30
    .line 31
    iget-boolean v13, v12, Lcom/google/android/gms/ads/internal/client/zzq;->zzi:Z

    .line 32
    .line 33
    if-nez v13, :cond_1

    .line 34
    .line 35
    if-nez v8, :cond_1

    .line 36
    .line 37
    iget-object v10, v12, Lcom/google/android/gms/ads/internal/client/zzq;->zza:Ljava/lang/String;

    .line 38
    .line 39
    const/4 v8, 0x1

    .line 40
    :cond_1
    if-eqz v13, :cond_3

    .line 41
    .line 42
    if-nez v9, :cond_2

    .line 43
    .line 44
    const/4 v9, 0x1

    .line 45
    const/4 v11, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v9, 0x1

    .line 48
    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    .line 49
    .line 50
    if-nez v9, :cond_5

    .line 51
    .line 52
    :cond_4
    add-int/2addr v7, v5

    .line 53
    goto :goto_0

    .line 54
    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzerw;->zzc:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_6

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_6

    .line 67
    .line 68
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzerw;->zzd:Lcom/google/android/gms/internal/ads/zzcdl;

    .line 69
    .line 70
    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    .line 71
    .line 72
    iget v9, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 73
    .line 74
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdl;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-interface {v3}, Lcom/google/android/gms/ads/internal/util/zzg;->zzm()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    move-object v12, v3

    .line 85
    goto :goto_3

    .line 86
    :cond_6
    move-object v12, v3

    .line 87
    const/4 v2, 0x0

    .line 88
    const/4 v8, 0x0

    .line 89
    const/4 v9, 0x0

    .line 90
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v13, v4, Lcom/google/android/gms/ads/internal/client/zzq;->zzg:[Lcom/google/android/gms/ads/internal/client/zzq;

    .line 96
    .line 97
    if-eqz v13, :cond_f

    .line 98
    .line 99
    const/4 v14, 0x0

    .line 100
    const/4 v15, 0x0

    .line 101
    :goto_4
    array-length v6, v13

    .line 102
    if-ge v14, v6, :cond_d

    .line 103
    .line 104
    aget-object v6, v13, v14

    .line 105
    .line 106
    iget-boolean v5, v6, Lcom/google/android/gms/ads/internal/client/zzq;->zzi:Z

    .line 107
    .line 108
    if-eqz v5, :cond_7

    .line 109
    .line 110
    const/4 v5, 0x1

    .line 111
    const/4 v15, 0x1

    .line 112
    const/16 v16, 0x0

    .line 113
    .line 114
    goto :goto_7

    .line 115
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_8

    .line 120
    .line 121
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v7, v1, [J

    .line 124
    .line 125
    fill-array-data v7, :array_0

    .line 126
    .line 127
    .line 128
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    :cond_8
    iget v5, v6, Lcom/google/android/gms/ads/internal/client/zzq;->zze:I

    .line 139
    .line 140
    const/4 v7, -0x1

    .line 141
    if-ne v5, v7, :cond_a

    .line 142
    .line 143
    const/16 v16, 0x0

    .line 144
    .line 145
    cmpl-float v5, v8, v16

    .line 146
    .line 147
    if-eqz v5, :cond_9

    .line 148
    .line 149
    iget v5, v6, Lcom/google/android/gms/ads/internal/client/zzq;->zzf:I

    .line 150
    .line 151
    int-to-float v5, v5

    .line 152
    div-float/2addr v5, v8

    .line 153
    float-to-int v5, v5

    .line 154
    goto :goto_5

    .line 155
    :cond_9
    const/4 v5, -0x1

    .line 156
    :cond_a
    :goto_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    new-array v7, v1, [J

    .line 162
    .line 163
    fill-array-data v7, :array_1

    .line 164
    .line 165
    .line 166
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget v5, v6, Lcom/google/android/gms/ads/internal/client/zzq;->zzb:I

    .line 177
    .line 178
    const/4 v7, -0x2

    .line 179
    const/16 v16, 0x0

    .line 180
    .line 181
    if-ne v5, v7, :cond_c

    .line 182
    .line 183
    cmpl-float v5, v8, v16

    .line 184
    .line 185
    if-eqz v5, :cond_b

    .line 186
    .line 187
    iget v5, v6, Lcom/google/android/gms/ads/internal/client/zzq;->zzc:I

    .line 188
    .line 189
    int-to-float v5, v5

    .line 190
    div-float/2addr v5, v8

    .line 191
    float-to-int v5, v5

    .line 192
    goto :goto_6

    .line 193
    :cond_b
    const/4 v5, -0x2

    .line 194
    :cond_c
    :goto_6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const/4 v5, 0x1

    .line 198
    :goto_7
    add-int/2addr v14, v5

    .line 199
    goto :goto_4

    .line 200
    :cond_d
    if-eqz v15, :cond_f

    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-eqz v5, :cond_e

    .line 207
    .line 208
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 209
    .line 210
    new-array v6, v1, [J

    .line 211
    .line 212
    fill-array-data v6, :array_2

    .line 213
    .line 214
    .line 215
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    const/4 v6, 0x0

    .line 223
    invoke-virtual {v3, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_e
    const/4 v6, 0x0

    .line 228
    :goto_8
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 229
    .line 230
    new-array v1, v1, [J

    .line 231
    .line 232
    fill-array-data v1, :array_3

    .line 233
    .line 234
    .line 235
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v3, v6, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    :cond_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzerw;->zzb:Lcom/google/android/gms/internal/ads/zzfhh;

    .line 250
    .line 251
    new-instance v13, Lcom/google/android/gms/internal/ads/zzerx;

    .line 252
    .line 253
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzfhh;->zzp:Z

    .line 254
    .line 255
    move-object v3, v13

    .line 256
    move-object v5, v10

    .line 257
    move v6, v11

    .line 258
    move v10, v2

    .line 259
    move-object v11, v12

    .line 260
    move v12, v1

    .line 261
    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/ads/zzerx;-><init>(Lcom/google/android/gms/ads/internal/client/zzq;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V

    .line 262
    .line 263
    .line 264
    return-object v13

    .line 265
    :array_0
    .array-data 8
        0xdef6a01dc8ce997L
        -0x73dd28474f80ec78L
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
    :array_1
    .array-data 8
        -0x4c6ab90892a7ce6dL    # -3.3102105296396936E-60
        -0x7399fca55bf0e8eL
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
    :array_2
    .array-data 8
        0x1234894dd883f8bL
        0x63761bcdba45732L
    .end array-data

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
    :array_3
    .array-data 8
        -0x1fd798461b912a14L    # -1.6360998458777967E155
        0x21ec0c9476d79fcbL
    .end array-data
.end method
