.class public final Lcom/google/android/gms/internal/ads/zzhj;
.super Lcom/google/android/gms/internal/ads/zzgq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzht;


# instance fields
.field private final zzb:Z

.field private final zzc:I

.field private final zzd:I

.field private final zze:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhs;

.field private zzh:Lcom/google/android/gms/internal/ads/zzhb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzi:Ljava/net/HttpURLConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzj:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzk:Z

.field private zzl:I

.field private zzm:J

.field private zzn:J


# direct methods
.method public constructor <init>()V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/16 v3, 0x1f40

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v3

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(Ljava/lang/String;IIZLcom/google/android/gms/internal/ads/zzhs;Lcom/google/android/gms/internal/ads/zzfxf;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZLcom/google/android/gms/internal/ads/zzhs;Lcom/google/android/gms/internal/ads/zzfxf;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ads/zzhs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/ads/zzfxf;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p6, 0x1

    .line 3
    invoke-direct {p0, p6}, Lcom/google/android/gms/internal/ads/zzgq;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zze:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzc:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzd:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzb:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzf:Lcom/google/android/gms/internal/ads/zzhs;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhs;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzg:Lcom/google/android/gms/internal/ads/zzhs;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIZLcom/google/android/gms/internal/ads/zzhs;Lcom/google/android/gms/internal/ads/zzfxf;ZLcom/google/android/gms/internal/ads/zzhi;)V
    .locals 8

    .line 1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(Ljava/lang/String;IIZLcom/google/android/gms/internal/ads/zzhs;Lcom/google/android/gms/internal/ads/zzfxf;Z)V

    return-void
.end method

