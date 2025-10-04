.class final Lcom/google/android/gms/internal/ads/zzfus;
.super Lcom/google/android/gms/internal/ads/zzfvm;
.source "SourceFile"


# instance fields
.field private zza:Landroid/os/IBinder;

.field private zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:F

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfvm;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfvm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfus;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfvm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfus;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzfvm;
    .locals 0

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfus;->zzg:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfus;->zzg:B

    return-object p0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/ads/zzfvm;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfus;->zzc:I

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfus;->zzg:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfus;->zzg:B

    return-object p0
.end method

.method public final zze(F)Lcom/google/android/gms/internal/ads/zzfvm;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfus;->zzd:F

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfus;->zzg:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfus;->zzg:B

    return-object p0
.end method

.method public final zzf(Z)Lcom/google/android/gms/internal/ads/zzfvm;
    .locals 0

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfus;->zzg:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfus;->zzg:B

    return-object p0
.end method

.method public final zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzfvm;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfus;->zza:Landroid/os/IBinder;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    :array_0
    .array-data 8
        0x29f2cba7bef882f9L
        -0x5ec8c3a579eb054aL
        0x2967aed7ab11486L
    .end array-data
.end method

.method public final zzh(I)Lcom/google/android/gms/internal/ads/zzfvm;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfus;->zze:I

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfus;->zzg:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfus;->zzg:B

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzfvn;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x3

    .line 5
    iget-byte v3, v0, Lcom/google/android/gms/internal/ads/zzfus;->zzg:B

    .line 6
    .line 7
    const/16 v4, 0x1f

    .line 8
    .line 9
    if-ne v3, v4, :cond_1

    .line 10
    .line 11
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfus;->zza:Landroid/os/IBinder;

    .line 12
    .line 13
    if-nez v6, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfuu;

    .line 17
    .line 18
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzfus;->zzb:Ljava/lang/String;

    .line 19
    .line 20
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzfus;->zzc:I

    .line 21
    .line 22
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzfus;->zzd:F

    .line 23
    .line 24
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzfus;->zze:I

    .line 25
    .line 26
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzfus;->zzf:Ljava/lang/String;

    .line 27
    .line 28
    const/16 v16, 0x0

    .line 29
    .line 30
    const/16 v17, 0x0

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v12, 0x0

    .line 35
    const/4 v14, 0x0

    .line 36
    move-object v5, v1

    .line 37
    invoke-direct/range {v5 .. v17}, Lcom/google/android/gms/internal/ads/zzfuu;-><init>(Landroid/os/IBinder;ZLjava/lang/String;IFILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfut;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfus;->zza:Landroid/os/IBinder;

    .line 47
    .line 48
    if-nez v4, :cond_2

    .line 49
    .line 50
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v5, v2, [J

    .line 53
    .line 54
    fill-array-data v5, :array_0

    .line 55
    .line 56
    .line 57
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-byte v4, v0, Lcom/google/android/gms/internal/ads/zzfus;->zzg:B

    .line 68
    .line 69
    and-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    if-nez v4, :cond_3

    .line 72
    .line 73
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v5, v1, [J

    .line 76
    .line 77
    fill-array-data v5, :array_1

    .line 78
    .line 79
    .line 80
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-byte v4, v0, Lcom/google/android/gms/internal/ads/zzfus;->zzg:B

    .line 91
    .line 92
    and-int/lit8 v4, v4, 0x2

    .line 93
    .line 94
    if-nez v4, :cond_4

    .line 95
    .line 96
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v5, v2, [J

    .line 99
    .line 100
    fill-array-data v5, :array_2

    .line 101
    .line 102
    .line 103
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    :cond_4
    iget-byte v4, v0, Lcom/google/android/gms/internal/ads/zzfus;->zzg:B

    .line 114
    .line 115
    and-int/2addr v4, v1

    .line 116
    if-nez v4, :cond_5

    .line 117
    .line 118
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    new-array v1, v1, [J

    .line 121
    .line 122
    fill-array-data v1, :array_3

    .line 123
    .line 124
    .line 125
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    :cond_5
    iget-byte v1, v0, Lcom/google/android/gms/internal/ads/zzfus;->zzg:B

    .line 136
    .line 137
    and-int/lit8 v1, v1, 0x8

    .line 138
    .line 139
    if-nez v1, :cond_6

    .line 140
    .line 141
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v4, v2, [J

    .line 144
    .line 145
    fill-array-data v4, :array_4

    .line 146
    .line 147
    .line 148
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    :cond_6
    iget-byte v1, v0, Lcom/google/android/gms/internal/ads/zzfus;->zzg:B

    .line 159
    .line 160
    and-int/lit8 v1, v1, 0x10

    .line 161
    .line 162
    if-nez v1, :cond_7

    .line 163
    .line 164
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    new-array v2, v2, [J

    .line 167
    .line 168
    fill-array-data v2, :array_5

    .line 169
    .line 170
    .line 171
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 188
    .line 189
    const/4 v4, 0x5

    .line 190
    new-array v4, v4, [J

    .line 191
    .line 192
    fill-array-data v4, :array_6

    .line 193
    .line 194
    .line 195
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v1

    .line 210
    nop

    .line 211
    :array_0
    .array-data 8
        0x3a7f391f45eccfd8L    # 6.305461583248919E-27
        0x4407e2024f5267e0L    # 5.507009751414918E19
        -0x6297b293a38988ceL
    .end array-data

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
    :array_1
    .array-data 8
        0x2ca578c31f9f7f57L    # 1.2867030812547447E-93
        -0x3e9b54c43b21228cL    # -1.0836446152205206E7
        -0x14f4fb0d7a07f2ddL    # -4.337320699705911E207
        0x160e7f8c8a104e3cL
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
    :array_2
    .array-data 8
        0x714bceaed5aae594L    # 5.658564643750374E237
        -0x6244c17dcc9b12b3L    # -1.848059893453698E-165
        -0x30446218b5be023eL    # -1.249143820631025E76
    .end array-data

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
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_3
    .array-data 8
        0x7fbad2e558c941ceL    # 1.8836321399095401E307
        0x4c17a3876993e76cL    # 3.709576455423097E58
        -0x2b8c7a3f516467e5L    # -6.671959312307074E98
        -0x68e8b77b2d74c341L
    .end array-data

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
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    :array_4
    .array-data 8
        -0xd01b35051d45895L    # -8.275471340084974E245
        -0x4b88bd458d57a36fL    # -5.929018441811052E-56
        -0x2c2368ccf8c5499cL    # -9.54206230480679E95
    .end array-data

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :array_5
    .array-data 8
        -0x114140eda2c69a41L    # -2.845186105548971E225
        -0x693c07752c9b9c79L    # -5.218069061745133E-199
        0x1c914b34ee07d29cL    # 4.474992490500095E-171
    .end array-data

    :array_6
    .array-data 8
        -0x1c72301db853216cL    # -3.6003053865644298E171
        -0x715df68478f3f5adL    # -3.462411918783096E-238
        -0x52bc6499871e6576L    # -1.2031594298871182E-90
        -0x6b8f5d6a4ac6abd6L    # -3.162484234763251E-210
        0x300de735c405a928L    # 3.228109574087794E-77
    .end array-data
.end method
