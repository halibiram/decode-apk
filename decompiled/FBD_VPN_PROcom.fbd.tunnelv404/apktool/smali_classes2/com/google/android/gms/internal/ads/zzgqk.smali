.class public final Lcom/google/android/gms/internal/ads/zzgqk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzgqx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Lcom/google/android/gms/internal/ads/zzgxr;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zza:Lcom/google/android/gms/internal/ads/zzgqx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zzb:Lcom/google/android/gms/internal/ads/zzgxr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zzc:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgqj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zza:Lcom/google/android/gms/internal/ads/zzgqx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zzb:Lcom/google/android/gms/internal/ads/zzgxr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zzc:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgqk;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zzc:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgxr;)Lcom/google/android/gms/internal/ads/zzgqk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zzb:Lcom/google/android/gms/internal/ads/zzgxr;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgqx;)Lcom/google/android/gms/internal/ads/zzgqk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zza:Lcom/google/android/gms/internal/ads/zzgqx;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgqm;
    .locals 7

    .line 1
    const/4 v0, 0x5

    .line 2
    const/16 v1, 0xb

    .line 3
    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zza:Lcom/google/android/gms/internal/ads/zzgqx;

    .line 5
    .line 6
    if-eqz v2, :cond_9

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zzb:Lcom/google/android/gms/internal/ads/zzgxr;

    .line 9
    .line 10
    if-eqz v3, :cond_9

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqx;->zzc()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgxr;->zza()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ne v4, v3, :cond_8

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqx;->zza()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zzc:Ljava/lang/Integer;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 34
    .line 35
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v1, v1, [J

    .line 38
    .line 39
    fill-array-data v1, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zza:Lcom/google/android/gms/internal/ads/zzgqx;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqx;->zza()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zzc:Ljava/lang/Integer;

    .line 62
    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 67
    .line 68
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v1, v1, [J

    .line 71
    .line 72
    fill-array-data v1, :array_1

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zza:Lcom/google/android/gms/internal/ads/zzgqx;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgqx;->zzg()Lcom/google/android/gms/internal/ads/zzgqv;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgqv;->zzd:Lcom/google/android/gms/internal/ads/zzgqv;

    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    if-ne v1, v2, :cond_4

    .line 96
    .line 97
    new-array v0, v3, [B

    .line 98
    .line 99
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzb([B)Lcom/google/android/gms/internal/ads/zzgxq;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :goto_2
    move-object v4, v0

    .line 104
    goto/16 :goto_4

    .line 105
    .line 106
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zza:Lcom/google/android/gms/internal/ads/zzgqx;

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgqx;->zzg()Lcom/google/android/gms/internal/ads/zzgqv;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgqv;->zzc:Lcom/google/android/gms/internal/ads/zzgqv;

    .line 113
    .line 114
    if-eq v1, v2, :cond_7

    .line 115
    .line 116
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zza:Lcom/google/android/gms/internal/ads/zzgqx;

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgqx;->zzg()Lcom/google/android/gms/internal/ads/zzgqv;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgqv;->zzb:Lcom/google/android/gms/internal/ads/zzgqv;

    .line 123
    .line 124
    if-ne v1, v2, :cond_5

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zza:Lcom/google/android/gms/internal/ads/zzgqx;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgqx;->zzg()Lcom/google/android/gms/internal/ads/zzgqv;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgqv;->zza:Lcom/google/android/gms/internal/ads/zzgqv;

    .line 134
    .line 135
    if-ne v1, v2, :cond_6

    .line 136
    .line 137
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const/4 v1, 0x1

    .line 142
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zzc:Ljava/lang/Integer;

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzb([B)Lcom/google/android/gms/internal/ads/zzgxq;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    goto :goto_2

    .line 165
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 166
    .line 167
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zza:Lcom/google/android/gms/internal/ads/zzgqx;

    .line 168
    .line 169
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqx;->zzg()Lcom/google/android/gms/internal/ads/zzgqv;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    new-array v0, v0, [J

    .line 180
    .line 181
    fill-array-data v0, :array_2

    .line 182
    .line 183
    .line 184
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw v1

    .line 199
    :cond_7
    :goto_3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zzc:Ljava/lang/Integer;

    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzb([B)Lcom/google/android/gms/internal/ads/zzgxq;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    goto :goto_2

    .line 226
    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqm;

    .line 227
    .line 228
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zza:Lcom/google/android/gms/internal/ads/zzgqx;

    .line 229
    .line 230
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zzb:Lcom/google/android/gms/internal/ads/zzgxr;

    .line 231
    .line 232
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgqk;->zzc:Ljava/lang/Integer;

    .line 233
    .line 234
    const/4 v6, 0x0

    .line 235
    move-object v1, v0

    .line 236
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>(Lcom/google/android/gms/internal/ads/zzgqx;Lcom/google/android/gms/internal/ads/zzgxr;Lcom/google/android/gms/internal/ads/zzgxq;Ljava/lang/Integer;Lcom/google/android/gms/internal/ads/zzgql;)V

    .line 237
    .line 238
    .line 239
    return-object v0

    .line 240
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 241
    .line 242
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 243
    .line 244
    const/4 v2, 0x4

    .line 245
    new-array v2, v2, [J

    .line 246
    .line 247
    fill-array-data v2, :array_3

    .line 248
    .line 249
    .line 250
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw v0

    .line 261
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 262
    .line 263
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 264
    .line 265
    const/16 v2, 0x8

    .line 266
    .line 267
    new-array v2, v2, [J

    .line 268
    .line 269
    fill-array-data v2, :array_4

    .line 270
    .line 271
    .line 272
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v0

    .line 283
    :array_0
    .array-data 8
        0x5f6d8fa915934689L    # 4.8382634290744014E151
        -0x4bd6d184f21e33f4L    # -2.0058273881820647E-57
        0xaada9c42a5a9251L
        -0x3136210f032da003L    # -3.5710829156943724E71
        -0x12a3e5f2cd527e7cL    # -6.1999823027535076E218
        -0x6c753d9c683aa43fL    # -1.552488424718509E-214
        0x77bf1ccb0c2e36c9L    # 6.420527138072611E268
        0x67d2f38ce767a8d9L    # 1.3510077289177353E192
        -0x5393e2907ffaeb26L    # -1.053001994238868E-94
        -0x72b4cd609b0e332cL    # -1.244762299135848E-244
        0x3f4d2295991f2f57L    # 8.891325435284964E-4
    .end array-data

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :array_1
    .array-data 8
        0x2c722cc07f8dc0e7L    # 1.361417423207051E-94
        0x7f0465be60b6d0bL
        0x564a1286c3e49b4fL    # 4.783755350554082E107
        0x6fc55f806ab44c1dL    # 2.592347799621411E230
        -0x24396f020eb46ebaL    # -1.2814152431463052E134
        0x29cdebcc884d1ba0L
        -0x358d0aacf2576d71L    # -4.433213497997046E50
        0xc6c4caa50c416c6L
        0x188a11f70eee2cf5L
        -0x22109fb7860c774eL
        0x327004432df6b2f2L    # 9.505449117541934E-66
    .end array-data

    :array_2
    .array-data 8
        0x14385f2bcaf4a793L
        -0x19a8fb56a9bb8a5fL    # -9.780676209056924E184
        -0x4897ab491f21a132L    # -8.728287879609539E-42
        0x7cdfb572e8cd5616L    # 3.164283526349785E293
        0x272b87f29f7d4a0fL    # 5.330825284743462E-120
    .end array-data

    :array_3
    .array-data 8
        -0x9e922ff317f2cfaL    # -7.030643144815586E260
        -0x3791a83f31fd5472L    # -8.260091954116967E40
        0x6875bf8eb924f30bL    # 1.587603158520936E195
        0x4bb1ed9801373a6bL    # 4.395957490431085E56
    .end array-data

    :array_4
    .array-data 8
        0x33757224c9223e73L    # 8.341125020940935E-61
        -0x43f5b374f796110aL    # -1.782089319400743E-19
        -0x542d96f01d5e7757L    # -1.3467426249030212E-97
        0x78636e19f5c0f449L    # 8.211845531829792E271
        0x50a473625c32c1b4L    # 3.0310803835837547E80
        0x23cbe7b235437dbcL    # 2.9994040949662514E-136
        -0x675454c837957839L    # -7.762531609177496E-190
        0x39fe9d9801c31b48L
    .end array-data
.end method
