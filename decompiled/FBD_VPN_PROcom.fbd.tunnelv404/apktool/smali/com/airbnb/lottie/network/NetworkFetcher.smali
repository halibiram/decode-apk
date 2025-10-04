.class public Lcom/airbnb/lottie/network/NetworkFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final networkCache:Lcom/airbnb/lottie/network/NetworkCache;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/network/NetworkCache;Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/network/NetworkCache;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/lottie/network/LottieNetworkFetcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    .line 7
    .line 8
    return-void
.end method

.method private fetchFromCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_4

    .line 3
    .line 4
    iget-object v1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v1, p2}, Lcom/airbnb/lottie/network/NetworkCache;->fetch(Ljava/lang/String;)Landroid/util/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lcom/airbnb/lottie/network/FileExtension;

    .line 19
    .line 20
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p2, Ljava/io/InputStream;

    .line 23
    .line 24
    sget-object v2, Lcom/airbnb/lottie/network/NetworkFetcher$1;->$SwitchMap$com$airbnb$lottie$network$FileExtension:[I

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    aget v1, v2, v1

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-eq v1, v2, :cond_3

    .line 34
    .line 35
    const/4 p1, 0x2

    .line 36
    if-eq v1, p1, :cond_2

    .line 37
    .line 38
    invoke-static {p2, p3}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :try_start_0
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p3}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 49
    .line 50
    .line 51
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    new-instance p2, Lcom/airbnb/lottie/LottieResult;

    .line 55
    .line 56
    invoke-direct {p2, p1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    move-object p1, p2

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    new-instance v1, Ljava/util/zip/ZipInputStream;

    .line 62
    .line 63
    invoke-direct {v1, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v1, p3}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :goto_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-eqz p2, :cond_4

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    .line 81
    .line 82
    return-object p1

    .line 83
    :cond_4
    :goto_1
    return-object v0
.end method

.method private fetchFromNetwork(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    new-array v3, v3, [J

    .line 11
    .line 12
    fill-array-data v3, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    .line 37
    .line 38
    invoke-interface {v2, p2}, Lcom/airbnb/lottie/network/LottieNetworkFetcher;->fetchSync(Ljava/lang/String;)Lcom/airbnb/lottie/network/LottieFetchResult;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Lcom/airbnb/lottie/network/LottieFetchResult;->isSuccessful()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-interface {v1}, Lcom/airbnb/lottie/network/LottieFetchResult;->bodyByteStream()Ljava/io/InputStream;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-interface {v1}, Lcom/airbnb/lottie/network/LottieFetchResult;->contentType()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    move-object v3, p0

    .line 57
    move-object v4, p1

    .line 58
    move-object v5, p2

    .line 59
    move-object v8, p3

    .line 60
    invoke-direct/range {v3 .. v8}, Lcom/airbnb/lottie/network/NetworkFetcher;->fromInputStream(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v2, 0x6

    .line 72
    new-array v2, v2, [J

    .line 73
    .line 74
    fill-array-data v2, :array_1

    .line 75
    .line 76
    .line 77
    invoke-direct {p3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    if-eqz p3, :cond_0

    .line 92
    .line 93
    const/4 p3, 0x1

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    const/4 p3, 0x0

    .line 96
    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-static {p2}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    :try_start_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-exception p2

    .line 111
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    new-array v0, v0, [J

    .line 114
    .line 115
    fill-array-data v0, :array_2

    .line 116
    .line 117
    .line 118
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    invoke-static {p3, p2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    return-object p1

    .line 129
    :catchall_0
    move-exception p1

    .line 130
    goto :goto_5

    .line 131
    :catch_1
    move-exception p1

    .line 132
    goto :goto_3

    .line 133
    :cond_1
    :try_start_2
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    .line 134
    .line 135
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 136
    .line 137
    invoke-interface {v1}, Lcom/airbnb/lottie/network/LottieFetchResult;->error()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .line 146
    .line 147
    :try_start_3
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catch_2
    move-exception p2

    .line 152
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 153
    .line 154
    new-array v0, v0, [J

    .line 155
    .line 156
    fill-array-data v0, :array_3

    .line 157
    .line 158
    .line 159
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    invoke-static {p3, p2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    :goto_2
    return-object p1

    .line 170
    :goto_3
    :try_start_4
    new-instance p2, Lcom/airbnb/lottie/LottieResult;

    .line 171
    .line 172
    invoke-direct {p2, p1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 173
    .line 174
    .line 175
    if-eqz v1, :cond_2

    .line 176
    .line 177
    :try_start_5
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :catch_3
    move-exception p1

    .line 182
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 183
    .line 184
    new-array v0, v0, [J

    .line 185
    .line 186
    fill-array-data v0, :array_4

    .line 187
    .line 188
    .line 189
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    invoke-static {p3, p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    :cond_2
    :goto_4
    return-object p2

    .line 200
    :goto_5
    if-eqz v1, :cond_3

    .line 201
    .line 202
    :try_start_6
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 203
    .line 204
    .line 205
    goto :goto_6

    .line 206
    :catch_4
    move-exception p2

    .line 207
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 208
    .line 209
    new-array v0, v0, [J

    .line 210
    .line 211
    fill-array-data v0, :array_5

    .line 212
    .line 213
    .line 214
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p3

    .line 221
    invoke-static {p3, p2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    .line 223
    .line 224
    :cond_3
    :goto_6
    throw p1

    .line 225
    :array_0
    .array-data 8
        -0x7e675b2c2c1917f6L    # -5.749803844214552E-301
        -0x1c31b9bc64dfbec5L    # -5.849841088439173E172
        0x4029da76cf3f675bL    # 12.926687695016588
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
    :array_1
    .array-data 8
        -0x171cef7552b8e77dL    # -1.7813745374217522E197
        -0x29c3b43ee2883e53L    # -2.5958657171582008E107
        -0x5675ebe942afb729L
        -0x7019ce8765807748L
        0x283ddac4d743c4f5L    # 7.576915222191284E-115
        0x3b9c546e0a2b9adL
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
    :array_2
    .array-data 8
        -0x2a5b5fc0da7b91aeL    # -3.695751471270375E104
        0x2ffa5494ae57444cL    # 1.421210737804787E-77
        -0x1f617e614c073893L    # -2.6177471019063014E157
        0x68d8196594ddad98L
        0x16ebf3d449840aa8L
    .end array-data

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
    :array_3
    .array-data 8
        -0x65976098909059baL    # -1.854333328090789E-181
        0x5aba9742f714a0e8L    # 1.1519951104838752E129
        -0x45ea1f7398166a3cL    # -6.903208950540196E-29
        -0x6d4b80755f1c9dbcL
        -0x7894cda8a708380fL    # -6.284189589712454E-273
    .end array-data

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
    :array_4
    .array-data 8
        -0x27cec823978049b4L    # -6.784318954457833E116
        0x64ecf648e0171757L    # 1.4670224031240044E178
        0x6e95c17ddb223981L    # 5.0330630693788705E224
        -0x64d47768c4b2cfd5L    # -8.493269433039063E-178
        -0x6ea6d566fb11feb9L    # -4.249367598190185E-225
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
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    :array_5
    .array-data 8
        -0x26eb427a64921943L    # -1.3389172154781928E121
        -0x797904f1000d3eadL
        -0x783959d8089358e9L
        -0x6fd4e1c6cdbec133L    # -8.733573019497986E-231
        0x263f9682677dc6abL
    .end array-data
.end method

.method private fromGzipStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    iget-object p3, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->GZIP:Lcom/airbnb/lottie/network/FileExtension;

    .line 9
    .line 10
    invoke-virtual {p3, p1, p2, v0}, Lcom/airbnb/lottie/network/NetworkCache;->writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance p3, Ljava/util/zip/GZIPInputStream;

    .line 15
    .line 16
    new-instance v0, Ljava/io/FileInputStream;

    .line 17
    .line 18
    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p3, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p3, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-static {p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method private fromInputStream(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x4

    .line 4
    if-nez p4, :cond_0

    .line 5
    .line 6
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    new-array v3, v0, [J

    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p4, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v4, v0, [J

    .line 23
    .line 24
    fill-array-data v4, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_4

    .line 39
    .line 40
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array v4, v2, [J

    .line 43
    .line 44
    fill-array-data v4, :array_2

    .line 45
    .line 46
    .line 47
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {p4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_4

    .line 59
    .line 60
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    const/4 v4, 0x5

    .line 63
    new-array v4, v4, [J

    .line 64
    .line 65
    fill-array-data v4, :array_3

    .line 66
    .line 67
    .line 68
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {p4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_4

    .line 80
    .line 81
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v4, v1, [J

    .line 84
    .line 85
    fill-array-data v4, :array_4

    .line 86
    .line 87
    .line 88
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const/4 v4, 0x0

    .line 100
    aget-object v3, v3, v4

    .line 101
    .line 102
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v6, v1, [J

    .line 105
    .line 106
    fill-array-data v6, :array_5

    .line 107
    .line 108
    .line 109
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_1

    .line 121
    .line 122
    goto/16 :goto_1

    .line 123
    .line 124
    :cond_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 125
    .line 126
    new-array v0, v0, [J

    .line 127
    .line 128
    fill-array-data v0, :array_6

    .line 129
    .line 130
    .line 131
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-nez p1, :cond_3

    .line 143
    .line 144
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v0, v2, [J

    .line 147
    .line 148
    fill-array-data v0, :array_7

    .line 149
    .line 150
    .line 151
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_3

    .line 163
    .line 164
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    new-array p4, v1, [J

    .line 167
    .line 168
    fill-array-data p4, :array_8

    .line 169
    .line 170
    .line 171
    invoke-direct {p1, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    aget-object p1, p1, v4

    .line 183
    .line 184
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 185
    .line 186
    new-array v0, v1, [J

    .line 187
    .line 188
    fill-array-data v0, :array_9

    .line 189
    .line 190
    .line 191
    invoke-direct {p4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p4

    .line 198
    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_2

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    new-array p4, v2, [J

    .line 208
    .line 209
    fill-array-data p4, :array_a

    .line 210
    .line 211
    .line 212
    invoke-direct {p1, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    sget-object p1, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    .line 223
    .line 224
    invoke-direct {p0, p2, p3, p5}, Lcom/airbnb/lottie/network/NetworkFetcher;->fromJsonStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 225
    .line 226
    .line 227
    move-result-object p3

    .line 228
    goto :goto_2

    .line 229
    :cond_3
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 230
    .line 231
    new-array p4, v2, [J

    .line 232
    .line 233
    fill-array-data p4, :array_b

    .line 234
    .line 235
    .line 236
    invoke-direct {p1, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    sget-object p1, Lcom/airbnb/lottie/network/FileExtension;->GZIP:Lcom/airbnb/lottie/network/FileExtension;

    .line 247
    .line 248
    invoke-direct {p0, p2, p3, p5}, Lcom/airbnb/lottie/network/NetworkFetcher;->fromGzipStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 249
    .line 250
    .line 251
    move-result-object p3

    .line 252
    goto :goto_2

    .line 253
    :cond_4
    :goto_1
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 254
    .line 255
    new-array v0, v2, [J

    .line 256
    .line 257
    fill-array-data v0, :array_c

    .line 258
    .line 259
    .line 260
    invoke-direct {p4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p4

    .line 267
    invoke-static {p4}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    sget-object p4, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    .line 271
    .line 272
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/airbnb/lottie/network/NetworkFetcher;->fromZipStream(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 273
    .line 274
    .line 275
    move-result-object p3

    .line 276
    move-object p1, p4

    .line 277
    :goto_2
    if-eqz p5, :cond_5

    .line 278
    .line 279
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p4

    .line 283
    if-eqz p4, :cond_5

    .line 284
    .line 285
    iget-object p4, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 286
    .line 287
    if-eqz p4, :cond_5

    .line 288
    .line 289
    invoke-virtual {p4, p2, p1}, Lcom/airbnb/lottie/network/NetworkCache;->renameTempFile(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;)V

    .line 290
    .line 291
    .line 292
    :cond_5
    return-object p3

    .line 293
    :array_0
    .array-data 8
        -0x73a0ac3ebdb258b1L    # -4.375470197805522E-249
        -0x5ba38413b108fc03L    # -1.567559546775568E-133
        -0x5db9a116d20b21ecL
    .end array-data

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
    .line 306
    .line 307
    .line 308
    .line 309
    :array_1
    .array-data 8
        0x2777d747f4bddf6cL
        -0x231bf421263abf87L    # -2.9840337720318505E139
        0x2fc00f13bcdfc515L    # 1.0834947138971007E-78
    .end array-data

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
    .line 324
    .line 325
    :array_2
    .array-data 8
        0x33dd1a949eb546ecL    # 7.244543214220226E-59
        -0x76635ddf9061d20cL
        -0x4eb3261ec9bc19e3L    # -3.2658279584167194E-71
        -0x1e9dc61f23fb039eL    # -1.281212433166875E161
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
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :array_3
    .array-data 8
        -0x46e8d736c9b3f955L    # -1.1150807091704265E-33
        -0x58c61c6e410e46b0L
        0x6614c2a79c622a8cL    # 5.513310636311721E183
        0x1f12424113866789L    # 5.194869714827163E-159
        -0x44bfb90fdfb12f1dL    # -2.6928205636741346E-23
    .end array-data

    .line 346
    .line 347
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
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :array_4
    .array-data 8
        -0x5caa0e3b2ee56f25L    # -1.842747798077509E-138
        0x27407e5fc3b4027bL    # 1.277463415895131E-119
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    :array_5
    .array-data 8
        0x47f1f5e86c4c358eL    # 3.819792441270369E38
        -0x73b82a900df4a25bL
    .end array-data

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    :array_6
    .array-data 8
        0x145728b45e933043L
        0x39e0842a7e2b805bL    # 6.514521188441323E-30
        0x2f911811f51df1ccL    # 1.4416686780378996E-79
    .end array-data

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    :array_7
    .array-data 8
        -0x4b2d3a7b12d51ac5L    # -3.0622535344928553E-54
        -0x253a05037c11cb59L    # -1.904513504335195E129
        0x798f044025e48486L    # 3.4363727514072704E277
        -0x7129adfe3bc4e923L
    .end array-data

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    :array_8
    .array-data 8
        0x7f21d18f8bbc55baL
        -0x59e5eedd6216954eL    # -3.850807176169516E-125
    .end array-data

    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    :array_9
    .array-data 8
        0x1711fbc852ad13b8L
        0x2fae514ee958d698L    # 5.1138279906140235E-79
    .end array-data

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    :array_a
    .array-data 8
        0x765157f842ca4c90L    # 8.533285826864121E261
        0x4041373889da40c5L    # 34.431412917679644
        0x790eed1e3d114066L    # 1.3384224655324428E275
        0x31e14146d146d9c7L    # 2.000071978550788E-68
    .end array-data

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    :array_b
    .array-data 8
        0x6bca10ca16eece59L    # 1.713856403895545E211
        -0x7899d66b114cc896L    # -5.12095894864607E-273
        0x3c247ad3be72fae4L    # 5.551059139301862E-19
        0x36a946982d8e76fcL    # 2.213680190243962E-45
    .end array-data

    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
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
    :array_c
    .array-data 8
        -0x26e5cedced7827b3L    # -1.6908534379582813E121
        0x15e40195856209dfL
        0x78c276d16a3e1a51L    # 4.9943042270800945E273
        0x525c8d97242bbd2eL    # 5.68004555063471E88
    .end array-data
.end method

.method private fromJsonStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    iget-object p3, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    .line 9
    .line 10
    invoke-virtual {p3, p1, p2, v0}, Lcom/airbnb/lottie/network/NetworkCache;->writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance p3, Ljava/io/FileInputStream;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-direct {p3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p3, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 29
    invoke-static {p2, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method private fromZipStream(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_1

    .line 2
    .line 3
    iget-object p4, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 4
    .line 5
    if-nez p4, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    .line 9
    .line 10
    invoke-virtual {p4, p2, p3, v0}, Lcom/airbnb/lottie/network/NetworkCache;->writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    new-instance p4, Ljava/util/zip/ZipInputStream;

    .line 15
    .line 16
    new-instance v0, Ljava/io/FileInputStream;

    .line 17
    .line 18
    invoke-direct {v0, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p4, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p4, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_1
    :goto_0
    new-instance p2, Ljava/util/zip/ZipInputStream;

    .line 30
    .line 31
    invoke-direct {p2, p3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    .line 33
    .line 34
    const/4 p3, 0x0

    .line 35
    invoke-static {p1, p2, p3}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method


# virtual methods
.method public fetchSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    .line 8
    .line 9
    invoke-direct {p1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    new-array v2, v2, [J

    .line 22
    .line 23
    fill-array-data v2, :array_0

    .line 24
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
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v2, 0x7

    .line 42
    new-array v2, v2, [J

    .line 43
    .line 44
    fill-array-data v2, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromNetwork(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :array_0
    .array-data 8
        -0x1b37c08b00776bdL
        -0x2f5008634f687a9aL    # -4.7379876952209047E80
        -0x17920521fe0ff6dcL    # -1.0942539351874714E195
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :array_1
    .array-data 8
        -0x3ff01c1ba4108894L    # -3.9862754042105077
        0x45fb0796f132348eL    # 1.338443288027047E29
        -0xd275e7044a2656eL    # -1.681822990966653E245
        0x6b6fb11fb4e6dda3L    # 3.2559306380173902E209
        0x64d18d87f22c5d26L    # 4.445547343651925E177
        -0x78d69fbf60d1cf82L    # -3.664686984015481E-274
        -0xb685efffaf94118L    # -4.330918299983626E253
    .end array-data
.end method
