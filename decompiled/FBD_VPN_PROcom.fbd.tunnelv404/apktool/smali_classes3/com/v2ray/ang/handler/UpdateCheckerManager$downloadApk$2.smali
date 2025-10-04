.class final Lcom/v2ray/ang/handler/UpdateCheckerManager$downloadApk$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v2ray/ang/handler/UpdateCheckerManager;->downloadApk(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/File;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.v2ray.ang.handler.UpdateCheckerManager$downloadApk$2"
    f = "UpdateCheckerManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $downloadUrl:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/v2ray/ang/handler/UpdateCheckerManager$downloadApk$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/v2ray/ang/handler/UpdateCheckerManager$downloadApk$2;->$downloadUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/v2ray/ang/handler/UpdateCheckerManager$downloadApk$2;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/v2ray/ang/handler/UpdateCheckerManager$downloadApk$2;

    iget-object v0, p0, Lcom/v2ray/ang/handler/UpdateCheckerManager$downloadApk$2;->$downloadUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/v2ray/ang/handler/UpdateCheckerManager$downloadApk$2;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p2}, Lcom/v2ray/ang/handler/UpdateCheckerManager$downloadApk$2;-><init>(Ljava/lang/String;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/handler/UpdateCheckerManager$downloadApk$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/handler/UpdateCheckerManager$downloadApk$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/v2ray/ang/handler/UpdateCheckerManager$downloadApk$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/v2ray/ang/handler/UpdateCheckerManager$downloadApk$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget v1, p0, Lcom/v2ray/ang/handler/UpdateCheckerManager$downloadApk$2;->label:I

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    :try_start_0
    sget-object v1, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/v2ray/ang/handler/SettingsManager;->getHttpPort()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    sget-object v2, Lcom/v2ray/ang/util/HttpUtil;->INSTANCE:Lcom/v2ray/ang/util/HttpUtil;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/v2ray/ang/handler/UpdateCheckerManager$downloadApk$2;->$downloadUrl:Ljava/lang/String;

    .line 22
    .line 23
    const/16 v6, 0x2710

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    const/16 v5, 0x2710

    .line 27
    .line 28
    invoke-virtual/range {v2 .. v7}, Lcom/v2ray/ang/util/HttpUtil;->createProxyConnection(Ljava/lang/String;IIIZ)Ljava/net/HttpURLConnection;

    .line 29
    .line 30
    .line 31
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    :try_start_1
    new-instance v2, Ljava/io/File;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/v2ray/ang/handler/UpdateCheckerManager$downloadApk$2;->$context:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v5, v0, [J

    .line 45
    .line 46
    fill-array-data v5, :array_0

    .line 47
    .line 48
    .line 49
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v4, v0, [J

    .line 62
    .line 63
    fill-array-data v4, :array_1

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    new-instance v3, Ljava/io/FileOutputStream;

    .line 76
    .line 77
    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    .line 80
    :try_start_2
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 81
    .line 82
    .line 83
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    :try_start_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    const/4 v6, 0x2

    .line 89
    invoke-static {v4, v3, v5, v6, p1}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 90
    .line 91
    .line 92
    :try_start_4
    invoke-static {v4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 93
    .line 94
    .line 95
    :try_start_5
    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v4, v0, [J

    .line 101
    .line 102
    fill-array-data v4, :array_2

    .line 103
    .line 104
    .line 105
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    const/4 v4, 0x4

    .line 114
    new-array v4, v4, [J

    .line 115
    .line 116
    fill-array-data v4, :array_3

    .line 117
    .line 118
    .line 119
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 123
    .line 124
    .line 125
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    :try_start_7
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    new-array v4, v0, [J

    .line 133
    .line 134
    fill-array-data v4, :array_4

    .line 135
    .line 136
    .line 137
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 144
    .line 145
    .line 146
    :goto_0
    return-object v2

    .line 147
    :catch_1
    move-exception v1

    .line 148
    goto :goto_6

    .line 149
    :catchall_0
    move-exception v2

    .line 150
    goto :goto_4

    .line 151
    :catch_2
    move-exception v2

    .line 152
    goto :goto_2

    .line 153
    :catchall_1
    move-exception v2

    .line 154
    goto :goto_1

    .line 155
    :catchall_2
    move-exception v2

    .line 156
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 157
    :catchall_3
    move-exception v5

    .line 158
    :try_start_9
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 162
    :goto_1
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 163
    :catchall_4
    move-exception v4

    .line 164
    :try_start_b
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    throw v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 168
    :goto_2
    :try_start_c
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v4, v0, [J

    .line 171
    .line 172
    fill-array-data v4, :array_5

    .line 173
    .line 174
    .line 175
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 182
    .line 183
    .line 184
    :try_start_d
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :catch_3
    move-exception v1

    .line 189
    :try_start_e
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    new-array v3, v0, [J

    .line 192
    .line 193
    fill-array-data v3, :array_6

    .line 194
    .line 195
    .line 196
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 203
    .line 204
    .line 205
    :goto_3
    return-object p1

    .line 206
    :goto_4
    :try_start_f
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :catch_4
    move-exception v1

    .line 211
    :try_start_10
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 212
    .line 213
    new-array v4, v0, [J

    .line 214
    .line 215
    fill-array-data v4, :array_7

    .line 216
    .line 217
    .line 218
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    :goto_5
    throw v2

    .line 228
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 229
    .line 230
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 231
    .line 232
    const/4 v3, 0x5

    .line 233
    new-array v3, v3, [J

    .line 234
    .line 235
    fill-array-data v3, :array_8

    .line 236
    .line 237
    .line 238
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    .line 249
    :goto_6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 250
    .line 251
    new-array v0, v0, [J

    .line 252
    .line 253
    fill-array-data v0, :array_9

    .line 254
    .line 255
    .line 256
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    return-object p1

    .line 266
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 267
    .line 268
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 269
    .line 270
    const/4 v1, 0x7

    .line 271
    new-array v1, v1, [J

    .line 272
    .line 273
    fill-array-data v1, :array_a

    .line 274
    .line 275
    .line 276
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw p1

    .line 287
    :array_0
    .array-data 8
        -0x6b4fc86b514b2945L    # -4.932834517623952E-209
        0x329ecfc1681792f7L    # 7.314327798893633E-65
        0x65102e67c4dfe9f7L    # 6.557073777538561E178
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
    .line 300
    .line 301
    .line 302
    .line 303
    :array_1
    .array-data 8
        -0xdb2c6df5ac63598L
        -0x329ab475b06828aaL    # -7.008229976730477E64
        -0x5c3c137135cb2696L
    .end array-data

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
        0x4de8164bd6c566f9L    # 2.029333714883215E67
        -0x70ae3e064e994326L
        0x6b8045ba515f3fd9L    # 6.687101555978695E209
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
        -0x1f5a569a27447113L    # -3.7175814555708896E157
        0x7d3ffe7dbf68985dL    # 2.0433640619584473E295
        0x4e97323cd16daa36L    # 4.00236420502196E70
        -0xc23d3fad8507d98L
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
    .line 352
    .line 353
    .line 354
    .line 355
    :array_4
    .array-data 8
        -0x3710b164838c0552L    # -2.1817836520327168E43
        0x5b70ad3c78820cd3L    # 2.959295466765939E132
        0x778e5b0ac4bc97f2L    # 7.830427215349934E267
    .end array-data

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
    .line 370
    .line 371
    :array_5
    .array-data 8
        -0x5eb926527b0b8accL
        0x2a8168276a93c00L
        -0x51bedd6d39d1caecL
    .end array-data

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
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :array_6
    .array-data 8
        0x701e184892754675L    # 1.1680702635082208E232
        -0x133394c7978d78eeL    # -1.224596727097094E216
        -0x409887f72233b20bL    # -0.0028648541614388853
    .end array-data

    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
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
    :array_7
    .array-data 8
        -0x42672022cf7aca1L
        -0x2c9056ddcd66c04dL    # -8.255224352386857E93
        -0x47edac2ae5d92b42L    # -1.3464898722691052E-38
    .end array-data

    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
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
    :array_8
    .array-data 8
        0x523ae58ef64c9e93L    # 1.3376360198119837E88
        -0x374ddcb5c37ce741L    # -1.580029706682373E42
        0x7afb4b3722e5b094L
        0x794437d82820d5f9L    # 1.3999975785559383E276
        0x616ddcf329c3044fL    # 2.0992413553270637E161
    .end array-data

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
    .line 442
    .line 443
    :array_9
    .array-data 8
        -0x21c9925dca5c5609L    # -7.001537681222309E145
        -0x194fdd92dd5c20eL
        -0x5327a9cdaa204d81L    # -1.1667105685675431E-92
    .end array-data

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
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    :array_a
    .array-data 8
        -0x72bbd4704a43a8ceL    # -9.23130098601546E-245
        0x65066269bc7d6fb7L    # 4.5353771388959756E178
        -0x56a89e574f59a69fL
        0xf81c13a58891190L    # 5.584047161524632E-234
        0x6537af9b76aab2c1L    # 3.8392689223794086E179
        -0x4facebd263b8e0ffL    # -6.590716545856419E-76
        -0x3fed44a2955da9b5L    # -4.6829735433180515
    .end array-data
.end method