.method private final zzk(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 4
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p2, 0x3

    .line 2
    const/4 p3, 0x2

    .line 3
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 8
    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzc:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzd:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzf:Lcom/google/android/gms/internal/ads/zzhs;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhs;->zza()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzg:Lcom/google/android/gms/internal/ads/zzhs;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhs;->zza()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object p10

    .line 49
    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p10

    .line 53
    :goto_0
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const-wide/16 v0, 0x0

    .line 82
    .line 83
    const-wide/16 v2, -0x1

    .line 84
    .line 85
    cmp-long p10, p4, v0

    .line 86
    .line 87
    if-nez p10, :cond_2

    .line 88
    .line 89
    cmp-long p4, p6, v2

    .line 90
    .line 91
    if-nez p4, :cond_1

    .line 92
    .line 93
    const/4 p4, 0x0

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    move-wide p4, v0

    .line 96
    :cond_2
    new-instance p10, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p10}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    new-array v1, p3, [J

    .line 104
    .line 105
    fill-array-data v1, :array_0

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p10, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v1, p3, [J

    .line 124
    .line 125
    fill-array-data v1, :array_1

    .line 126
    .line 127
    .line 128
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    cmp-long v0, p6, v2

    .line 139
    .line 140
    if-eqz v0, :cond_3

    .line 141
    .line 142
    add-long/2addr p4, p6

    .line 143
    add-long/2addr p4, v2

    .line 144
    invoke-virtual {p10, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    :cond_3
    invoke-virtual {p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p4

    .line 151
    :goto_1
    if-eqz p4, :cond_4

    .line 152
    .line 153
    new-instance p5, Lcom/panda912/muddy/ObfuscatedString;

    .line 154
    .line 155
    new-array p6, p3, [J

    .line 156
    .line 157
    fill-array-data p6, :array_2

    .line 158
    .line 159
    .line 160
    invoke-direct {p5, p6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p5

    .line 167
    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_4
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzhj;->zze:Ljava/lang/String;

    .line 171
    .line 172
    if-eqz p4, :cond_5

    .line 173
    .line 174
    new-instance p5, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    new-array p6, p2, [J

    .line 177
    .line 178
    fill-array-data p6, :array_3

    .line 179
    .line 180
    .line 181
    invoke-direct {p5, p6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p5

    .line 188
    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_5
    const/4 p4, 0x1

    .line 192
    if-eq p4, p8, :cond_6

    .line 193
    .line 194
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 195
    .line 196
    new-array p5, p3, [J

    .line 197
    .line 198
    fill-array-data p5, :array_4

    .line 199
    .line 200
    .line 201
    invoke-direct {p4, p5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p4

    .line 208
    goto :goto_2

    .line 209
    :cond_6
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 210
    .line 211
    new-array p5, p3, [J

    .line 212
    .line 213
    fill-array-data p5, :array_5

    .line 214
    .line 215
    .line 216
    invoke-direct {p4, p5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p4

    .line 223
    :goto_2
    new-instance p5, Lcom/panda912/muddy/ObfuscatedString;

    .line 224
    .line 225
    new-array p2, p2, [J

    .line 226
    .line 227
    fill-array-data p2, :array_6

    .line 228
    .line 229
    .line 230
    invoke-direct {p5, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-virtual {p1, p2, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 241
    .line 242
    .line 243
    const/4 p2, 0x0

    .line 244
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 245
    .line 246
    .line 247
    sget p2, Lcom/google/android/gms/internal/ads/zzhb;->zzj:I

    .line 248
    .line 249
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 250
    .line 251
    new-array p3, p3, [J

    .line 252
    .line 253
    fill-array-data p3, :array_7

    .line 254
    .line 255
    .line 256
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 267
    .line 268
    .line 269
    return-object p1

    .line 270
    nop

    .line 271
    :array_0
    .array-data 8
        0xcb484cc3e5aeed3L
        0x18f331f71889c30cL
    .end array-data

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
    :array_1
    .array-data 8
        0x7c3034f65b78ca61L    # 1.57941174839793E290
        -0x2b45fd47389ce3ffL    # -1.4222943424384123E100
    .end array-data

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
    :array_2
    .array-data 8
        0x5acde3d06f25ca8cL
        0x3a7cee0086990280L    # 5.8423054842276265E-27
    .end array-data

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
    .line 306
    .line 307
    :array_3
    .array-data 8
        -0x196845d92684b303L    # -1.613106385874873E186
        -0xede255d382d58a7L    # -9.082873431529623E236
        0x4195cac009e7098cL    # 9.140224247562236E7
    .end array-data

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
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    :array_4
    .array-data 8
        0x61b4d980483ea99cL    # 4.690030730045307E162
        -0x18c04d0279b98e67L    # -2.2068119939434844E189
    .end array-data

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
    .line 334
    .line 335
    :array_5
    .array-data 8
        -0x11d319ce6ef419bdL    # -5.223150512661994E222
        0x119dec093db349L
    .end array-data

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :array_6
    .array-data 8
        0x77306f909abe0eedL    # 1.324912014937984E266
        0x4f509e5f76d56405L    # 1.174504106752588E74
        0x2403df84d43f54e3L
    .end array-data

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    :array_7
    .array-data 8
        -0x465b7e3fa0ae94b5L    # -5.055326763346215E-31
        0x708b9d8d46339df7L    # 1.3719508944217456E234
    .end array-data
.end method

.method private final zzl(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhb;)Ljava/net/URL;
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/16 v2, 0x7d1

    .line 4
    .line 5
    if-eqz p2, :cond_4

    .line 6
    .line 7
    :try_start_0
    new-instance v3, Ljava/net/URL;

    .line 8
    .line 9
    invoke-direct {v3, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v5, v0, [J

    .line 19
    .line 20
    fill-array-data v5, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v5, v0, [J

    .line 39
    .line 40
    fill-array-data v5, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    const/4 v0, 0x5

    .line 64
    new-array v0, v0, [J

    .line 65
    .line 66
    fill-array-data v0, :array_2

    .line 67
    .line 68
    .line 69
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhp;

    .line 77
    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {v0, p1, p3, v2, v1}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzb:Z

    .line 87
    .line 88
    if-nez v4, :cond_3

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_2

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzhp;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    const/4 v6, 0x6

    .line 115
    new-array v6, v6, [J

    .line 116
    .line 117
    fill-array-data v6, :array_3

    .line 118
    .line 119
    .line 120
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    new-array v5, v0, [J

    .line 136
    .line 137
    fill-array-data v5, :array_4

    .line 138
    .line 139
    .line 140
    invoke-direct {p1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 154
    .line 155
    new-array p2, v0, [J

    .line 156
    .line 157
    fill-array-data p2, :array_5

    .line 158
    .line 159
    .line 160
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 161
    .line 162
    .line 163
    invoke-static {p1, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-direct {v3, p1, p3, v2, v1}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 168
    .line 169
    .line 170
    throw v3

    .line 171
    :cond_3
    :goto_1
    return-object v3

    .line 172
    :catch_0
    move-exception p1

    .line 173
    new-instance p2, Lcom/google/android/gms/internal/ads/zzhp;

    .line 174
    .line 175
    invoke-direct {p2, p1, p3, v2, v1}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 176
    .line 177
    .line 178
    throw p2

    .line 179
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhp;

    .line 180
    .line 181
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 182
    .line 183
    const/4 v0, 0x4

    .line 184
    new-array v0, v0, [J

    .line 185
    .line 186
    fill-array-data v0, :array_6

    .line 187
    .line 188
    .line 189
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-direct {p1, p2, p3, v2, v1}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 197
    .line 198
    .line 199
    throw p1

    .line 200
    nop

    .line 201
    :array_0
    .array-data 8
        -0x23317ad464b7af4fL    # -1.1357829522603335E139
        -0x1c0301b663415df7L    # -4.4818294899698093E173
    .end array-data

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
    :array_1
    .array-data 8
        -0x33ebc1849f0d6fb9L    # -3.1768521904028574E58
        0x7825abd9cf1fe362L    # 5.724412589901799E270
    .end array-data

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
    :array_2
    .array-data 8
        0x1a6dc33927afb422L
        -0x22748ffec9714a0cL    # -4.182277032956245E142
        0xa86d471c47abe28L
        0x23343a68d6ea2374L
        -0x3db5f2302e3a145L
    .end array-data

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
    :array_3
    .array-data 8
        0x1838952dc3a3b1fbL    # 5.388065646614066E-192
        0x621ff9ad6b836a20L    # 4.6033321338121123E164
        0x5b3b9923f6eefb37L    # 3.060828267509137E131
        0x6127865ed59d9950L    # 1.033558863827827E160
        -0x7e09ccc1cfa5fa7bL    # -3.31497741080419E-299
        0x68f2596ca00c25cdL    # 3.4290751204290426E197
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
    :array_4
    .array-data 8
        -0x147fbb930668ed1cL    # -6.685011305789054E209
        0x454069c5e517d0d2L    # 3.968462422202092E25
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
    :array_5
    .array-data 8
        0x733d9757ac881a8cL    # 1.2931198199416454E247
        0x79aaad9d285679f3L    # 1.1822850609723183E278
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
    :array_6
    .array-data 8
        0x4058bc6f5bca390eL    # 98.94429678676917
        -0x23e8f45c61b99c49L    # -4.1875841619536124E135
        0x30512cc1fd725622L    # 5.932990816906447E-76
        0x774a5ba610602148L    # 4.2495082611591136E266
    .end array-data
.end method

.method private final zzm()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzi:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    new-array v2, v2, [J

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v3, 0x6

    .line 28
    new-array v3, v3, [J

    .line 29
    .line 30
    fill-array-data v3, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzff;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzi:Ljava/net/HttpURLConnection;

    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :array_0
    .array-data 8
        0x4c962ffc08dcc47L
        -0x4534167299c5b7d7L    # -1.8037910041985034E-25
        0x12ffae8d98853862L    # 3.5899933689759785E-217
        -0x3843f5d65709e6f6L    # -3.7271151815851628E37
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_1
    .array-data 8
        0xbed5be0b63bdfa8L
        -0x23a683a9ebffbb3dL    # -7.409594111740148E136
        0x65499d14992bad3eL    # 8.303438557219311E179
        -0x56088f7677b31545L
        0x1388bfc182ac5adaL
        0x2a86de6c135cd1b3L    # 7.976926236232667E-104
    .end array-data
.end method


# virtual methods
.method public final zza([BII)I
    .locals 6

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_2

    .line 5
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzm:J

    .line 6
    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    cmp-long v5, v0, v2

    .line 11
    .line 12
    if-eqz v5, :cond_2

    .line 13
    .line 14
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzn:J

    .line 15
    .line 16
    sub-long/2addr v0, v2

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v5, v0, v2

    .line 20
    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    :goto_0
    const/4 p1, -0x1

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    int-to-long v2, p3

    .line 26
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    long-to-int p3, v0

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception p1

    .line 33
    goto :goto_3

    .line 34
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzj:Ljava/io/InputStream;

    .line 35
    .line 36
    sget v1, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-ne p1, v4, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzn:J

    .line 46
    .line 47
    int-to-long v0, p1

    .line 48
    add-long/2addr p2, v0

    .line 49
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzn:J

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzg(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :goto_2
    return p1

    .line 55
    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzh:Lcom/google/android/gms/internal/ads/zzhb;

    .line 56
    .line 57
    sget p3, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 58
    .line 59
    const/4 p3, 0x2

    .line 60
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhp;->zza(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;I)Lcom/google/android/gms/internal/ads/zzhp;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhb;)J
    .locals 27

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v14, 0x1

    .line 7
    const/4 v15, 0x3

    .line 8
    iput-object v13, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzh:Lcom/google/android/gms/internal/ads/zzhb;

    .line 9
    .line 10
    const-wide/16 v10, 0x0

    .line 11
    .line 12
    iput-wide v10, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzn:J

    .line 13
    .line 14
    iput-wide v10, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzm:J

    .line 15
    .line 16
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzi(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 20
    .line 21
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-wide v7, v13, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 31
    .line 32
    iget-wide v5, v13, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 33
    .line 34
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzhb;->zza(I)Z

    .line 35
    .line 36
    .line 37
    move-result v16

    .line 38
    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzb:Z

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    iget-object v4, v13, Lcom/google/android/gms/internal/ads/zzhb;->zzd:Ljava/util/Map;

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    const/16 v17, 0x0

    .line 47
    .line 48
    const/16 v18, 0x1

    .line 49
    .line 50
    move-object/from16 v1, p0

    .line 51
    .line 52
    move-object/from16 v19, v4

    .line 53
    .line 54
    move-object/from16 v4, v17

    .line 55
    .line 56
    move-wide/from16 v20, v5

    .line 57
    .line 58
    move-wide v5, v7

    .line 59
    move-wide/from16 v7, v20

    .line 60
    .line 61
    move/from16 v9, v16

    .line 62
    .line 63
    move-wide/from16 v22, v10

    .line 64
    .line 65
    move/from16 v10, v18

    .line 66
    .line 67
    move-object/from16 v11, v19

    .line 68
    .line 69
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzhj;->zzk(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    goto/16 :goto_f

    .line 76
    .line 77
    :cond_0
    move-wide/from16 v20, v5

    .line 78
    .line 79
    move-wide/from16 v22, v10

    .line 80
    .line 81
    move-object v11, v2

    .line 82
    const/4 v9, 0x0

    .line 83
    :goto_0
    add-int/lit8 v10, v9, 0x1

    .line 84
    .line 85
    const/16 v1, 0x14

    .line 86
    .line 87
    if-gt v9, v1, :cond_15

    .line 88
    .line 89
    iget-object v9, v13, Lcom/google/android/gms/internal/ads/zzhb;->zzd:Ljava/util/Map;

    .line 90
    .line 91
    const/4 v3, 0x1

    .line 92
    const/4 v4, 0x0

    .line 93
    const/16 v17, 0x0

    .line 94
    .line 95
    move-object/from16 v1, p0

    .line 96
    .line 97
    move-object v2, v11

    .line 98
    move-wide v5, v7

    .line 99
    move-wide/from16 v18, v7

    .line 100
    .line 101
    move-wide/from16 v7, v20

    .line 102
    .line 103
    move-object/from16 v24, v9

    .line 104
    .line 105
    move/from16 v9, v16

    .line 106
    .line 107
    move/from16 v25, v10

    .line 108
    .line 109
    move/from16 v10, v17

    .line 110
    .line 111
    move-object/from16 v26, v11

    .line 112
    .line 113
    move-object/from16 v11, v24

    .line 114
    .line 115
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzhj;->zzk(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    new-array v4, v0, [J

    .line 126
    .line 127
    fill-array-data v4, :array_0

    .line 128
    .line 129
    .line 130
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    const/16 v4, 0x12c

    .line 142
    .line 143
    if-eq v2, v4, :cond_1

    .line 144
    .line 145
    const/16 v4, 0x12d

    .line 146
    .line 147
    if-eq v2, v4, :cond_1

    .line 148
    .line 149
    const/16 v4, 0x12e

    .line 150
    .line 151
    if-eq v2, v4, :cond_1

    .line 152
    .line 153
    const/16 v4, 0x12f

    .line 154
    .line 155
    if-eq v2, v4, :cond_1

    .line 156
    .line 157
    const/16 v4, 0x133

    .line 158
    .line 159
    if-eq v2, v4, :cond_1

    .line 160
    .line 161
    const/16 v4, 0x134

    .line 162
    .line 163
    if-ne v2, v4, :cond_2

    .line 164
    .line 165
    :cond_1
    const/4 v7, 0x0

    .line 166
    goto/16 :goto_e

    .line 167
    .line 168
    :cond_2
    :goto_1
    iput-object v1, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzi:Ljava/net/HttpURLConnection;

    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    iput v2, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzl:I

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    iget v2, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzl:I

    .line 181
    .line 182
    const/16 v4, 0x7d8

    .line 183
    .line 184
    const/4 v5, -0x1

    .line 185
    const/16 v6, 0x1000

    .line 186
    .line 187
    const/16 v7, 0xc8

    .line 188
    .line 189
    const-wide/16 v8, -0x1

    .line 190
    .line 191
    if-lt v2, v7, :cond_3

    .line 192
    .line 193
    const/16 v10, 0x12b

    .line 194
    .line 195
    if-le v2, v10, :cond_4

    .line 196
    .line 197
    :cond_3
    const/4 v7, 0x0

    .line 198
    goto/16 :goto_8

    .line 199
    .line 200
    :cond_4
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    iget v2, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzl:I

    .line 204
    .line 205
    if-ne v2, v7, :cond_5

    .line 206
    .line 207
    iget-wide v10, v13, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 208
    .line 209
    cmp-long v2, v10, v22

    .line 210
    .line 211
    if-nez v2, :cond_6

    .line 212
    .line 213
    :cond_5
    move-wide/from16 v10, v22

    .line 214
    .line 215
    :cond_6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 216
    .line 217
    new-array v3, v15, [J

    .line 218
    .line 219
    fill-array-data v3, :array_1

    .line 220
    .line 221
    .line 222
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 234
    .line 235
    new-array v0, v0, [J

    .line 236
    .line 237
    fill-array-data v0, :array_2

    .line 238
    .line 239
    .line 240
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-nez v0, :cond_9

    .line 252
    .line 253
    iget-wide v2, v13, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 254
    .line 255
    cmp-long v7, v2, v8

    .line 256
    .line 257
    if-eqz v7, :cond_7

    .line 258
    .line 259
    iput-wide v2, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzm:J

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 263
    .line 264
    new-array v3, v15, [J

    .line 265
    .line 266
    fill-array-data v3, :array_3

    .line 267
    .line 268
    .line 269
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 281
    .line 282
    new-array v7, v15, [J

    .line 283
    .line 284
    fill-array-data v7, :array_4

    .line 285
    .line 286
    .line 287
    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzhu;->zza(Ljava/lang/String;Ljava/lang/String;)J

    .line 299
    .line 300
    .line 301
    move-result-wide v2

    .line 302
    cmp-long v7, v2, v8

    .line 303
    .line 304
    if-eqz v7, :cond_8

    .line 305
    .line 306
    sub-long v8, v2, v10

    .line 307
    .line 308
    :cond_8
    iput-wide v8, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzm:J

    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_9
    iget-wide v2, v13, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 312
    .line 313
    iput-wide v2, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzm:J

    .line 314
    .line 315
    :goto_2
    const/16 v2, 0x7d0

    .line 316
    .line 317
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    iput-object v1, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzj:Ljava/io/InputStream;

    .line 322
    .line 323
    if-eqz v0, :cond_a

    .line 324
    .line 325
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 326
    .line 327
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzj:Ljava/io/InputStream;

    .line 328
    .line 329
    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 330
    .line 331
    .line 332
    iput-object v0, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzj:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 333
    .line 334
    goto :goto_3

    .line 335
    :catch_1
    move-exception v0

    .line 336
    goto :goto_7

    .line 337
    :cond_a
    :goto_3
    iput-boolean v14, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzk:Z

    .line 338
    .line 339
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzj(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 340
    .line 341
    .line 342
    cmp-long v0, v10, v22

    .line 343
    .line 344
    if-nez v0, :cond_b

    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_b
    :try_start_2
    new-array v0, v6, [B

    .line 348
    .line 349
    :goto_4
    cmp-long v1, v10, v22

    .line 350
    .line 351
    if-lez v1, :cond_e

    .line 352
    .line 353
    const-wide/16 v6, 0x1000

    .line 354
    .line 355
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 356
    .line 357
    .line 358
    move-result-wide v6

    .line 359
    long-to-int v1, v6

    .line 360
    iget-object v3, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzj:Ljava/io/InputStream;

    .line 361
    .line 362
    sget v6, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 363
    .line 364
    const/4 v7, 0x0

    .line 365
    invoke-virtual {v3, v0, v7, v1}, Ljava/io/InputStream;->read([BII)I

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    if-nez v3, :cond_d

    .line 378
    .line 379
    if-eq v1, v5, :cond_c

    .line 380
    .line 381
    int-to-long v8, v1

    .line 382
    sub-long/2addr v10, v8

    .line 383
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/zzgq;->zzg(I)V

    .line 384
    .line 385
    .line 386
    goto :goto_4

    .line 387
    :catch_2
    move-exception v0

    .line 388
    goto :goto_6

    .line 389
    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhp;

    .line 390
    .line 391
    invoke-direct {v0, v13, v4, v14}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 392
    .line 393
    .line 394
    throw v0

    .line 395
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhp;

    .line 396
    .line 397
    new-instance v1, Ljava/io/InterruptedIOException;

    .line 398
    .line 399
    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 400
    .line 401
    .line 402
    invoke-direct {v0, v1, v13, v2, v14}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 403
    .line 404
    .line 405
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 406
    :cond_e
    :goto_5
    iget-wide v0, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzm:J

    .line 407
    .line 408
    return-wide v0

    .line 409
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhj;->zzm()V

    .line 410
    .line 411
    .line 412
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzhp;

    .line 413
    .line 414
    if-eqz v1, :cond_f

    .line 415
    .line 416
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhp;

    .line 417
    .line 418
    throw v0

    .line 419
    :cond_f
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhp;

    .line 420
    .line 421
    invoke-direct {v1, v0, v13, v2, v14}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 422
    .line 423
    .line 424
    throw v1

    .line 425
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhj;->zzm()V

    .line 426
    .line 427
    .line 428
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhp;

    .line 429
    .line 430
    invoke-direct {v1, v0, v13, v2, v14}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 431
    .line 432
    .line 433
    throw v1

    .line 434
    :goto_8
    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    iget v2, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzl:I

    .line 439
    .line 440
    const/16 v10, 0x1a0

    .line 441
    .line 442
    if-ne v2, v10, :cond_11

    .line 443
    .line 444
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 445
    .line 446
    new-array v11, v15, [J

    .line 447
    .line 448
    fill-array-data v11, :array_5

    .line 449
    .line 450
    .line 451
    invoke-direct {v2, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhu;->zzb(Ljava/lang/String;)J

    .line 463
    .line 464
    .line 465
    move-result-wide v15

    .line 466
    iget-wide v10, v13, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 467
    .line 468
    cmp-long v17, v10, v15

    .line 469
    .line 470
    if-nez v17, :cond_11

    .line 471
    .line 472
    iput-boolean v14, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzk:Z

    .line 473
    .line 474
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzj(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 475
    .line 476
    .line 477
    iget-wide v0, v13, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 478
    .line 479
    cmp-long v2, v0, v8

    .line 480
    .line 481
    if-eqz v2, :cond_10

    .line 482
    .line 483
    return-wide v0

    .line 484
    :cond_10
    return-wide v22

    .line 485
    :cond_11
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    if-eqz v1, :cond_13

    .line 490
    .line 491
    :try_start_3
    sget v8, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 492
    .line 493
    new-array v6, v6, [B

    .line 494
    .line 495
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 496
    .line 497
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 498
    .line 499
    .line 500
    :goto_9
    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I

    .line 501
    .line 502
    .line 503
    move-result v9

    .line 504
    if-eq v9, v5, :cond_12

    .line 505
    .line 506
    invoke-virtual {v8, v6, v7, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 507
    .line 508
    .line 509
    goto :goto_9

    .line 510
    :cond_12
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    :goto_a
    move-object v7, v1

    .line 515
    goto :goto_b

    .line 516
    :cond_13
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfy;->zzf:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 517
    .line 518
    goto :goto_a

    .line 519
    :catch_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfy;->zzf:[B

    .line 520
    .line 521
    goto :goto_a

    .line 522
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhj;->zzm()V

    .line 523
    .line 524
    .line 525
    iget v1, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzl:I

    .line 526
    .line 527
    const/16 v2, 0x1a0

    .line 528
    .line 529
    if-ne v1, v2, :cond_14

    .line 530
    .line 531
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgx;

    .line 532
    .line 533
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(I)V

    .line 534
    .line 535
    .line 536
    :goto_c
    move-object v4, v1

    .line 537
    goto :goto_d

    .line 538
    :cond_14
    const/4 v1, 0x0

    .line 539
    goto :goto_c

    .line 540
    :goto_d
    new-instance v8, Lcom/google/android/gms/internal/ads/zzhr;

    .line 541
    .line 542
    iget v2, v12, Lcom/google/android/gms/internal/ads/zzhj;->zzl:I

    .line 543
    .line 544
    move-object v1, v8

    .line 545
    move-object v5, v0

    .line 546
    move-object/from16 v6, p1

    .line 547
    .line 548
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhr;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzhb;[B)V

    .line 549
    .line 550
    .line 551
    throw v8

    .line 552
    :goto_e
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 553
    .line 554
    .line 555
    move-object/from16 v2, v26

    .line 556
    .line 557
    invoke-direct {v12, v2, v3, v13}, Lcom/google/android/gms/internal/ads/zzhj;->zzl(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhb;)Ljava/net/URL;

    .line 558
    .line 559
    .line 560
    move-result-object v11

    .line 561
    move-wide/from16 v7, v18

    .line 562
    .line 563
    move/from16 v9, v25

    .line 564
    .line 565
    goto/16 :goto_0

    .line 566
    .line 567
    :cond_15
    move/from16 v25, v10

    .line 568
    .line 569
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhp;

    .line 570
    .line 571
    new-instance v1, Ljava/net/NoRouteToHostException;

    .line 572
    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    .line 574
    .line 575
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .line 577
    .line 578
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 579
    .line 580
    const/4 v4, 0x4

    .line 581
    new-array v4, v4, [J

    .line 582
    .line 583
    fill-array-data v4, :array_6

    .line 584
    .line 585
    .line 586
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    move/from16 v9, v25

    .line 597
    .line 598
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    const/16 v2, 0x7d1

    .line 609
    .line 610
    invoke-direct {v0, v1, v13, v2, v14}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 611
    .line 612
    .line 613
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 614
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhj;->zzm()V

    .line 615
    .line 616
    .line 617
    invoke-static {v0, v13, v14}, Lcom/google/android/gms/internal/ads/zzhp;->zza(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;I)Lcom/google/android/gms/internal/ads/zzhp;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    throw v0

    .line 622
    nop

    .line 623
    :array_0
    .array-data 8
        -0x46e219fdf147e8a7L    # -1.439558913400708E-33
        0xd9211bac2e834bcL    # 2.64632867733017E-243
    .end array-data

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    :array_1
    .array-data 8
        -0xd4b9bd744fd4e5eL    # -3.480809624442805E244
        -0x1d5a6fa85148bb43L    # -1.5894748843203722E167
        0x46b94b466abf9587L    # 5.1302414528141625E32
    .end array-data

    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    :array_2
    .array-data 8
        -0x59054a120517e94dL    # -6.464968486607908E-121
        0x35f857299ebc8cbaL    # 1.0409019651458398E-48
    .end array-data

    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    :array_3
    .array-data 8
        -0xca2abd884f5e5eeL
        0xf447f23a597ce2bL    # 4.028988420372902E-235
        0x290471927fd3fbeeL    # 4.250400641563557E-111
    .end array-data

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
    .line 676
    .line 677
    .line 678
    .line 679
    :array_4
    .array-data 8
        -0x2cf08deef1ae9afdL    # -1.2811152598791733E92
        -0x4cb023b661bdaaf8L    # -1.548971623704126E-61
        -0x2a0fa4ad0c24c3a6L    # -9.378536987721585E105
    .end array-data

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
    .line 692
    .line 693
    .line 694
    .line 695
    :array_5
    .array-data 8
        -0x2d764eab38c846f9L    # -4.088824527284266E89
        0x61ba95bd464f7fe1L    # 5.980163019969332E162
        -0x184172025901a15cL    # -5.445460307401847E191
    .end array-data

    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    :array_6
    .array-data 8
        0x731f88ab7cefbe7cL    # 3.445035471311314E246
        0x68dc8b5a4aed4c09L    # 1.3335745116883119E197
        -0x10f3e0570494f049L    # -8.327962862293507E226
        0x1667140e4b298b80L    # 9.42187908532627E-201
    .end array-data
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzi:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final zzd()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzj:Ljava/io/InputStream;

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzi:Ljava/net/HttpURLConnection;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    sget v3, Lcom/google/android/gms/internal/ads/zzfy;->zza:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v2

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception v2

    .line 21
    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzhp;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzh:Lcom/google/android/gms/internal/ads/zzhb;

    .line 24
    .line 25
    sget v5, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 26
    .line 27
    const/16 v5, 0x7d0

    .line 28
    .line 29
    const/4 v6, 0x3

    .line 30
    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 31
    .line 32
    .line 33
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzj:Ljava/io/InputStream;

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhj;->zzm()V

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzk:Z

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzk:Z

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzh()V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void

    .line 49
    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzj:Ljava/io/InputStream;

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhj;->zzm()V

    .line 52
    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzk:Z

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzk:Z

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzh()V

    .line 61
    .line 62
    .line 63
    :cond_3
    throw v2
.end method

.method public final zze()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzi:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgad;->zzd()Lcom/google/android/gms/internal/ads/zzgad;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhh;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzhh;-><init>(Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    return-object v1
.end method
