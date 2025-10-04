.class public final Lcom/v2ray/ang/util/SpeedtestUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u000eJ\u0018\u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000bH\u0007J\u000e\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0006\u0010\u0013\u001a\u00020\u0014R\"\u0010\u0004\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005j\n\u0012\u0006\u0012\u0004\u0018\u00010\u0006`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/v2ray/ang/util/SpeedtestUtil;",
        "",
        "<init>",
        "()V",
        "tcpTestingSockets",
        "Ljava/util/ArrayList;",
        "Ljava/net/Socket;",
        "Lkotlin/collections/ArrayList;",
        "tcping",
        "",
        "url",
        "",
        "port",
        "",
        "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPing",
        "count",
        "ping",
        "socketConnectTime",
        "closeAllTcpSockets",
        "",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSpeedtestUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpeedtestUtil.kt\ncom/v2ray/ang/util/SpeedtestUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,132:1\n1#2:133\n739#3,9:134\n739#3,9:147\n1869#3,2:160\n37#4:143\n36#4,3:144\n37#4:156\n36#4,3:157\n*S KotlinDebug\n*F\n+ 1 SpeedtestUtil.kt\ncom/v2ray/ang/util/SpeedtestUtil\n*L\n66#1:134,9\n84#1:147,9\n122#1:160,2\n66#1:143\n66#1:144,3\n84#1:156\n84#1:157,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/v2ray/ang/util/SpeedtestUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final tcpTestingSockets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/v2ray/ang/util/SpeedtestUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/v2ray/ang/util/SpeedtestUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/v2ray/ang/util/SpeedtestUtil;->INSTANCE:Lcom/v2ray/ang/util/SpeedtestUtil;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/v2ray/ang/util/SpeedtestUtil;->tcpTestingSockets:Ljava/util/ArrayList;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final getPing(Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "/system/bin/ping -c "

    .line 3
    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    new-array v4, v3, [J

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v4, v3, [J

    .line 25
    .line 26
    fill-array-data v4, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, " "

    .line 48
    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    const/4 v1, 0x4

    .line 74
    new-array v1, v1, [J

    .line 75
    .line 76
    fill-array-data v1, :array_2

    .line 77
    .line 78
    .line 79
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 90
    .line 91
    new-instance v1, Ljava/io/InputStreamReader;

    .line 92
    .line 93
    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 94
    .line 95
    .line 96
    new-instance p0, Ljava/io/BufferedReader;

    .line 97
    .line 98
    const/16 p1, 0x2000

    .line 99
    .line 100
    invoke-direct {p0, v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    :try_start_1
    invoke-static {p0}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    const/4 v1, 0x0

    .line 108
    :try_start_2
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-nez p0, :cond_3

    .line 116
    .line 117
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v1, v0, [J

    .line 120
    .line 121
    fill-array-data v1, :array_3

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    const/4 v8, 0x6

    .line 132
    const/4 v9, 0x0

    .line 133
    const/4 v6, 0x0

    .line 134
    const/4 v7, 0x0

    .line 135
    move-object v4, p1

    .line 136
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    add-int/lit8 p0, p0, 0x13

    .line 141
    .line 142
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    new-array v0, v0, [J

    .line 149
    .line 150
    fill-array-data v0, :array_4

    .line 151
    .line 152
    .line 153
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance p1, Lkotlin/text/Regex;

    .line 164
    .line 165
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 166
    .line 167
    new-array v1, v3, [J

    .line 168
    .line 169
    fill-array-data v1, :array_5

    .line 170
    .line 171
    .line 172
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-direct {p1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const/4 v0, 0x0

    .line 183
    invoke-virtual {p1, p0, v0}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    const/4 v1, 0x1

    .line 192
    if-nez p1, :cond_1

    .line 193
    .line 194
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    invoke-interface {p0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_1

    .line 207
    .line 208
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Ljava/lang/String;

    .line 213
    .line 214
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-nez v2, :cond_0

    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    .line 222
    .line 223
    invoke-interface {p1}, Ljava/util/ListIterator;->nextIndex()I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    add-int/2addr p1, v1

    .line 228
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    goto :goto_1

    .line 233
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    :goto_1
    check-cast p0, Ljava/util/Collection;

    .line 238
    .line 239
    new-array p1, v0, [Ljava/lang/String;

    .line 240
    .line 241
    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    check-cast p0, [Ljava/lang/String;

    .line 246
    .line 247
    array-length p1, p0

    .line 248
    if-nez p1, :cond_2

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_2
    const/4 v1, 0x0

    .line 252
    :goto_2
    if-nez v1, :cond_3

    .line 253
    .line 254
    aget-object p1, p0, v0

    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    const/16 v1, 0xa

    .line 261
    .line 262
    if-ge p1, v1, :cond_3

    .line 263
    .line 264
    aget-object p0, p0, v0

    .line 265
    .line 266
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 267
    .line 268
    .line 269
    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 270
    float-to-int p0, p0

    .line 271
    int-to-long p0, p0

    .line 272
    return-wide p0

    .line 273
    :catchall_0
    move-exception p1

    .line 274
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 275
    :catchall_1
    move-exception v0

    .line 276
    :try_start_4
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 277
    .line 278
    .line 279
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 280
    :catch_0
    :cond_3
    const-wide/16 p0, -0x1

    .line 281
    .line 282
    return-wide p0

    .line 283
    :array_0
    .array-data 8
        -0x554053f62dd6381cL    # -8.838067643204034E-103
        0x7517445bb33e19cdL    # 1.0917348499323188E256
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
    :array_1
    .array-data 8
        -0x7cfcfd17fbd468f0L    # -3.720893724407891E-294
        -0x3272a396d21b1dd7L    # -3.8650900997287213E65
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
    :array_2
    .array-data 8
        0x54280c9057107f60L    # 2.5684258834943925E97
        -0x7ff69f984d7b093cL
        -0x234b4e0b3654383fL    # -3.850759727421389E138
        -0x8306fb4757a0e75L
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
    .line 324
    .line 325
    .line 326
    .line 327
    :array_3
    .array-data 8
        -0x19fe93f6aff76000L
        0x763916927dd54e02L    # 3.0859244236913523E261
        0x48f43e8db0640da6L    # 2.821650499848445E43
    .end array-data

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
    :array_4
    .array-data 8
        0xfb5310cc9bcd9f9L    # 5.331963170093923E-233
        0x30b888cdc2525b60L    # 5.424207981506759E-74
        0x23e229ae4c80a947L    # 7.808994980630024E-136
    .end array-data

    .line 344
    .line 345
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
    :array_5
    .array-data 8
        -0x2d90a2c071b55071L    # -1.24785366658201E89
        0x1511d58600e0c42aL
    .end array-data
.end method


# virtual methods
.method public final closeAllTcpSockets()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/v2ray/ang/util/SpeedtestUtil;->tcpTestingSockets:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/net/Socket;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    sget-object v0, Lcom/v2ray/ang/util/SpeedtestUtil;->tcpTestingSockets:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit p0

    .line 36
    throw v0
.end method

.method public final ping(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "/system/bin/ping -c 3 "

    .line 3
    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    new-array v4, v3, [J

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 v2, 0x4

    .line 49
    new-array v2, v2, [J

    .line 50
    .line 51
    fill-array-data v2, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 65
    .line 66
    new-instance v2, Ljava/io/InputStreamReader;

    .line 67
    .line 68
    invoke-direct {v2, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Ljava/io/BufferedReader;

    .line 72
    .line 73
    const/16 v1, 0x2000

    .line 74
    .line 75
    invoke-direct {p1, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    :try_start_1
    invoke-static {p1}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    const/4 v2, 0x0

    .line 83
    :try_start_2
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_3

    .line 91
    .line 92
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v2, v0, [J

    .line 95
    .line 96
    fill-array-data v2, :array_2

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const/4 v8, 0x6

    .line 107
    const/4 v9, 0x0

    .line 108
    const/4 v6, 0x0

    .line 109
    const/4 v7, 0x0

    .line 110
    move-object v4, v1

    .line 111
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    add-int/lit8 p1, p1, 0x13

    .line 116
    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v0, v0, [J

    .line 124
    .line 125
    fill-array-data v0, :array_3

    .line 126
    .line 127
    .line 128
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Lkotlin/text/Regex;

    .line 139
    .line 140
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v2, v3, [J

    .line 143
    .line 144
    fill-array-data v2, :array_4

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const/4 v1, 0x0

    .line 158
    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    const/4 v2, 0x1

    .line 167
    if-nez v0, :cond_1

    .line 168
    .line 169
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_1

    .line 182
    .line 183
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    check-cast v4, Ljava/lang/String;

    .line 188
    .line 189
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-nez v4, :cond_0

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 197
    .line 198
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    add-int/2addr v0, v2

    .line 203
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    goto :goto_1

    .line 208
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    :goto_1
    check-cast p1, Ljava/util/Collection;

    .line 213
    .line 214
    new-array v0, v1, [Ljava/lang/String;

    .line 215
    .line 216
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    check-cast p1, [Ljava/lang/String;

    .line 221
    .line 222
    array-length v0, p1

    .line 223
    if-nez v0, :cond_2

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_2
    const/4 v2, 0x0

    .line 227
    :goto_2
    if-nez v2, :cond_3

    .line 228
    .line 229
    aget-object v0, p1, v1

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    const/16 v2, 0xa

    .line 236
    .line 237
    if-ge v0, v2, :cond_3

    .line 238
    .line 239
    aget-object p1, p1, v1

    .line 240
    .line 241
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    float-to-int p1, p1

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string p1, "ms"

    .line 255
    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 263
    return-object p1

    .line 264
    :catchall_0
    move-exception v0

    .line 265
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 266
    :catchall_1
    move-exception v1

    .line 267
    :try_start_4
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 268
    .line 269
    .line 270
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 271
    :catch_0
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v0, v3, [J

    .line 274
    .line 275
    fill-array-data v0, :array_5

    .line 276
    .line 277
    .line 278
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    return-object p1

    .line 286
    nop

    .line 287
    :array_0
    .array-data 8
        0x63d3f133a42d333cL    # 7.70673579083128E172
        0x12be4eda385d0016L
    .end array-data

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
    :array_1
    .array-data 8
        -0x5d921daccac9d5daL    # -7.658293208304582E-143
        -0x14b7d14661a4af9fL    # -6.211100618534304E208
        -0x174066c97962c2adL    # -3.69065539172446E196
        0x7fdb67f9ff24dcceL    # 7.698103562793207E307
    .end array-data

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
    .line 318
    .line 319
    :array_2
    .array-data 8
        0x3488b28da7139038L    # 1.2590510710920395E-55
        -0x21e7cbee1f0f2ae7L    # -1.888923050412442E145
        -0x4ec717454ff8aad4L    # -1.4098050206747652E-71
    .end array-data

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
    :array_3
    .array-data 8
        0x7eb3b8228dbc875cL    # 2.112937529762958E302
        0x4b86b5c2b65fbf22L    # 6.960595459350865E55
        0x3c3c9658569763ffL    # 1.5497198486874523E-18
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
    .line 348
    .line 349
    .line 350
    .line 351
    :array_4
    .array-data 8
        -0x4ee0a9b48377e184L    # -4.4340410039647297E-72
        -0x7e15b67835bde479L    # -1.9626330999679117E-299
    .end array-data

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
    :array_5
    .array-data 8
        -0x63ad742bca28908aL    # -2.999422102907823E-172
        0x4b07746b08c9f839L    # 2.808149404335109E53
    .end array-data
.end method

.method public final socketConnectTime(Ljava/lang/String;I)J
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 22
    .line 23
    .line 24
    monitor-enter p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    :try_start_1
    sget-object v1, Lcom/v2ray/ang/util/SpeedtestUtil;->tcpTestingSockets:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .line 29
    .line 30
    :try_start_2
    monitor-exit p0

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 36
    .line 37
    invoke-direct {v4, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const/16 p1, 0xbb8

    .line 41
    .line 42
    invoke-virtual {v0, v4, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide p1

    .line 49
    sub-long/2addr p1, v2

    .line 50
    monitor-enter p0
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 51
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    .line 53
    .line 54
    :try_start_4
    monitor-exit p0

    .line 55
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 56
    .line 57
    .line 58
    return-wide p1

    .line 59
    :catch_0
    move-exception p1

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    monitor-exit p0

    .line 63
    throw p1

    .line 64
    :catchall_1
    move-exception p1

    .line 65
    monitor-exit p0

    .line 66
    throw p1
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 67
    :goto_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    const/4 v0, 0x3

    .line 70
    new-array v0, v0, [J

    .line 71
    .line 72
    fill-array-data v0, :array_1

    .line 73
    .line 74
    .line 75
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    :catch_1
    const-wide/16 p1, -0x1

    .line 85
    .line 86
    return-wide p1

    .line 87
    :array_0
    .array-data 8
        0x8eba4899fd97212L
        -0x730c11b19227eb1fL
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_1
    .array-data 8
        -0x5f86af302f932647L
        -0x125388faaab8185bL    # -2.0096336473115803E220
        -0x6d5f5bba30c60ce4L    # -5.892920662372224E-219
    .end array-data
.end method

.method public final tcping(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move-wide v3, v0

    .line 5
    :goto_0
    const/4 v5, 0x2

    .line 6
    if-ge v2, v5, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/util/SpeedtestUtil;->socketConnectTime(Ljava/lang/String;I)J

    .line 9
    .line 10
    .line 11
    move-result-wide v5

    .line 12
    invoke-interface {p3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 13
    .line 14
    .line 15
    move-result-object v7

    .line 16
    invoke-static {v7}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    if-nez v7, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    cmp-long v7, v5, v0

    .line 24
    .line 25
    if-eqz v7, :cond_2

    .line 26
    .line 27
    cmp-long v7, v3, v0

    .line 28
    .line 29
    if-eqz v7, :cond_1

    .line 30
    .line 31
    cmp-long v7, v5, v3

    .line 32
    .line 33
    if-gez v7, :cond_2

    .line 34
    .line 35
    :cond_1
    move-wide v3, v5

    .line 36
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    :goto_1
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method
