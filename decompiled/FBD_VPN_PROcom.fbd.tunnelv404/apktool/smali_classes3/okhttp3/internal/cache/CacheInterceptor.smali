.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/CacheInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lokhttp3/internal/cache/CacheInterceptor;",
        "Lokhttp3/Interceptor;",
        "Lokhttp3/Cache;",
        "cache",
        "<init>",
        "(Lokhttp3/Cache;)V",
        "Lokhttp3/Interceptor$Chain;",
        "chain",
        "Lokhttp3/Response;",
        "intercept",
        "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;",
        "\ub3a0\ub460\ub56a\ub4fc\ub3a0\ub505\ub572\ub454\ub4fd\ub42b\ub51e\ub3f0\ub461\ub51e\ub4fc\ub3a8\ub3a8\ub4d4\ub561\ub51d\ub568\ub543\ub540\ub4bb\ub524\ub539\ub3dd\ub418\ub573\ub572\ub538\ub4be\ub3a8\ub571\ub565\ub3f6\ub49b\ub4b7\ub4e4\ub4a8\ub54b\ub3e0\ub3a1\ub454\ub41c\ub3e4\ub4e0\ub42b\ub539\ub3f3\ub3f4\ub3db\ub54d\ub578\ub4b5\ub451\ub3f3\ub568\ub55d\ub4dd\ub56e\ub560\ub568\ub500\ub504\ub4a8\ub480\ub540\ub54b\ub4fd\ub42b\ub539\ub575\ub528\ub4b5\ub4f8\ub575\ub3ac\ub4bb\ub3e4\ub568\ub450\ub4f0\ub56b\ub57b\ub48b\ub3f6\ub450\ub563\ub3a1\ub3a1\ub4d0\ub56b\ub570\ub489\ub3b9\ub569\ub571\ub451\ub504\ub3f3\ub4f8\ub4a4\ub3bb\ub56e\ub51c\ub57b\ub428\ub3b8\ub4bc\ub503\ub42b\ub3f8\ub56e\ub56e\ub3e8\ub4a8\ub561\ub572\ub528\ub3f7\ub418\ub54b\ub458\ub3e0\ub56a\ub4b7\ub499\ub545\ub3b8",
        "Lokhttp3/Cache;",
        "getCache$okhttp",
        "()Lokhttp3/Cache;",
        "Companion",
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


