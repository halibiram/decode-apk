.class public final Lokhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lokhttp3/internal/http/BridgeInterceptor;",
        "Lokhttp3/Interceptor;",
        "Lokhttp3/CookieJar;",
        "cookieJar",
        "<init>",
        "(Lokhttp3/CookieJar;)V",
        "Lokhttp3/Interceptor$Chain;",
        "chain",
        "Lokhttp3/Response;",
        "intercept",
        "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBridgeInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BridgeInterceptor.kt\nokhttp3/internal/http/BridgeInterceptor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n1864#2,3:119\n*S KotlinDebug\n*F\n+ 1 BridgeInterceptor.kt\nokhttp3/internal/http/BridgeInterceptor\n*L\n112#1:119,3\n*E\n"
    }
.end annotation


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lokhttp3/CookieJar;)V
    .locals 1
    .param p1    # Lokhttp3/CookieJar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cookieJar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lokhttp3/internal/http/BridgeInterceptor;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/CookieJar;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 18
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "chain"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-wide/16 v4, -0x1

    .line 21
    .line 22
    const-string v6, "Content-Type"

    .line 23
    .line 24
    const-string v7, "Content-Length"

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {v3}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    if-eqz v8, :cond_0

    .line 33
    .line 34
    invoke-virtual {v8}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-virtual {v2, v6, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v3}, Lokhttp3/RequestBody;->contentLength()J

    .line 42
    .line 43
    .line 44
    move-result-wide v8

    .line 45
    const-string v3, "Transfer-Encoding"

    .line 46
    .line 47
    cmp-long v10, v8, v4

    .line 48
    .line 49
    if-eqz v10, :cond_1

    .line 50
    .line 51
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v2, v7, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-string v8, "chunked"

    .line 63
    .line 64
    invoke-virtual {v2, v3, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v7}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_0
    const-string v3, "Host"

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v10, 0x1

    .line 78
    const/4 v11, 0x0

    .line 79
    if-nez v8, :cond_3

    .line 80
    .line 81
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-static {v8, v9, v10, v11}, Lokhttp3/internal/_UtilJvmKt;->toHostHeader$default(Lokhttp3/HttpUrl;ZILjava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-virtual {v2, v3, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 90
    .line 91
    .line 92
    :cond_3
    const-string v3, "Connection"

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    if-nez v8, :cond_4

    .line 99
    .line 100
    const-string v8, "Keep-Alive"

    .line 101
    .line 102
    invoke-virtual {v2, v3, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 103
    .line 104
    .line 105
    :cond_4
    const-string v3, "Accept-Encoding"

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    const-string v12, "gzip"

    .line 112
    .line 113
    if-nez v8, :cond_5

    .line 114
    .line 115
    const-string v8, "Range"

    .line 116
    .line 117
    invoke-virtual {v1, v8}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    if-nez v8, :cond_5

    .line 122
    .line 123
    invoke-virtual {v2, v3, v12}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 124
    .line 125
    .line 126
    const/4 v3, 0x1

    .line 127
    goto :goto_1

    .line 128
    :cond_5
    const/4 v3, 0x0

    .line 129
    :goto_1
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    move-object/from16 v13, p0

    .line 134
    .line 135
    iget-object v14, v13, Lokhttp3/internal/http/BridgeInterceptor;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/CookieJar;

    .line 136
    .line 137
    invoke-interface {v14, v8}, Lokhttp3/CookieJar;->loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    move-object v15, v8

    .line 142
    check-cast v15, Ljava/util/Collection;

    .line 143
    .line 144
    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v15

    .line 148
    if-nez v15, :cond_9

    .line 149
    .line 150
    new-instance v15, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    check-cast v8, Ljava/lang/Iterable;

    .line 156
    .line 157
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v16

    .line 165
    if-eqz v16, :cond_8

    .line 166
    .line 167
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v16

    .line 171
    add-int/lit8 v17, v9, 0x1

    .line 172
    .line 173
    if-gez v9, :cond_6

    .line 174
    .line 175
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 176
    .line 177
    .line 178
    :cond_6
    check-cast v16, Lokhttp3/Cookie;

    .line 179
    .line 180
    if-lez v9, :cond_7

    .line 181
    .line 182
    const-string v9, "; "

    .line 183
    .line 184
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const/16 v9, 0x3d

    .line 195
    .line 196
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Cookie;->value()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    move/from16 v9, v17

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_8
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    const-string v9, "toString(...)"

    .line 214
    .line 215
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string v9, "Cookie"

    .line 219
    .line 220
    invoke-virtual {v2, v9, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 221
    .line 222
    .line 223
    :cond_9
    const-string v8, "User-Agent"

    .line 224
    .line 225
    invoke-virtual {v1, v8}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    if-nez v1, :cond_a

    .line 230
    .line 231
    const-string v1, "okhttp/5.0.0-alpha.12"

    .line 232
    .line 233
    invoke-virtual {v2, v8, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 234
    .line 235
    .line 236
    :cond_a
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-interface {v0, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    invoke-static {v14, v2, v8}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {v2, v1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    if-eqz v3, :cond_b

    .line 264
    .line 265
    const-string v2, "Content-Encoding"

    .line 266
    .line 267
    const/4 v3, 0x2

    .line 268
    invoke-static {v0, v2, v11, v3, v11}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    invoke-static {v12, v8, v10}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 273
    .line 274
    .line 275
    move-result v8

    .line 276
    if-eqz v8, :cond_b

    .line 277
    .line 278
    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    if-eqz v8, :cond_b

    .line 283
    .line 284
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    if-eqz v8, :cond_b

    .line 289
    .line 290
    new-instance v9, Lokio/GzipSource;

    .line 291
    .line 292
    invoke-virtual {v8}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 293
    .line 294
    .line 295
    move-result-object v8

    .line 296
    invoke-direct {v9, v8}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    invoke-virtual {v8}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    invoke-virtual {v8, v2}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {v2, v7}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    .line 320
    .line 321
    .line 322
    invoke-static {v0, v6, v11, v3, v11}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    new-instance v2, Lokhttp3/internal/http/RealResponseBody;

    .line 327
    .line 328
    invoke-static {v9}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-direct {v2, v0, v4, v5, v3}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 336
    .line 337
    .line 338
    :cond_b
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    return-object v0
.end method
