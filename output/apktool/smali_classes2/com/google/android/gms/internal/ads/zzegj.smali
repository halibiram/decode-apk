.class final Lcom/google/android/gms/internal/ads/zzegj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgej;


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzegk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzegk;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzegj;->zza:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegj;->zzb:Lcom/google/android/gms/internal/ads/zzegk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    new-array v0, v0, [J

    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        0x2acfd4e59bbdcab7L    # 1.7765209995901862E-102
        0x39e0b2b7924526bfL    # 6.586244495829836E-30
        0x66770ff88aa6192aL    # 3.91977904401303E185
        0x3fbd10c178fa1fafL    # 0.11353692248860513
        -0x794207ae7d041bffL    # -3.381354012300124E-276
    .end array-data
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegj;->zzb:Lcom/google/android/gms/internal/ads/zzegk;

    .line 4
    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzegl;->zzf()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    new-array v3, v1, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    instance-of v3, v2, Ljava/util/List;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    check-cast v2, Ljava/util/List;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    instance-of v3, v2, [Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v3, :cond_4

    .line 42
    .line 43
    check-cast v2, [Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    instance-of v5, v4, Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v5, :cond_2

    .line 75
    .line 76
    check-cast v4, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_a

    .line 105
    .line 106
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    const/4 v5, 0x1

    .line 117
    sparse-switch v4, :sswitch_data_0

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :sswitch_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v7, v0, [J

    .line 124
    .line 125
    fill-array-data v7, :array_1

    .line 126
    .line 127
    .line 128
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_5

    .line 140
    .line 141
    const/4 v3, 0x1

    .line 142
    goto :goto_5

    .line 143
    :sswitch_1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 144
    .line 145
    new-array v7, v1, [J

    .line 146
    .line 147
    fill-array-data v7, :array_2

    .line 148
    .line 149
    .line 150
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_5

    .line 162
    .line 163
    const/4 v3, 0x3

    .line 164
    goto :goto_5

    .line 165
    :sswitch_2
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 166
    .line 167
    new-array v7, v1, [J

    .line 168
    .line 169
    fill-array-data v7, :array_3

    .line 170
    .line 171
    .line 172
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_5

    .line 184
    .line 185
    const/4 v3, 0x2

    .line 186
    goto :goto_5

    .line 187
    :sswitch_3
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 188
    .line 189
    new-array v7, v1, [J

    .line 190
    .line 191
    fill-array-data v7, :array_4

    .line 192
    .line 193
    .line 194
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_5

    .line 206
    .line 207
    const/4 v3, 0x0

    .line 208
    goto :goto_5

    .line 209
    :cond_5
    :goto_4
    const/4 v3, -0x1

    .line 210
    :goto_5
    if-eqz v3, :cond_9

    .line 211
    .line 212
    if-eq v3, v5, :cond_8

    .line 213
    .line 214
    if-eq v3, v1, :cond_7

    .line 215
    .line 216
    if-eq v3, v0, :cond_6

    .line 217
    .line 218
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zza:Lcom/google/android/gms/internal/ads/zzbcn;

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_6
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzj:Lcom/google/android/gms/internal/ads/zzbcn;

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzf:Lcom/google/android/gms/internal/ads/zzbcn;

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_8
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzc:Lcom/google/android/gms/internal/ads/zzbcn;

    .line 228
    .line 229
    goto :goto_6

    .line 230
    :cond_9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzb:Lcom/google/android/gms/internal/ads/zzbcn;

    .line 231
    .line 232
    :goto_6
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    goto/16 :goto_3

    .line 236
    .line 237
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegj;->zzb:Lcom/google/android/gms/internal/ads/zzegk;

    .line 238
    .line 239
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzegk;->zzb(Lcom/google/android/gms/internal/ads/zzegk;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbec;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegj;->zzb:Lcom/google/android/gms/internal/ads/zzegk;

    .line 244
    .line 245
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzegk;->zza(Lcom/google/android/gms/internal/ads/zzegk;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbdt;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegj;->zzb:Lcom/google/android/gms/internal/ads/zzegk;

    .line 250
    .line 251
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzegj;->zza:Z

    .line 252
    .line 253
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegi;

    .line 254
    .line 255
    move-object v3, v0

    .line 256
    move-object v4, p0

    .line 257
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzegi;-><init>(Lcom/google/android/gms/internal/ads/zzegj;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdt;Lcom/google/android/gms/internal/ads/zzbec;)V

    .line 258
    .line 259
    .line 260
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzegl;->zza:Lcom/google/android/gms/internal/ads/zzefy;

    .line 261
    .line 262
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzefy;->zza(Lcom/google/android/gms/internal/ads/zzfkp;)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    nop

    .line 267
    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_3
        -0x3ebdafe9 -> :sswitch_2
        -0xe47b3f2 -> :sswitch_1
        0x240b672c -> :sswitch_0
    .end sparse-switch

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
    :array_0
    .array-data 8
        0x195a77d177b4bb52L    # 1.52077329918698E-186
        -0x2aa599ff4f0a5b2fL    # -1.4781446304072602E103
    .end array-data

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
    :array_1
    .array-data 8
        -0x41936ae83b112629L    # -5.323885742625339E-8
        -0x7e80af239e1392c2L
        -0x280ec00cb14dfb03L    # -4.247981098484753E115
    .end array-data

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
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_2
    .array-data 8
        0x19453cf5b86a9111L    # 6.101391062494416E-187
        0x71d409b85bc850dL
    .end array-data

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
    .line 324
    .line 325
    :array_3
    .array-data 8
        -0x3580f7f008d999e2L    # -7.256412595904584E50
        0x3230bbd5a6dac90fL    # 6.206884985336602E-67
    .end array-data

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
    .line 336
    .line 337
    :array_4
    .array-data 8
        -0x427b6c65e70fe16cL    # -2.339285184681815E-12
        0x67fa7f418fc084bL
    .end array-data
.end method
