.class public final synthetic Lcom/google/android/gms/internal/ads/zzchy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftn;


# instance fields
.field public final synthetic zza:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchy;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/net/URLConnection;
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x3

    .line 4
    sget v3, Lcom/google/android/gms/internal/ads/zzchz;->zzd:I

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzw()Lcom/google/android/gms/internal/ads/zzcev;

    .line 7
    .line 8
    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgc;->zzz:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    new-instance v4, Ljava/net/URL;

    .line 26
    .line 27
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzchy;->zza:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    :goto_0
    add-int/lit8 v6, v6, 0x1

    .line 35
    .line 36
    const/16 v7, 0x14

    .line 37
    .line 38
    if-gt v6, v7, :cond_6

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {v7, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 48
    .line 49
    .line 50
    instance-of v8, v7, Ljava/net/HttpURLConnection;

    .line 51
    .line 52
    if-eqz v8, :cond_5

    .line 53
    .line 54
    check-cast v7, Ljava/net/HttpURLConnection;

    .line 55
    .line 56
    new-instance v8, Lcom/google/android/gms/internal/ads/zzceb;

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzceb;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, v7, v9}, Lcom/google/android/gms/internal/ads/zzceb;->zzc(Ljava/net/HttpURLConnection;[B)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    invoke-virtual {v8, v7, v9}, Lcom/google/android/gms/internal/ads/zzceb;->zze(Ljava/net/HttpURLConnection;I)V

    .line 73
    .line 74
    .line 75
    div-int/lit8 v9, v9, 0x64

    .line 76
    .line 77
    if-ne v9, v2, :cond_4

    .line 78
    .line 79
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v9, v1, [J

    .line 82
    .line 83
    fill-array-data v9, :array_0

    .line 84
    .line 85
    .line 86
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    if-eqz v8, :cond_3

    .line 98
    .line 99
    new-instance v9, Ljava/net/URL;

    .line 100
    .line 101
    invoke-direct {v9, v4, v8}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    if-eqz v4, :cond_2

    .line 109
    .line 110
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v11, v1, [J

    .line 113
    .line 114
    fill-array-data v11, :array_1

    .line 115
    .line 116
    .line 117
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    if-nez v10, :cond_1

    .line 129
    .line 130
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    new-array v11, v1, [J

    .line 133
    .line 134
    fill-array-data v11, :array_2

    .line 135
    .line 136
    .line 137
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    if-eqz v10, :cond_0

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 152
    .line 153
    new-array v0, v0, [J

    .line 154
    .line 155
    fill-array-data v0, :array_3

    .line 156
    .line 157
    .line 158
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    new-instance v1, Ljava/io/IOException;

    .line 170
    .line 171
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v1

    .line 175
    :cond_1
    :goto_1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 176
    .line 177
    new-array v10, v2, [J

    .line 178
    .line 179
    fill-array-data v10, :array_4

    .line 180
    .line 181
    .line 182
    invoke-direct {v4, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 197
    .line 198
    .line 199
    move-object v4, v9

    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 203
    .line 204
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 205
    .line 206
    new-array v2, v2, [J

    .line 207
    .line 208
    fill-array-data v2, :array_5

    .line 209
    .line 210
    .line 211
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v0

    .line 222
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 223
    .line 224
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    const/4 v2, 0x6

    .line 227
    new-array v2, v2, [J

    .line 228
    .line 229
    fill-array-data v2, :array_6

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
    :cond_4
    return-object v7

    .line 244
    :cond_5
    new-instance v1, Ljava/io/IOException;

    .line 245
    .line 246
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 247
    .line 248
    new-array v0, v0, [J

    .line 249
    .line 250
    fill-array-data v0, :array_7

    .line 251
    .line 252
    .line 253
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw v1

    .line 264
    :cond_6
    new-instance v1, Ljava/io/IOException;

    .line 265
    .line 266
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 267
    .line 268
    new-array v0, v0, [J

    .line 269
    .line 270
    fill-array-data v0, :array_8

    .line 271
    .line 272
    .line 273
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw v1

    .line 284
    nop

    .line 285
    :array_0
    .array-data 8
        -0x3cabf67fcfd98dd2L    # -2.2559782810011832E16
        0x795d1c4cf8794b63L    # 4.031497918917387E276
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :array_1
    .array-data 8
        0x7ce0e1f4e1c170c0L    # 3.3695059132735934E293
        -0x557336bb83dee135L
    .end array-data

    :array_2
    .array-data 8
        -0x68e04ccd9aa24453L    # -2.650464228554392E-197
        0xceb31cdcfabd1feL
    .end array-data

    :array_3
    .array-data 8
        0x11d8c1c12734cf69L    # 1.070135237112174E-222
        0x7f2eade29340dea5L    # 4.207752720503933E304
        -0x47c79b3d2173b184L    # -7.168634299421271E-38
        -0x37b7f12a9b019f20L    # -1.637298801133855E40
    .end array-data

    :array_4
    .array-data 8
        -0x38b537b9fde0135cL    # -2.7812349374315215E35
        -0x6d2034fa230a8b05L    # -9.006487553952486E-218
        -0x7c45e1b41a9c0be4L
    .end array-data

    :array_5
    .array-data 8
        -0x1925db79bdc1cf9L    # -9.922811637201119E300
        -0x5a1bee2adf8e54a3L
        0x1cc5159bf0688b9eL    # 4.364695245665315E-170
    .end array-data

    :array_6
    .array-data 8
        0x10c90e4c0d2279d1L    # 8.263088343033346E-228
        -0x26ff8a5d4c960a19L    # -5.312822209789577E120
        0x6aca387d32726558L    # 2.6306960467962503E206
        0x748d15f4a2185811L    # 2.6655500870385987E253
        -0xa86b8387461500aL    # -7.591717705425087E257
        -0x669d9ca4eadc0415L    # -2.113049893385134E-186
    .end array-data

    :array_7
    .array-data 8
        -0x4ed72ce47c0b10a3L    # -7.025123763514666E-72
        0x23c53ad0ada68b2cL
        0x48f03a5a06500076L    # 2.261844184776975E43
        0x46d0f7fa9bc89a59L    # 1.3766618775309116E33
    .end array-data

    :array_8
    .array-data 8
        0x16a4d04fd3271dddL
        -0x383a54ab2d30c607L    # -5.760678219749401E37
        0x37b875737c8550d6L    # 2.8077317879039505E-40
        0x6054d708b956f05bL    # 1.1176736284109252E156
    .end array-data
.end method
