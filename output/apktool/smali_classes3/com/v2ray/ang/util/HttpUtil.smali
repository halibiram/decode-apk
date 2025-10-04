.class public final Lcom/v2ray/ang/util/HttpUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005J \u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rJ\"\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011J$\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011J6\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u001a\u001a\u00020\r\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/v2ray/ang/util/HttpUtil;",
        "",
        "<init>",
        "()V",
        "toIdnUrl",
        "",
        "str",
        "toIdnDomain",
        "domain",
        "resolveHostToIP",
        "",
        "host",
        "ipv6Preferred",
        "",
        "getUrlContent",
        "url",
        "timeout",
        "",
        "httpPort",
        "getUrlContentWithUserAgent",
        "createProxyConnection",
        "Ljava/net/HttpURLConnection;",
        "urlStr",
        "port",
        "connectTimeout",
        "readTimeout",
        "needStream",
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
        "SMAP\nHttpUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUtil.kt\ncom/v2ray/ang/util/HttpUtil\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,224:1\n1069#2,2:225\n1617#3,9:227\n1869#3:236\n1870#3:238\n1626#3:239\n1#4:237\n1#4:240\n*S KotlinDebug\n*F\n+ 1 HttpUtil.kt\ncom/v2ray/ang/util/HttpUtil\n*L\n53#1:225,2\n88#1:227,9\n88#1:236\n88#1:238\n88#1:239\n88#1:237\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/v2ray/ang/util/HttpUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/v2ray/ang/util/HttpUtil;

    invoke-direct {v0}, Lcom/v2ray/ang/util/HttpUtil;-><init>()V

    sput-object v0, Lcom/v2ray/ang/util/HttpUtil;->INSTANCE:Lcom/v2ray/ang/util/HttpUtil;

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