# static fields
.field public static final Companion:Lokhttp3/internal/cache/CacheInterceptor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/cache/CacheInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/cache/CacheInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/cache/CacheInterceptor;->Companion:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Cache;)V
    .locals 0
    .param p1    # Lokhttp3/Cache;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/Cache;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getCache$okhttp()Lokhttp3/Cache;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/Cache;

    .line 2
    .line 3
    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 9
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    iget-object v2, p0, Lokhttp3/internal/cache/CacheInterceptor;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/Cache;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Lokhttp3/Cache;->get$okhttp(Lokhttp3/Request;)Lokhttp3/Response;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v3, v1

    .line 25
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    new-instance v6, Lokhttp3/internal/cache/CacheStrategy$Factory;

    .line 30
    .line 31
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-direct {v6, v4, v5, v7, v3}, Lokhttp3/internal/cache/CacheStrategy$Factory;-><init>(JLokhttp3/Request;Lokhttp3/Response;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Lokhttp3/internal/cache/CacheStrategy$Factory;->compute()Lokhttp3/internal/cache/CacheStrategy;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Lokhttp3/internal/cache/CacheStrategy;->getNetworkRequest()Lokhttp3/Request;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4}, Lokhttp3/internal/cache/CacheStrategy;->getCacheResponse()Lokhttp3/Response;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Lokhttp3/Cache;->trackResponse$okhttp(Lokhttp3/internal/cache/CacheStrategy;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    instance-of v4, v0, Lokhttp3/internal/connection/RealCall;

    .line 56
    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    move-object v4, v0

    .line 60
    check-cast v4, Lokhttp3/internal/connection/RealCall;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move-object v4, v1

    .line 64
    :goto_1
    if-eqz v4, :cond_3

    .line 65
    .line 66
    invoke-virtual {v4}, Lokhttp3/internal/connection/RealCall;->getEventListener$okhttp()Lokhttp3/EventListener;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    if-nez v4, :cond_4

    .line 71
    .line 72
    :cond_3
    sget-object v4, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    .line 73
    .line 74
    :cond_4
    if-eqz v3, :cond_5

    .line 75
    .line 76
    if-nez v6, :cond_5

    .line 77
    .line 78
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-static {v7}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    .line 84
    .line 85
    :cond_5
    if-nez v5, :cond_6

    .line 86
    .line 87
    if-nez v6, :cond_6

    .line 88
    .line 89
    new-instance v1, Lokhttp3/Response$Builder;

    .line 90
    .line 91
    invoke-direct {v1}, Lokhttp3/Response$Builder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v1, p1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const/16 v1, 0x1f8

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string v1, "Unsatisfiable Request (only-if-cached)"

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-wide/16 v1, -0x1

    .line 121
    .line 122
    invoke-virtual {p1, v1, v2}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 127
    .line 128
    .line 129
    move-result-wide v1

    .line 130
    invoke-virtual {p1, v1, v2}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {v4, v0, p1}, Lokhttp3/EventListener;->satisfactionFailure(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 139
    .line 140
    .line 141
    return-object p1

    .line 142
    :cond_6
    if-nez v5, :cond_7

    .line 143
    .line 144
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {v6}, Lokhttp3/internal/_ResponseCommonKt;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {p1, v1}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {v4, v0, p1}, Lokhttp3/EventListener;->cacheHit(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 164
    .line 165
    .line 166
    return-object p1

    .line 167
    :cond_7
    if-eqz v6, :cond_8

    .line 168
    .line 169
    invoke-virtual {v4, v0, v6}, Lokhttp3/EventListener;->cacheConditionalHit(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_8
    if-eqz v2, :cond_9

    .line 174
    .line 175
    invoke-virtual {v4, v0}, Lokhttp3/EventListener;->cacheMiss(Lokhttp3/Call;)V

    .line 176
    .line 177
    .line 178
    :cond_9
    :goto_2
    :try_start_0
    invoke-interface {p1, v5}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 179
    .line 180
    .line 181
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    if-nez p1, :cond_a

    .line 183
    .line 184
    if-eqz v3, :cond_a

    .line 185
    .line 186
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-static {v3}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    .line 191
    .line 192
    .line 193
    :cond_a
    if-eqz v6, :cond_c

    .line 194
    .line 195
    if-eqz p1, :cond_b

    .line 196
    .line 197
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    const/16 v7, 0x130

    .line 202
    .line 203
    if-ne v3, v7, :cond_b

    .line 204
    .line 205
    invoke-virtual {v6}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    sget-object v3, Lokhttp3/internal/cache/CacheInterceptor;->Companion:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    .line 210
    .line 211
    invoke-virtual {v6}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    invoke-static {v3, v5, v7}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->access$combine(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v1, v3}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {p1}, Lokhttp3/Response;->sentRequestAtMillis()J

    .line 228
    .line 229
    .line 230
    move-result-wide v7

    .line 231
    invoke-virtual {v1, v7, v8}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {p1}, Lokhttp3/Response;->receivedResponseAtMillis()J

    .line 236
    .line 237
    .line 238
    move-result-wide v7

    .line 239
    invoke-virtual {v1, v7, v8}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-static {v6}, Lokhttp3/internal/_ResponseCommonKt;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {v1, v3}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-static {p1}, Lokhttp3/internal/_ResponseCommonKt;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v1, v3}, Lokhttp3/Response$Builder;->networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    .line 268
    .line 269
    .line 270
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2}, Lokhttp3/Cache;->trackConditionalCacheHit$okhttp()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v6, v1}, Lokhttp3/Cache;->update$okhttp(Lokhttp3/Response;Lokhttp3/Response;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4, v0, v1}, Lokhttp3/EventListener;->cacheHit(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 280
    .line 281
    .line 282
    return-object v1

    .line 283
    :cond_b
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-static {v3}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    .line 288
    .line 289
    .line 290
    :cond_c
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    if-eqz v6, :cond_d

    .line 298
    .line 299
    invoke-static {v6}, Lokhttp3/internal/_ResponseCommonKt;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    goto :goto_3

    .line 304
    :cond_d
    move-object v7, v1

    .line 305
    :goto_3
    invoke-virtual {v3, v7}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-static {p1}, Lokhttp3/internal/_ResponseCommonKt;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-virtual {v3, p1}, Lokhttp3/Response$Builder;->networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    if-eqz v2, :cond_11

    .line 322
    .line 323
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    if-eqz v3, :cond_10

    .line 328
    .line 329
    sget-object v3, Lokhttp3/internal/cache/CacheStrategy;->Companion:Lokhttp3/internal/cache/CacheStrategy$Companion;

    .line 330
    .line 331
    invoke-virtual {v3, p1, v5}, Lokhttp3/internal/cache/CacheStrategy$Companion;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    if-eqz v3, :cond_10

    .line 336
    .line 337
    invoke-virtual {v2, p1}, Lokhttp3/Cache;->put$okhttp(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    if-nez v2, :cond_e

    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_e
    invoke-interface {v2}, Lokhttp3/internal/cache/CacheRequest;->body()Lokio/Sink;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    new-instance v7, Lokhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;

    .line 361
    .line 362
    invoke-direct {v7, v5, v2, v3}, Lokhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;-><init>(Lokio/BufferedSource;Lokhttp3/internal/cache/CacheRequest;Lokio/BufferedSink;)V

    .line 363
    .line 364
    .line 365
    const-string v2, "Content-Type"

    .line 366
    .line 367
    const/4 v3, 0x2

    .line 368
    invoke-static {p1, v2, v1, v3, v1}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    .line 377
    .line 378
    .line 379
    move-result-wide v2

    .line 380
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    new-instance v5, Lokhttp3/internal/http/RealResponseBody;

    .line 385
    .line 386
    invoke-static {v7}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 387
    .line 388
    .line 389
    move-result-object v7

    .line 390
    invoke-direct {v5, v1, v2, v3, v7}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1, v5}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    :goto_4
    if-eqz v6, :cond_f

    .line 402
    .line 403
    invoke-virtual {v4, v0}, Lokhttp3/EventListener;->cacheMiss(Lokhttp3/Call;)V

    .line 404
    .line 405
    .line 406
    :cond_f
    return-object p1

    .line 407
    :cond_10
    invoke-virtual {v5}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-static {v0}, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-eqz v0, :cond_11

    .line 416
    .line 417
    :try_start_1
    invoke-virtual {v2, v5}, Lokhttp3/Cache;->remove$okhttp(Lokhttp3/Request;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 418
    .line 419
    .line 420
    :catch_0
    :cond_11
    return-object p1

    .line 421
    :catchall_0
    move-exception p1

    .line 422
    if-eqz v3, :cond_12

    .line 423
    .line 424
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-static {v0}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    .line 429
    .line 430
    .line 431
    :cond_12
    throw p1
.end method
