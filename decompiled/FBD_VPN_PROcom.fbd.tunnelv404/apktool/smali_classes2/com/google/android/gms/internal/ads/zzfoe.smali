.class public final Lcom/google/android/gms/internal/ads/zzfoe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfom;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfom;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfoi;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfol;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfoi;Lcom/google/android/gms/internal/ads/zzfol;Lcom/google/android/gms/internal/ads/zzfom;Lcom/google/android/gms/internal/ads/zzfom;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfoe;->zzc:Lcom/google/android/gms/internal/ads/zzfoi;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfoe;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfoe;->zza:Lcom/google/android/gms/internal/ads/zzfom;

    .line 9
    .line 10
    if-nez p4, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfom;->zzc:Lcom/google/android/gms/internal/ads/zzfom;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfoe;->zzb:Lcom/google/android/gms/internal/ads/zzfom;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfoe;->zzb:Lcom/google/android/gms/internal/ads/zzfom;

    .line 18
    .line 19
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzfoi;Lcom/google/android/gms/internal/ads/zzfol;Lcom/google/android/gms/internal/ads/zzfom;Lcom/google/android/gms/internal/ads/zzfom;Z)Lcom/google/android/gms/internal/ads/zzfoe;
    .locals 6

    .line 1
    const/16 p4, 0xf

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    new-array v2, v1, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfpt;->zzb(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    new-array v2, v1, [J

    .line 24
    .line 25
    fill-array-data v2, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzfpt;->zzb(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfom;->zzc:Lcom/google/android/gms/internal/ads/zzfom;

    .line 39
    .line 40
    if-eq p2, v0, :cond_4

    .line 41
    .line 42
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfoi;->zza:Lcom/google/android/gms/internal/ads/zzfoi;

    .line 43
    .line 44
    if-ne p0, v0, :cond_1

    .line 45
    .line 46
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfom;->zza:Lcom/google/android/gms/internal/ads/zzfom;

    .line 47
    .line 48
    if-eq p2, v0, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array p2, p4, [J

    .line 56
    .line 57
    fill-array-data p2, :array_2

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfol;->zza:Lcom/google/android/gms/internal/ads/zzfol;

    .line 72
    .line 73
    if-ne p1, v0, :cond_3

    .line 74
    .line 75
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfom;->zza:Lcom/google/android/gms/internal/ads/zzfom;

    .line 76
    .line 77
    if-eq p2, v0, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array p2, p4, [J

    .line 85
    .line 86
    fill-array-data p2, :array_3

    .line 87
    .line 88
    .line 89
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_3
    :goto_1
    new-instance p4, Lcom/google/android/gms/internal/ads/zzfoe;

    .line 101
    .line 102
    const/4 v5, 0x1

    .line 103
    move-object v0, p4

    .line 104
    move-object v1, p0

    .line 105
    move-object v2, p1

    .line 106
    move-object v3, p2

    .line 107
    move-object v4, p3

    .line 108
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfoe;-><init>(Lcom/google/android/gms/internal/ads/zzfoi;Lcom/google/android/gms/internal/ads/zzfol;Lcom/google/android/gms/internal/ads/zzfom;Lcom/google/android/gms/internal/ads/zzfom;Z)V

    .line 109
    .line 110
    .line 111
    return-object p4

    .line 112
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array p2, v1, [J

    .line 117
    .line 118
    fill-array-data p2, :array_4

    .line 119
    .line 120
    .line 121
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    nop

    .line 133
    :array_0
    .array-data 8
        0x3eb98f51f5a8257aL    # 1.5234854432464639E-6
        -0x6f36725a5bc3c517L    # -8.427144353064766E-228
        0x418b4e5e91287ec0L    # 5.726510614477301E7
        0x4cc4b5d2e521d56fL    # 6.656017486160646E61
    .end array-data

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
    :array_1
    .array-data 8
        -0x53e28c20d23fa52eL
        -0x25d6d1285964b631L    # -2.1308618195460288E126
        0x29418b9f28e203f3L    # 5.836531033305306E-110
        -0x42a0213a503e945dL    # -4.5290283818093766E-13
    .end array-data

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
    :array_2
    .array-data 8
        0x5b0367b8f551c5ffL    # 2.690205782404791E130
        0x409587701ecc8bacL    # 1377.8594924888848
        -0x24eba77859bf1710L    # -5.641223808906678E130
        0x38565c05cf7b8447L    # 2.628342322076333E-37
        0xd262c5ac0a04357L
        -0x361f3dad4bdfe013L    # -7.654192112213591E47
        -0x520c29a3d537d777L    # -2.4930144026899743E-87
        0x7647a9cf78be9d51L    # 5.821326565788989E261
        0x62bf95d9fe4e8133L    # 4.65632627442118E167
        0x65866b42fa27f610L    # 1.1628493889560513E181
        0x5f756dccb12cd4bdL    # 7.014517506636659E151
        -0x7d7cd023a6ffc4b6L
        0x68f214ef5181eea1L    # 3.379078450998049E197
        0x7aa195afe5ac40f4L    # 5.107181420759869E282
        0x1a3261cb51e4d7a3L    # 1.730436243880117E-182
    .end array-data

    .line 174
    .line 175
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
    :array_3
    .array-data 8
        -0x70de3fac2e13987eL    # -8.723345095633323E-236
        0x6d9d912d7cffeb5fL    # 1.0437238011978407E220
        -0x4e0743f521c9808aL    # -5.734094436968128E-68
        -0x2de4a520b739595eL    # -3.401065496844221E87
        0x21c813f0dd44cc93L    # 6.02574308014384E-146
        -0x6dc76641c2ce9829L    # -6.80562739857208E-221
        -0x12649bf5ec3c1c4fL    # -9.668992696879822E219
        0x4232076154561fd6L    # 7.743323042212436E10
        -0x5bae18f27bad19c9L    # -9.852281890303582E-134
        0x76ae2aec63b32f6bL    # 4.7497197457649436E263
        -0x417324b854916ca5L    # -2.149981434804431E-7
        0x733067797e834434L    # 7.168552231553144E246
        0x7fff4ddc31525a7cL
        -0x54e8b7981cbf6e5dL    # -4.158122979303878E-101
        0x6664f079ccb4577L
    .end array-data

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
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    :array_4
    .array-data 8
        -0x20633ff44560aa3fL    # -3.7644226326608916E152
        0x4e46f025073cf06eL    # 1.2368180184520215E69
        0x226d9e14b79f8adfL    # 7.58997802499619E-143
        0x8ec34252a87b913L
    .end array-data
.end method


# virtual methods
.method public final zzb()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v3, v2, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfoe;->zza:Lcom/google/android/gms/internal/ads/zzfom;

    .line 22
    .line 23
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v3, v2, [J

    .line 29
    .line 30
    fill-array-data v3, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfoe;->zzb:Lcom/google/android/gms/internal/ads/zzfom;

    .line 41
    .line 42
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v3, v2, [J

    .line 48
    .line 49
    fill-array-data v3, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfoe;->zzc:Lcom/google/android/gms/internal/ads/zzfoi;

    .line 60
    .line 61
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v2, v2, [J

    .line 67
    .line 68
    fill-array-data v2, :array_3

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfoe;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    .line 79
    .line 80
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    const/4 v2, 0x5

    .line 86
    new-array v2, v2, [J

    .line 87
    .line 88
    fill-array-data v2, :array_4

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return-object v0

    .line 104
    nop

    .line 105
    :array_0
    .array-data 8
        -0x7019b9dbb60337e0L
        0x55eb231d515dc116L    # 7.779881612874297E105
        0x72eb4b5a2430532dL    # 3.727341179872944E245
    .end array-data

    .line 106
    .line 107
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
    :array_1
    .array-data 8
        0x56c2e28f82b3bb9aL    # 8.870446414192068E109
        0x105691db59357cfaL    # 5.815005533011258E-230
        0xd90c0250a0d8502L
    .end array-data

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
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_2
    .array-data 8
        0x3c0524d273d46c15L    # 1.432762074787363E-19
        -0x7888d291a991af5cL    # -1.071099628221098E-272
        0x517517fc2660fddcL    # 2.5611286136410655E84
    .end array-data

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
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_3
    .array-data 8
        -0x59772d9f7dc354fcL    # -4.693586148216727E-123
        0x35b2666d946ec96aL    # 4.917916348120877E-50
        -0x44fc637c9a3a96d0L    # -2.0277691618054736E-24
    .end array-data

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
    :array_4
    .array-data 8
        -0x5751d7391c545260L
        -0x393f47ee3ef29cd8L    # -6.782040603842428E32
        0x5175efa9c7f03eb8L    # 2.663421440817631E84
        0x10a159849c6459c1L
        -0xc187966d901360cL
    .end array-data
.end method
