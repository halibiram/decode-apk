.class public final Lokhttp3/internal/authenticator/JavaNetAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/authenticator/JavaNetAuthenticator$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J#\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lokhttp3/internal/authenticator/JavaNetAuthenticator;",
        "Lokhttp3/Authenticator;",
        "Lokhttp3/Dns;",
        "defaultDns",
        "<init>",
        "(Lokhttp3/Dns;)V",
        "Lokhttp3/Route;",
        "route",
        "Lokhttp3/Response;",
        "response",
        "Lokhttp3/Request;",
        "authenticate",
        "(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;",
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
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/Dns;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lokhttp3/internal/authenticator/JavaNetAuthenticator;-><init>(Lokhttp3/Dns;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Dns;)V
    .locals 1
    .param p1    # Lokhttp3/Dns;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "defaultDns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/authenticator/JavaNetAuthenticator;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/Dns;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/Dns;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 3
    sget-object p1, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    :cond_0
    invoke-direct {p0, p1}, Lokhttp3/internal/authenticator/JavaNetAuthenticator;-><init>(Lokhttp3/Dns;)V

    return-void
.end method

.method public static 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/net/Proxy;Lokhttp3/HttpUrl;Lokhttp3/Dns;)Ljava/net/InetAddress;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lokhttp3/internal/authenticator/JavaNetAuthenticator$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    aget v0, v1, v0

    .line 16
    .line 17
    :goto_0
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p2, p0}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/net/InetAddress;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "null cannot be cast to non-null type java.net.InetSocketAddress"

    .line 40
    .line 41
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    check-cast p0, Ljava/net/InetSocketAddress;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "getAddress(...)"

    .line 51
    .line 52
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-object p0
.end method


# virtual methods
.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 18
    .param p1    # Lokhttp3/Route;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->challenges()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/16 v4, 0x197

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    if-ne v1, v4, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-nez v4, :cond_2

    .line 39
    .line 40
    :cond_1
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 41
    .line 42
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_9

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Lokhttp3/Challenge;

    .line 57
    .line 58
    invoke-virtual {v6}, Lokhttp3/Challenge;->scheme()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const-string v8, "Basic"

    .line 63
    .line 64
    invoke-static {v8, v7, v5}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    if-eqz p1, :cond_5

    .line 72
    .line 73
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    if-eqz v7, :cond_5

    .line 78
    .line 79
    invoke-virtual {v7}, Lokhttp3/Address;->dns()Lokhttp3/Dns;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    if-nez v7, :cond_6

    .line 84
    .line 85
    :cond_5
    move-object/from16 v7, p0

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_6
    move-object v8, v7

    .line 89
    move-object/from16 v7, p0

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :goto_2
    iget-object v8, v7, Lokhttp3/internal/authenticator/JavaNetAuthenticator;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/Dns;

    .line 93
    .line 94
    :goto_3
    if-eqz v1, :cond_7

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    const-string v10, "null cannot be cast to non-null type java.net.InetSocketAddress"

    .line 101
    .line 102
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    check-cast v9, Ljava/net/InetSocketAddress;

    .line 106
    .line 107
    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v4, v3, v8}, Lokhttp3/internal/authenticator/JavaNetAuthenticator;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/net/Proxy;Lokhttp3/HttpUrl;Lokhttp3/Dns;)Ljava/net/InetAddress;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getPort()I

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    invoke-virtual {v6}, Lokhttp3/Challenge;->realm()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v14

    .line 130
    invoke-virtual {v6}, Lokhttp3/Challenge;->scheme()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v15

    .line 134
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    .line 135
    .line 136
    .line 137
    move-result-object v16

    .line 138
    sget-object v17, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 139
    .line 140
    invoke-static/range {v10 .. v17}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    goto :goto_4

    .line 145
    :cond_7
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v4, v3, v8}, Lokhttp3/internal/authenticator/JavaNetAuthenticator;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/net/Proxy;Lokhttp3/HttpUrl;Lokhttp3/Dns;)Ljava/net/InetAddress;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->port()I

    .line 157
    .line 158
    .line 159
    move-result v11

    .line 160
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    invoke-virtual {v6}, Lokhttp3/Challenge;->realm()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v13

    .line 168
    invoke-virtual {v6}, Lokhttp3/Challenge;->scheme()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v14

    .line 172
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    .line 173
    .line 174
    .line 175
    move-result-object v15

    .line 176
    sget-object v16, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 177
    .line 178
    invoke-static/range {v9 .. v16}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    :goto_4
    if-eqz v8, :cond_3

    .line 183
    .line 184
    if-eqz v1, :cond_8

    .line 185
    .line 186
    const-string v0, "Proxy-Authorization"

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_8
    const-string v0, "Authorization"

    .line 190
    .line 191
    :goto_5
    invoke-virtual {v8}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    const-string v3, "getUserName(...)"

    .line 196
    .line 197
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8}, Ljava/net/PasswordAuthentication;->getPassword()[C

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    const-string v4, "getPassword(...)"

    .line 205
    .line 206
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    new-instance v4, Ljava/lang/String;

    .line 210
    .line 211
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6}, Lokhttp3/Challenge;->charset()Ljava/nio/charset/Charset;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-static {v1, v4, v3}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v2, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    return-object v0

    .line 235
    :cond_9
    move-object/from16 v7, p0

    .line 236
    .line 237
    const/4 v0, 0x0

    .line 238
    return-object v0
.end method
