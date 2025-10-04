.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lokhttp3/internal/http/CallServerInterceptor;",
        "Lokhttp3/Interceptor;",
        "",
        "forWebSocket",
        "<init>",
        "(Z)V",
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


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 14
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "Connection"

    .line 2
    .line 3
    const-string v1, "close"

    .line 4
    .line 5
    const-string v2, "HTTP "

    .line 6
    .line 7
    const-string v3, "chain"

    .line 8
    .line 9
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    .line 13
    .line 14
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->getExchange$okhttp()Lokhttp3/internal/connection/Exchange;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->getRequest$okhttp()Lokhttp3/Request;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x1

    .line 35
    const/4 v9, 0x0

    .line 36
    :try_start_0
    invoke-virtual {v3, p1}, Lokhttp3/internal/connection/Exchange;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    invoke-static {v10}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    if-eqz v10, :cond_3

    .line 48
    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    const-string v10, "100-continue"

    .line 52
    .line 53
    const-string v11, "Expect"

    .line 54
    .line 55
    invoke-virtual {p1, v11}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    invoke-static {v10, v11, v8}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    if-eqz v10, :cond_0

    .line 64
    .line 65
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->flushRequest()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v8}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    :try_start_1
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->responseHeadersStart()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception v4

    .line 78
    :goto_0
    const/4 v11, 0x1

    .line 79
    goto :goto_3

    .line 80
    :catch_1
    move-exception v4

    .line 81
    move-object v10, v9

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    move-object v10, v9

    .line 84
    const/4 v11, 0x1

    .line 85
    :goto_1
    if-nez v10, :cond_2

    .line 86
    .line 87
    :try_start_2
    invoke-virtual {v4}, Lokhttp3/RequestBody;->isDuplex()Z

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    if-eqz v12, :cond_1

    .line 92
    .line 93
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->flushRequest()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p1, v8}, Lokhttp3/internal/connection/Exchange;->createRequestBody(Lokhttp3/Request;Z)Lokio/Sink;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    invoke-static {v12}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    invoke-virtual {v4, v12}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catch_2
    move-exception v4

    .line 109
    goto :goto_3

    .line 110
    :cond_1
    invoke-virtual {v3, p1, v7}, Lokhttp3/internal/connection/Exchange;->createRequestBody(Lokhttp3/Request;Z)Lokio/Sink;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    invoke-static {v12}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    invoke-virtual {v4, v12}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {v12}, Lokio/Sink;->close()V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_2
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->noRequestBody()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    invoke-virtual {v12}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed$okhttp()Z

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    if-nez v12, :cond_4

    .line 137
    .line 138
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->noNewExchangesOnConnection()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->noRequestBody()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 143
    .line 144
    .line 145
    move-object v10, v9

    .line 146
    const/4 v11, 0x1

    .line 147
    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    .line 148
    .line 149
    :try_start_4
    invoke-virtual {v4}, Lokhttp3/RequestBody;->isDuplex()Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-nez v4, :cond_6

    .line 154
    .line 155
    :cond_5
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->finishRequest()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 156
    .line 157
    .line 158
    :cond_6
    move-object v4, v9

    .line 159
    goto :goto_4

    .line 160
    :goto_3
    instance-of v12, v4, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 161
    .line 162
    if-nez v12, :cond_14

    .line 163
    .line 164
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->getHasFailure$okhttp()Z

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    if-eqz v12, :cond_13

    .line 169
    .line 170
    :goto_4
    if-nez v10, :cond_7

    .line 171
    .line 172
    :try_start_5
    invoke-virtual {v3, v7}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    if-eqz v11, :cond_7

    .line 180
    .line 181
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->responseHeadersStart()V

    .line 182
    .line 183
    .line 184
    const/4 v11, 0x0

    .line 185
    goto :goto_5

    .line 186
    :catch_3
    move-exception p1

    .line 187
    goto/16 :goto_9

    .line 188
    .line 189
    :cond_7
    :goto_5
    invoke-virtual {v10, p1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 194
    .line 195
    .line 196
    move-result-object v12

    .line 197
    invoke-virtual {v12}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    .line 198
    .line 199
    .line 200
    move-result-object v12

    .line 201
    invoke-virtual {v10, v12}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    invoke-virtual {v10, v5, v6}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 210
    .line 211
    .line 212
    move-result-wide v12

    .line 213
    invoke-virtual {v10, v12, v13}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    invoke-virtual {v10}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    invoke-virtual {v10}, Lokhttp3/Response;->code()I

    .line 222
    .line 223
    .line 224
    move-result v12

    .line 225
    const/16 v13, 0x64

    .line 226
    .line 227
    if-ne v12, v13, :cond_8

    .line 228
    .line 229
    :goto_6
    const/4 v13, 0x1

    .line 230
    goto :goto_7

    .line 231
    :cond_8
    const/16 v13, 0x66

    .line 232
    .line 233
    if-gt v13, v12, :cond_9

    .line 234
    .line 235
    const/16 v13, 0xc8

    .line 236
    .line 237
    if-ge v12, v13, :cond_9

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_9
    const/4 v13, 0x0

    .line 241
    :goto_7
    if-eqz v13, :cond_b

    .line 242
    .line 243
    invoke-virtual {v3, v7}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    if-eqz v11, :cond_a

    .line 251
    .line 252
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->responseHeadersStart()V

    .line 253
    .line 254
    .line 255
    :cond_a
    invoke-virtual {v7, p1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    invoke-virtual {v7}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    invoke-virtual {p1, v7}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p1, v5, v6}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 276
    .line 277
    .line 278
    move-result-wide v5

    .line 279
    invoke-virtual {p1, v5, v6}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    invoke-virtual {v10}, Lokhttp3/Response;->code()I

    .line 288
    .line 289
    .line 290
    move-result v12

    .line 291
    :cond_b
    invoke-virtual {v3, v10}, Lokhttp3/internal/connection/Exchange;->responseHeadersEnd(Lokhttp3/Response;)V

    .line 292
    .line 293
    .line 294
    iget-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Z

    .line 295
    .line 296
    if-eqz p1, :cond_c

    .line 297
    .line 298
    const/16 p1, 0x65

    .line 299
    .line 300
    if-ne v12, p1, :cond_c

    .line 301
    .line 302
    invoke-static {v10}, Lokhttp3/internal/_ResponseCommonKt;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    goto :goto_8

    .line 307
    :cond_c
    invoke-virtual {v10}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-virtual {v3, v10}, Lokhttp3/internal/connection/Exchange;->openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    invoke-virtual {p1, v5}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    :goto_8
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    invoke-virtual {v5, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    invoke-static {v1, v5, v8}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    if-nez v5, :cond_d

    .line 336
    .line 337
    const/4 v5, 0x2

    .line 338
    invoke-static {p1, v0, v9, v5, v9}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-static {v1, v0, v8}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    if-eqz v0, :cond_e

    .line 347
    .line 348
    :cond_d
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->noNewExchangesOnConnection()V

    .line 349
    .line 350
    .line 351
    :cond_e
    const/16 v0, 0xcc

    .line 352
    .line 353
    if-eq v12, v0, :cond_f

    .line 354
    .line 355
    const/16 v0, 0xcd

    .line 356
    .line 357
    if-ne v12, v0, :cond_10

    .line 358
    .line 359
    :cond_f
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 364
    .line 365
    .line 366
    move-result-wide v0

    .line 367
    const-wide/16 v5, 0x0

    .line 368
    .line 369
    cmp-long v3, v0, v5

    .line 370
    .line 371
    if-gtz v3, :cond_11

    .line 372
    .line 373
    :cond_10
    return-object p1

    .line 374
    :cond_11
    new-instance v0, Ljava/net/ProtocolException;

    .line 375
    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v2, " had non-zero Content-Length: "

    .line 385
    .line 386
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    .line 394
    .line 395
    .line 396
    move-result-wide v2

    .line 397
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 408
    :goto_9
    if-eqz v4, :cond_12

    .line 409
    .line 410
    invoke-static {v4, p1}, L뒝땻뎡딸땭딐뒉뎽득된뒘땲땃딞뒬뎽돝딁뒻딌딃뒀뒤딃뒙됩딜땱된듔듔뒀땱딜듔뒹땰뎸딌뒾땦됩듸뒤딌딜땍둬땳듟뎡듰땱딃딝땪뒷딀딁도땮딞뎰뎸뒉두뒋뎨뎸땀됨듰땱돴땱드딽땵둣뎠둔돶둥딽뒻듻뎠돴딽땁뒉듻둘둥도돠뎡땰딠돳땟둠땫듌땣돝땬돠뒻땱뒤딅뒤딸됴돤땭뎽땩듼땝뒷딸땸뒨됐뒀듻뒀땸;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 411
    .line 412
    .line 413
    throw v4

    .line 414
    :cond_12
    throw p1

    .line 415
    :cond_13
    throw v4

    .line 416
    :cond_14
    throw v4
.end method
