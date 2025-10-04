.class public final Lcom/google/android/gms/internal/ads/zzdwr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwr;->zza:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method


# virtual methods
.method public final varargs zza(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbid;->zza:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwr;->zza:Lcom/google/android/gms/common/util/Clock;

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    new-instance v4, Ljava/io/StringWriter;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v5, Landroid/util/JsonWriter;

    .line 30
    .line 31
    invoke-direct {v5, v4}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-virtual {v5}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 35
    .line 36
    .line 37
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v7, v0, [J

    .line 40
    .line 41
    fill-array-data v7, :array_0

    .line 42
    .line 43
    .line 44
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 56
    .line 57
    .line 58
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v3, v1, [J

    .line 61
    .line 62
    fill-array-data v3, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v5, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2, p2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 77
    .line 78
    .line 79
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v2, v1, [J

    .line 82
    .line 83
    fill-array-data v2, :array_2

    .line 84
    .line 85
    .line 86
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {v5, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p2, p3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 98
    .line 99
    .line 100
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array p3, v0, [J

    .line 103
    .line 104
    fill-array-data p3, :array_3

    .line 105
    .line 106
    .line 107
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {v5, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 119
    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_1

    .line 130
    .line 131
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-virtual {v5, p2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :catch_0
    move-exception p1

    .line 144
    goto :goto_3

    .line 145
    :cond_1
    invoke-virtual {v5}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 146
    .line 147
    .line 148
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array p2, v1, [J

    .line 151
    .line 152
    fill-array-data p2, :array_4

    .line 153
    .line 154
    .line 155
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v5, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 167
    .line 168
    .line 169
    array-length p1, p4

    .line 170
    const/4 p2, 0x0

    .line 171
    :goto_1
    if-ge p2, p1, :cond_3

    .line 172
    .line 173
    aget-object p3, p4, p2

    .line 174
    .line 175
    if-eqz p3, :cond_2

    .line 176
    .line 177
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    goto :goto_2

    .line 182
    :cond_2
    const/4 p3, 0x0

    .line 183
    :goto_2
    invoke-virtual {v5, p3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 184
    .line 185
    .line 186
    add-int/lit8 p2, p2, 0x1

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_3
    invoke-virtual {v5}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5}, Landroid/util/JsonWriter;->flush()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5}, Landroid/util/JsonWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :goto_3
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    new-array p3, v0, [J

    .line 205
    .line 206
    fill-array-data p3, :array_5

    .line 207
    .line 208
    .line 209
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    :goto_4
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 228
    .line 229
    new-array p3, v1, [J

    .line 230
    .line 231
    fill-array-data p3, :array_6

    .line 232
    .line 233
    .line 234
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzi(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :array_0
    .array-data 8
        0xe24330c35853624L
        0x1333ea0839a8dd63L    # 3.610486495008746E-216
        0x2928d1705a4215d2L    # 2.063956267180773E-110
    .end array-data

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
    :array_1
    .array-data 8
        0x373f67ebc401266aL    # 1.40829111173725E-42
        -0x1396b0a9dd89475eL    # -1.7041095174605585E214
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
    :array_2
    .array-data 8
        -0x5e39edf25d3af582L    # -5.52337701590683E-146
        -0x45185cfdb6318e23L    # -6.109957617767281E-25
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
    :array_3
    .array-data 8
        -0x350e45d8ddb3a906L    # -1.0612028553157067E53
        0xe73c22abea9b2ffL    # 4.741073057336094E-239
        -0x2ae1a5fbc463ea68L    # -1.0621858935511494E102
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
    .line 302
    .line 303
    .line 304
    .line 305
    :array_4
    .array-data 8
        0x8bd5a5f271387ffL
        0xb3c0291a486370cL
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
    :array_5
    .array-data 8
        -0x288c3e19f198d8deL    # -1.90059046015305E113
        0x41776da66bf2d8L
        0x127aa753274f3c33L
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
    .line 330
    .line 331
    .line 332
    .line 333
    :array_6
    .array-data 8
        0x54dd4ccf4c341eb3L    # 6.4086529595382135E100
        0x167b21e30b01f065L
    .end array-data
.end method