.method public static synthetic createProxyConnection$default(Lcom/v2ray/ang/util/HttpUtil;Ljava/lang/String;IIIZILjava/lang/Object;)Ljava/net/HttpURLConnection;
    .locals 7

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    const/16 v0, 0x3a98

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    const/16 v4, 0x3a98

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v4, p3

    .line 11
    :goto_0
    and-int/lit8 p3, p6, 0x8

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    const/16 v5, 0x3a98

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v5, p4

    .line 19
    :goto_1
    and-int/lit8 p3, p6, 0x10

    .line 20
    .line 21
    if-eqz p3, :cond_2

    .line 22
    .line 23
    const/4 p5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move v6, p5

    .line 27
    :goto_2
    move-object v1, p0

    .line 28
    move-object v2, p1

    .line 29
    move v3, p2

    .line 30
    invoke-virtual/range {v1 .. v6}, Lcom/v2ray/ang/util/HttpUtil;->createProxyConnection(Ljava/lang/String;IIIZ)Ljava/net/HttpURLConnection;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static synthetic getUrlContent$default(Lcom/v2ray/ang/util/HttpUtil;Ljava/lang/String;IIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/v2ray/ang/util/HttpUtil;->getUrlContent(Ljava/lang/String;II)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic getUrlContentWithUserAgent$default(Lcom/v2ray/ang/util/HttpUtil;Ljava/lang/String;IIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/16 p2, 0x3a98

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/v2ray/ang/util/HttpUtil;->getUrlContentWithUserAgent(Ljava/lang/String;II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static synthetic resolveHostToIP$default(Lcom/v2ray/ang/util/HttpUtil;Ljava/lang/String;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/util/HttpUtil;->resolveHostToIP(Ljava/lang/String;Z)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final createProxyConnection(Ljava/lang/String;IIIZ)Ljava/net/HttpURLConnection;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "Basic "

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
    const/4 v2, 0x0

    .line 23
    :try_start_0
    new-instance v4, Ljava/net/URL;

    .line 24
    .line 25
    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    nop

    .line 36
    move-object p1, v2

    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_0
    new-instance p1, Ljava/net/Proxy;

    .line 40
    .line 41
    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 42
    .line 43
    new-instance v6, Ljava/net/InetSocketAddress;

    .line 44
    .line 45
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v8, v0, [J

    .line 48
    .line 49
    fill-array-data v8, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-direct {v6, v7, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/16 v5, 0x9

    .line 72
    .line 73
    new-array v5, v5, [J

    .line 74
    .line 75
    fill-array-data v5, :array_2

    .line 76
    .line 77
    .line 78
    invoke-direct {p2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    :try_start_1
    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 94
    .line 95
    .line 96
    if-nez p5, :cond_1

    .line 97
    .line 98
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array p3, v0, [J

    .line 101
    .line 102
    fill-array-data p3, :array_3

    .line 103
    .line 104
    .line 105
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array p4, v3, [J

    .line 115
    .line 116
    fill-array-data p4, :array_4

    .line 117
    .line 118
    .line 119
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {p1, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const/4 p2, 0x0

    .line 130
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catch_1
    nop

    .line 138
    goto :goto_2

    .line 139
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    if-eqz p2, :cond_2

    .line 144
    .line 145
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array p4, v0, [J

    .line 148
    .line 149
    fill-array-data p4, :array_5

    .line 150
    .line 151
    .line 152
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    sget-object p4, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 160
    .line 161
    invoke-virtual {p4, p2}, Lcom/v2ray/ang/util/Utils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p4, p2}, Lcom/v2ray/ang/util/Utils;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    new-instance p4, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    .line 183
    .line 184
    :cond_2
    return-object p1

    .line 185
    :goto_2
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 186
    .line 187
    new-array p3, v0, [J

    .line 188
    .line 189
    fill-array-data p3, :array_6

    .line 190
    .line 191
    .line 192
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 199
    .line 200
    const/4 p3, 0x6

    .line 201
    new-array p3, p3, [J

    .line 202
    .line 203
    fill-array-data p3, :array_7

    .line 204
    .line 205
    .line 206
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    if-eqz p1, :cond_3

    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 215
    .line 216
    .line 217
    :cond_3
    return-object v2

    .line 218
    nop

    .line 219
    :array_0
    .array-data 8
        -0x2af45ff750cdc622L
        -0x2805a66fe0e731ffL    # -6.488982278307009E115
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :array_1
    .array-data 8
        -0x60dd0bb0882ce17cL
        0x5b0a2099ceaa98b5L    # 3.622125148673289E130
        -0x7d5d48cb116d7aa1L    # -5.723467472389672E-296
    .end array-data

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
    :array_2
    .array-data 8
        -0x6a4e63e69e3579bfL
        -0x3a0232926896f1bdL    # -1.4757460174104089E29
        -0x5f2a8354184ace01L    # -1.641035293187976E-150
        -0x2b545135ce13cb9bL    # -7.568645595457322E99
        -0x56cd621e841c6935L    # -3.096455235959854E-110
        0x20a1b89d25fef007L
        0x4189a0c648b3d99fL    # 5.374586508781742E7
        -0x1627b2831cb539f9L    # -7.441001699833903E201
        0x188084a4fcf95e1eL    # 1.158547814503434E-190
    .end array-data

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
    :array_3
    .array-data 8
        0x45737c58be232e39L    # 3.7690881649404145E26
        0x58d208861bf5f9f9L    # 7.276012076039514E119
        0x27b0b3de9d4a1937L
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
    :array_4
    .array-data 8
        -0x505184e13e1d2002L    # -5.141377322101001E-79
        -0x20a371d14a574200L    # -2.336824473105725E151
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
    :array_5
    .array-data 8
        0x637453d19a8f7491L    # 1.2274385302116188E171
        -0x2e9611525ea759feL    # -1.5743107554392402E84
        -0x6df4a8423e0d2a4L    # -2.892507280782897E275
    .end array-data

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
    .line 328
    .line 329
    .line 330
    .line 331
    :array_6
    .array-data 8
        0x3546664db6f84cedL    # 4.677259590841519E-52
        -0x1c249262f63493cdL    # -1.0599722099639723E173
        0x5a388a16b69ba31dL    # 4.152812247388349E126
    .end array-data

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
    .line 346
    .line 347
    :array_7
    .array-data 8
        0x4443ee03f67c97a9L    # 7.352779204428385E20
        -0x4a6a7ffc9a93cbe8L
        0x4767de556b33492bL    # 9.914583219921777E35
        -0x1369ac8a099f22dfL    # -1.2025640199591037E215
        0x40edc507400e0d59L    # 60968.22656920058
        -0x71a7000bafa77762L
    .end array-data
.end method

.method public final getUrlContent(Ljava/lang/String;II)Ljava/lang/String;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const/16 v7, 0x10

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    move-object v1, p0

    .line 24
    move-object v2, p1

    .line 25
    move v3, p3

    .line 26
    move v4, p2

    .line 27
    move v5, p2

    .line 28
    invoke-static/range {v1 .. v8}, Lcom/v2ray/ang/util/HttpUtil;->createProxyConnection$default(Lcom/v2ray/ang/util/HttpUtil;Ljava/lang/String;IIIZILjava/lang/Object;)Ljava/net/HttpURLConnection;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 p2, 0x0

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    return-object p2

    .line 36
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v1, 0x4

    .line 43
    new-array v1, v1, [J

    .line 44
    .line 45
    fill-array-data v1, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 59
    .line 60
    new-instance v1, Ljava/io/InputStreamReader;

    .line 61
    .line 62
    invoke-direct {v1, p3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 63
    .line 64
    .line 65
    new-instance p3, Ljava/io/BufferedReader;

    .line 66
    .line 67
    const/16 v0, 0x2000

    .line 68
    .line 69
    invoke-direct {p3, v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 70
    .line 71
    .line 72
    invoke-static {p3}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 77
    .line 78
    .line 79
    return-object p2

    .line 80
    :catchall_0
    move-exception p2

    .line 81
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 82
    .line 83
    .line 84
    throw p2

    .line 85
    :catch_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 86
    .line 87
    .line 88
    return-object p2

    .line 89
    :array_0
    .array-data 8
        -0x5d3b4e2952e16caL    # -3.209899170098307E280
        -0x6c2a545151ed2c79L    # -4.023228498840447E-213
    .end array-data

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
    .line 100
    .line 101
    :array_1
    .array-data 8
        -0x17f8fe255cd1583aL    # -1.3121147148840884E193
        0x37f79637144dfeecL    # 4.332206910447133E-39
        0x49a6a5fbb1efde3eL    # 6.464967282423464E46
        0x727f6e888ac0dcddL    # 3.3534000391996865E243
    .end array-data
.end method

.method public final getUrlContentWithUserAgent(Ljava/lang/String;II)Ljava/lang/String;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    add-int/lit8 v10, v1, 0x1

    .line 4
    .line 5
    if-ge v1, v0, :cond_4

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const/16 v8, 0x10

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    move-object v2, p0

    .line 14
    move-object v3, p1

    .line 15
    move v4, p3

    .line 16
    move v5, p2

    .line 17
    move v6, p2

    .line 18
    invoke-static/range {v2 .. v9}, Lcom/v2ray/ang/util/HttpUtil;->createProxyConnection$default(Lcom/v2ray/ang/util/HttpUtil;Ljava/lang/String;IIIZILjava/lang/Object;)Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v2, v0, [J

    .line 28
    .line 29
    fill-array-data v2, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v3, v0, [J

    .line 42
    .line 43
    fill-array-data v3, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, p1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/16 v2, 0x12c

    .line 64
    .line 65
    if-gt v2, p1, :cond_3

    .line 66
    .line 67
    const/16 v2, 0x190

    .line 68
    .line 69
    if-ge p1, v2, :cond_3

    .line 70
    .line 71
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    const/4 v2, 0x2

    .line 74
    new-array v2, v2, [J

    .line 75
    .line 76
    fill-array-data v2, :array_2

    .line 77
    .line 78
    .line 79
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v1, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 91
    .line 92
    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    :cond_1
    :goto_1
    move v1, v10

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 104
    .line 105
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    const/4 p3, 0x5

    .line 108
    new-array p3, p3, [J

    .line 109
    .line 110
    fill-array-data p3, :array_3

    .line 111
    .line 112
    .line 113
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 125
    .line 126
    .line 127
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :try_start_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 132
    .line 133
    new-instance p3, Ljava/io/InputStreamReader;

    .line 134
    .line 135
    invoke-direct {p3, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 136
    .line 137
    .line 138
    new-instance p2, Ljava/io/BufferedReader;

    .line 139
    .line 140
    const/16 v0, 0x2000

    .line 141
    .line 142
    invoke-direct {p2, p3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 143
    .line 144
    .line 145
    invoke-static {p2}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    const/4 p3, 0x0

    .line 150
    :try_start_2
    invoke-static {p1, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 154
    .line 155
    .line 156
    return-object p2

    .line 157
    :catchall_0
    move-exception p1

    .line 158
    goto :goto_2

    .line 159
    :catchall_1
    move-exception p2

    .line 160
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 161
    :catchall_2
    move-exception p3

    .line 162
    :try_start_4
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 167
    .line 168
    .line 169
    throw p1

    .line 170
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 171
    .line 172
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 173
    .line 174
    const/4 p3, 0x4

    .line 175
    new-array p3, p3, [J

    .line 176
    .line 177
    fill-array-data p3, :array_4

    .line 178
    .line 179
    .line 180
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :array_0
    .array-data 8
        0x4d1335b22a7e8d74L    # 1.975608182422171E63
        -0x36fe8949050dd561L    # -4.868177288376839E43
        -0x31660232b2e7851aL    # -4.484653647791149E70
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :array_1
    .array-data 8
        -0x540de82fa9d080a3L    # -5.294104789411414E-97
        -0x7f5b7eafbbb14febL    # -1.460013792256557E-305
        -0x2a6bcc3d92c10d12L    # -1.8099095471763876E104
    .end array-data

    :array_2
    .array-data 8
        0x72b144902176f8aaL    # 2.947637795634422E244
        -0x4bbaab32f58d768cL    # -6.796529536623138E-57
    .end array-data

    :array_3
    .array-data 8
        -0x4ef31beead2481a2L    # -2.043957985529124E-72
        0x70964a1f2401575fL    # 2.214714271963341E234
        0x4732d540f3d22e94L    # 9.778664276055738E34
        0x4a2ccbd8b9565321L    # 2.104290203892654E49
        0x655052918f3be5d9L    # 1.058290736537071E180
    .end array-data

    :array_4
    .array-data 8
        0x729775c12b52aea0L    # 1.0011614533782909E244
        0x6d5d1b05eaa151a5L    # 6.421445701084368E218
        0x4e9086fcc15c4287L    # 2.851679816084962E70
        -0x6ead8cfd85aaeae5L    # -3.115172657521765E-225
    .end array-data
.end method

.method public final resolveHostToIP(Ljava/lang/String;Z)Ljava/util/List;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v2, v2, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :try_start_0
    sget-object v2, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Lcom/v2ray/ang/util/Utils;->isPureIpAddress(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    array-length v2, p1

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_1
    if-eqz p2, :cond_2

    .line 42
    .line 43
    new-instance p2, Lcom/v2ray/ang/util/HttpUtil$resolveHostToIP$$inlined$compareByDescending$1;

    .line 44
    .line 45
    invoke-direct {p2}, Lcom/v2ray/ang/util/HttpUtil$resolveHostToIP$$inlined$compareByDescending$1;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    new-instance p2, Lcom/v2ray/ang/util/HttpUtil$resolveHostToIP$$inlined$compareBy$1;

    .line 54
    .line 55
    invoke-direct {p2}, Lcom/v2ray/ang/util/HttpUtil$resolveHostToIP$$inlined$compareBy$1;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 63
    .line 64
    new-instance p2, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Ljava/net/InetAddress;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array v2, v0, [J

    .line 98
    .line 99
    fill-array-data v2, :array_1

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    const/16 v9, 0x3f

    .line 109
    .line 110
    const/4 v10, 0x0

    .line 111
    const/4 v3, 0x0

    .line 112
    const/4 v4, 0x0

    .line 113
    const/4 v5, 0x0

    .line 114
    const/4 v6, 0x0

    .line 115
    const/4 v7, 0x0

    .line 116
    const/4 v8, 0x0

    .line 117
    move-object v2, p2

    .line 118
    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    return-object p2

    .line 122
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array p2, v0, [J

    .line 125
    .line 126
    fill-array-data p2, :array_2

    .line 127
    .line 128
    .line 129
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    const/4 p2, 0x5

    .line 138
    new-array p2, p2, [J

    .line 139
    .line 140
    fill-array-data p2, :array_3

    .line 141
    .line 142
    .line 143
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    return-object v1

    .line 150
    nop

    .line 151
    :array_0
    .array-data 8
        0x31dc1ef2b14d104fL    # 1.6297840738812293E-68
        -0x56ef91903da9756fL    # -6.83244245080821E-111
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :array_1
    .array-data 8
        -0x5f95dd42ed429062L
        -0x4350bb35f968b8bfL    # -2.1697024502221278E-16
        0x660f6e7542ea8750L    # 4.1736128703005396E183
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_2
    .array-data 8
        0x1521505aeed8d11bL    # 6.741050482304654E-207
        -0x5ac4794f4b13b8a0L    # -2.481916065326009E-129
        -0x2c163fd1cb10e093L    # -1.71884913039782E96
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_3
    .array-data 8
        -0x12fcc31845102468L    # -1.326370336468784E217
        -0x11f897ddcfda775L
        0x13cdbdeac2d2f57aL    # 2.760840122650213E-213
        0x1c4f314428ba03b2L
        0x3b2cede39fab6b85L    # 1.1964859234038591E-23
    .end array-data
.end method

.method public final toIdnDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v2, v2, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/util/Utils;->isPureIpAddress(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v1, v2, :cond_2

    .line 35
    .line 36
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/16 v3, 0x80

    .line 41
    .line 42
    if-ge v2, v3, :cond_1

    .line 43
    .line 44
    add-int/2addr v1, v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p1, v0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    new-array v1, v1, [J

    .line 54
    .line 55
    fill-array-data v1, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-object p1

    .line 69
    :array_0
    .array-data 8
        0x1165634aa6afae06L    # 7.222715963540185E-225
        0x4fcd5a30147c83deL    # 2.655284136176266E76
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
    :array_1
    .array-data 8
        0x845dbdc10a53a45L    # 8.27524245944723E-269
        -0x76a60a11a9d529aL    # -7.310765155227906E272
        -0x543c235a9a2d2fefL    # -7.264607955292742E-98
    .end array-data
.end method

.method public final toIdnUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    new-instance v0, Ljava/net/URL;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-static {v0, v1}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const/4 v5, 0x4

    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v4, 0x0

    .line 52
    move-object v1, p1

    .line 53
    invoke-static/range {v1 .. v6}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :cond_0
    return-object p1

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        0x3d0767c06e2b1b9bL    # 1.0394032303317036E-14
        0x28676619a3fc6e13L    # 4.750789313098119E-114
    .end array-data
.end method
