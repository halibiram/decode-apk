.class public final Lcom/google/android/gms/internal/ads/zzeez;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public zza:I

.field public zzb:Ljava/util/Map;

.field public zzc:Ljava/lang/String;

.field public zzd:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeez;->zza:I

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzeez;->zzb:Ljava/util/Map;

    .line 13
    .line 14
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    new-array v2, v2, [J

    .line 18
    .line 19
    const-wide v3, -0x29cfa7386187a15aL    # -1.4996541549909355E107

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    aput-wide v3, v2, v0

    .line 25
    .line 26
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeez;->zzc:Ljava/lang/String;

    .line 34
    .line 35
    const-wide/16 v0, -0x1

    .line 36
    .line 37
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeez;->zzd:J

    .line 38
    .line 39
    return-void
.end method

.method public static zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/zzeez;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    :try_start_0
    new-instance v2, Landroid/util/JsonReader;

    .line 4
    .line 5
    invoke-direct {v2, p0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 6
    .line 7
    .line 8
    new-instance v3, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    new-array v5, v5, [J

    .line 17
    .line 18
    const-wide v6, 0x4ba6bf2a5b7d1777L    # 2.7887422184014007E56

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    aput-wide v6, v5, v0

    .line 24
    .line 25
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    .line 33
    .line 34
    .line 35
    const-wide/16 v5, -0x1

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_5

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v9, v1, [J

    .line 50
    .line 51
    fill-array-data v9, :array_0

    .line 52
    .line 53
    .line 54
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_0

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextInt()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :catch_0
    move-exception v0

    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :catch_1
    move-exception v0

    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :catch_2
    move-exception v0

    .line 82
    goto/16 :goto_2

    .line 83
    .line 84
    :catch_3
    move-exception v0

    .line 85
    goto/16 :goto_2

    .line 86
    .line 87
    :cond_0
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v9, v1, [J

    .line 90
    .line 91
    fill-array-data v9, :array_1

    .line 92
    .line 93
    .line 94
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-eqz v8, :cond_1

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    goto :goto_0

    .line 112
    :cond_1
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v9, v1, [J

    .line 115
    .line 116
    fill-array-data v9, :array_2

    .line 117
    .line 118
    .line 119
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-eqz v8, :cond_2

    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextLong()J

    .line 133
    .line 134
    .line 135
    move-result-wide v5

    .line 136
    goto :goto_0

    .line 137
    :cond_2
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    new-array v9, v1, [J

    .line 140
    .line 141
    fill-array-data v9, :array_3

    .line 142
    .line 143
    .line 144
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-eqz v7, :cond_4

    .line 156
    .line 157
    new-instance v3, Ljava/util/HashMap;

    .line 158
    .line 159
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    .line 163
    .line 164
    .line 165
    :goto_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    if-eqz v7, :cond_3

    .line 170
    .line 171
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzd(Landroid/util/JsonReader;)Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_3
    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_4
    invoke-virtual {v2}, Landroid/util/JsonReader;->skipValue()V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_5
    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V

    .line 194
    .line 195
    .line 196
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeez;

    .line 197
    .line 198
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzeez;-><init>()V

    .line 199
    .line 200
    .line 201
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzeez;->zza:I

    .line 202
    .line 203
    if-eqz v4, :cond_6

    .line 204
    .line 205
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzeez;->zzc:Ljava/lang/String;

    .line 206
    .line 207
    :cond_6
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzeez;->zzd:J

    .line 208
    .line 209
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzeez;->zzb:Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .line 211
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 212
    .line 213
    .line 214
    return-object v1

    .line 215
    :goto_2
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfgq;

    .line 216
    .line 217
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 218
    .line 219
    const/4 v3, 0x4

    .line 220
    new-array v3, v3, [J

    .line 221
    .line 222
    fill-array-data v3, :array_4

    .line 223
    .line 224
    .line 225
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfgq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :goto_3
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 237
    .line 238
    .line 239
    throw v0

    .line 240
    nop

    .line 241
    :array_0
    .array-data 8
        -0x6640c62d8a7a748eL    # -1.148251932306115E-184
        -0x62cdbf10580622c4L    # -4.836735189169461E-168
    .end array-data

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
    :array_1
    .array-data 8
        -0x67186f06831e750bL
        -0x23530498a00cba71L    # -2.6963549993604106E138
    .end array-data

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
    :array_2
    .array-data 8
        0x4df35d8475b16beL
        -0xc7b2ea36f5fe5b5L    # -2.91113041473818E248
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
    :array_3
    .array-data 8
        -0x19dd95bf307cf059L    # -9.78093345477263E183
        -0x2612770d1425762L
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
    :array_4
    .array-data 8
        -0x37a2b9916d77aba1L    # -3.984723490039817E40
        -0x17783b83cf12429bL    # -3.470012757008813E195
        -0x5baac36c6d341cbeL
        -0x1d014762ae1d6778L    # -7.246279229647345E168
    .end array-data
.end method
