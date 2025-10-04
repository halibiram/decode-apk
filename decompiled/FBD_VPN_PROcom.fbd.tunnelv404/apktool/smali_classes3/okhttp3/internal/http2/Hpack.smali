.class public final Lokhttp3/internal/http2/Hpack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Hpack$Reader;,
        Lokhttp3/internal/http2/Hpack$Writer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0014\u0015J\u0015\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001d\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR#\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e0\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lokhttp3/internal/http2/Hpack;",
        "",
        "Lokio/ByteString;",
        "name",
        "checkLowercase",
        "(Lokio/ByteString;)Lokio/ByteString;",
        "",
        "Lokhttp3/internal/http2/Header;",
        "\ub3a0\ub460\ub56a\ub4fc\ub3a0\ub505\ub572\ub454\ub4fd\ub42b\ub51e\ub3f0\ub461\ub51e\ub4fc\ub3a8\ub3a8\ub4d4\ub561\ub51d\ub568\ub543\ub540\ub4bb\ub524\ub539\ub3dd\ub418\ub573\ub572\ub538\ub4be\ub3a8\ub571\ub565\ub3f6\ub49b\ub4b7\ub4e4\ub4a8\ub54b\ub3e0\ub3a1\ub454\ub41c\ub3e4\ub4e0\ub42b\ub539\ub3f3\ub3f4\ub3db\ub54d\ub578\ub4b5\ub451\ub3f3\ub568\ub55d\ub4dd\ub56e\ub560\ub568\ub500\ub504\ub4a8\ub480\ub540\ub54b\ub4fd\ub42b\ub539\ub575\ub528\ub4b5\ub4f8\ub575\ub3ac\ub4bb\ub3e4\ub568\ub450\ub4f0\ub56b\ub57b\ub48b\ub3f6\ub450\ub563\ub3a1\ub3a1\ub4d0\ub56b\ub570\ub489\ub3b9\ub569\ub571\ub451\ub504\ub3f3\ub4f8\ub4a4\ub3bb\ub56e\ub51c\ub57b\ub428\ub3b8\ub4bc\ub503\ub42b\ub3f8\ub56e\ub56e\ub3e8\ub4a8\ub561\ub572\ub528\ub3f7\ub418\ub54b\ub458\ub3e0\ub56a\ub4b7\ub499\ub545\ub3b8",
        "[Lokhttp3/internal/http2/Header;",
        "getSTATIC_HEADER_TABLE",
        "()[Lokhttp3/internal/http2/Header;",
        "STATIC_HEADER_TABLE",
        "",
        "",
        "\ub3a0\ub50e\ub503\ub4fc\ub489\ub428\ub3b9\ub568\ub4fb\ub540\ub51d\ub566\ub4ac\ub3f0\ub3f7\ub569\ub4dd\ub51e\ub4e0\ub463\ub4fc\ub3f8\ub410\ub543\ub460\ub51c\ub538\ub4b5\ub4e4\ub3f4\ub4f0\ub543\ub4dd\ub54b\ub3a0\ub3f8\ub524\ub540\ub51d\ub3b9\ub528\ub450\ub568\ub4b7\ub50e\ub50e\ub510\ub480\ub3ac\ub4f0\ub51c\ub56d\ub4d4\ub4e8\ub3f4\ub4fc\ub465\ub4dd\ub3b9\ub3f6\ub4e4\ub4dc\ub3bb\ub501\ub458\ub410\ub3e8\ub460\ub488\ub545\ub3e8\ub55c\ub51d\ub4e4\ub500\ub451\ub4b9\ub3b9\ub450\ub56c\ub4d0\ub3f6\ub4ec\ub56c\ub3c4\ub3b8\ub460\ub460\ub4a8\ub410\ub55d\ub50e\ub500\ub578\ub56a\ub4dd\ub4b5\ub56c\ub490\ub570\ub55d\ub4b5\ub572\ub4ec\ub4fd\ub3f5\ub480\ub54b\ub4ac\ub573\ub48b\ub4f0\ub55f\ub3f0\ub418\ub54b\ub454\ub571\ub4d4\ub540\ub563\ub418\ub498\ub3fc\ub4bb\ub501\ub465\ub498\ub41c\ub56b",
        "Ljava/util/Map;",
        "getNAME_TO_FIRST_INDEX",
        "()Ljava/util/Map;",
        "NAME_TO_FIRST_INDEX",
        "Reader",
        "Writer",
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
.field public static final INSTANCE:Lokhttp3/internal/http2/Hpack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lokhttp3/internal/http2/Header;

.field public static final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 63

    .line 1
    new-instance v2, Lokhttp3/internal/http2/Hpack;

    .line 2
    .line 3
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v2, Lokhttp3/internal/http2/Hpack;->INSTANCE:Lokhttp3/internal/http2/Hpack;

    .line 7
    .line 8
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 9
    .line 10
    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    .line 11
    .line 12
    const-string v4, ""

    .line 13
    .line 14
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lokhttp3/internal/http2/Header;

    .line 18
    .line 19
    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    .line 20
    .line 21
    const-string v6, "GET"

    .line 22
    .line 23
    invoke-direct {v3, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v6, Lokhttp3/internal/http2/Header;

    .line 27
    .line 28
    const-string v7, "POST"

    .line 29
    .line 30
    invoke-direct {v6, v5, v7}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v5, Lokhttp3/internal/http2/Header;

    .line 34
    .line 35
    sget-object v7, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    .line 36
    .line 37
    const-string v8, "/"

    .line 38
    .line 39
    invoke-direct {v5, v7, v8}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v8, Lokhttp3/internal/http2/Header;

    .line 43
    .line 44
    const-string v9, "/index.html"

    .line 45
    .line 46
    invoke-direct {v8, v7, v9}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v7, Lokhttp3/internal/http2/Header;

    .line 50
    .line 51
    sget-object v9, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lokio/ByteString;

    .line 52
    .line 53
    const-string v10, "http"

    .line 54
    .line 55
    invoke-direct {v7, v9, v10}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v10, Lokhttp3/internal/http2/Header;

    .line 59
    .line 60
    const-string v11, "https"

    .line 61
    .line 62
    invoke-direct {v10, v9, v11}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v9, Lokhttp3/internal/http2/Header;

    .line 66
    .line 67
    sget-object v11, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    .line 68
    .line 69
    const-string v12, "200"

    .line 70
    .line 71
    invoke-direct {v9, v11, v12}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v12, Lokhttp3/internal/http2/Header;

    .line 75
    .line 76
    const-string v13, "204"

    .line 77
    .line 78
    invoke-direct {v12, v11, v13}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v13, Lokhttp3/internal/http2/Header;

    .line 82
    .line 83
    const-string v14, "206"

    .line 84
    .line 85
    invoke-direct {v13, v11, v14}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v14, Lokhttp3/internal/http2/Header;

    .line 89
    .line 90
    const-string v15, "304"

    .line 91
    .line 92
    invoke-direct {v14, v11, v15}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v15, Lokhttp3/internal/http2/Header;

    .line 96
    .line 97
    const-string v0, "400"

    .line 98
    .line 99
    invoke-direct {v15, v11, v0}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 103
    .line 104
    const-string v1, "404"

    .line 105
    .line 106
    invoke-direct {v0, v11, v1}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 110
    .line 111
    move-object/from16 v16, v0

    .line 112
    .line 113
    const-string v0, "500"

    .line 114
    .line 115
    invoke-direct {v1, v11, v0}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 119
    .line 120
    const-string v11, "accept-charset"

    .line 121
    .line 122
    invoke-direct {v0, v11, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v11, Lokhttp3/internal/http2/Header;

    .line 126
    .line 127
    move-object/from16 v17, v0

    .line 128
    .line 129
    const-string v0, "accept-encoding"

    .line 130
    .line 131
    move-object/from16 v18, v1

    .line 132
    .line 133
    const-string v1, "gzip, deflate"

    .line 134
    .line 135
    invoke-direct {v11, v0, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 139
    .line 140
    const-string v1, "accept-language"

    .line 141
    .line 142
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 146
    .line 147
    move-object/from16 v19, v0

    .line 148
    .line 149
    const-string v0, "accept-ranges"

    .line 150
    .line 151
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 155
    .line 156
    move-object/from16 v20, v1

    .line 157
    .line 158
    const-string v1, "accept"

    .line 159
    .line 160
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 164
    .line 165
    move-object/from16 v21, v0

    .line 166
    .line 167
    const-string v0, "access-control-allow-origin"

    .line 168
    .line 169
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 173
    .line 174
    move-object/from16 v22, v1

    .line 175
    .line 176
    const-string v1, "age"

    .line 177
    .line 178
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 182
    .line 183
    move-object/from16 v23, v0

    .line 184
    .line 185
    const-string v0, "allow"

    .line 186
    .line 187
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 191
    .line 192
    move-object/from16 v24, v1

    .line 193
    .line 194
    const-string v1, "authorization"

    .line 195
    .line 196
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 200
    .line 201
    move-object/from16 v25, v0

    .line 202
    .line 203
    const-string v0, "cache-control"

    .line 204
    .line 205
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 209
    .line 210
    move-object/from16 v26, v1

    .line 211
    .line 212
    const-string v1, "content-disposition"

    .line 213
    .line 214
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 218
    .line 219
    move-object/from16 v27, v0

    .line 220
    .line 221
    const-string v0, "content-encoding"

    .line 222
    .line 223
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 227
    .line 228
    move-object/from16 v28, v1

    .line 229
    .line 230
    const-string v1, "content-language"

    .line 231
    .line 232
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 236
    .line 237
    move-object/from16 v29, v0

    .line 238
    .line 239
    const-string v0, "content-length"

    .line 240
    .line 241
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 245
    .line 246
    move-object/from16 v30, v1

    .line 247
    .line 248
    const-string v1, "content-location"

    .line 249
    .line 250
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 254
    .line 255
    move-object/from16 v31, v0

    .line 256
    .line 257
    const-string v0, "content-range"

    .line 258
    .line 259
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 263
    .line 264
    move-object/from16 v32, v1

    .line 265
    .line 266
    const-string v1, "content-type"

    .line 267
    .line 268
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 272
    .line 273
    move-object/from16 v33, v0

    .line 274
    .line 275
    const-string v0, "cookie"

    .line 276
    .line 277
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 281
    .line 282
    move-object/from16 v34, v1

    .line 283
    .line 284
    const-string v1, "date"

    .line 285
    .line 286
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 290
    .line 291
    move-object/from16 v35, v0

    .line 292
    .line 293
    const-string v0, "etag"

    .line 294
    .line 295
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 299
    .line 300
    move-object/from16 v36, v1

    .line 301
    .line 302
    const-string v1, "expect"

    .line 303
    .line 304
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 308
    .line 309
    move-object/from16 v37, v0

    .line 310
    .line 311
    const-string v0, "expires"

    .line 312
    .line 313
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 317
    .line 318
    move-object/from16 v38, v1

    .line 319
    .line 320
    const-string v1, "from"

    .line 321
    .line 322
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 326
    .line 327
    move-object/from16 v39, v0

    .line 328
    .line 329
    const-string v0, "host"

    .line 330
    .line 331
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 335
    .line 336
    move-object/from16 v40, v1

    .line 337
    .line 338
    const-string v1, "if-match"

    .line 339
    .line 340
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 344
    .line 345
    move-object/from16 v41, v0

    .line 346
    .line 347
    const-string v0, "if-modified-since"

    .line 348
    .line 349
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 353
    .line 354
    move-object/from16 v42, v1

    .line 355
    .line 356
    const-string v1, "if-none-match"

    .line 357
    .line 358
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 362
    .line 363
    move-object/from16 v43, v0

    .line 364
    .line 365
    const-string v0, "if-range"

    .line 366
    .line 367
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 371
    .line 372
    move-object/from16 v44, v1

    .line 373
    .line 374
    const-string v1, "if-unmodified-since"

    .line 375
    .line 376
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 380
    .line 381
    move-object/from16 v45, v0

    .line 382
    .line 383
    const-string v0, "last-modified"

    .line 384
    .line 385
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 389
    .line 390
    move-object/from16 v46, v1

    .line 391
    .line 392
    const-string v1, "link"

    .line 393
    .line 394
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 398
    .line 399
    move-object/from16 v47, v0

    .line 400
    .line 401
    const-string v0, "location"

    .line 402
    .line 403
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 407
    .line 408
    move-object/from16 v48, v1

    .line 409
    .line 410
    const-string v1, "max-forwards"

    .line 411
    .line 412
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 416
    .line 417
    move-object/from16 v49, v0

    .line 418
    .line 419
    const-string v0, "proxy-authenticate"

    .line 420
    .line 421
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 425
    .line 426
    move-object/from16 v50, v1

    .line 427
    .line 428
    const-string v1, "proxy-authorization"

    .line 429
    .line 430
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 434
    .line 435
    move-object/from16 v51, v0

    .line 436
    .line 437
    const-string v0, "range"

    .line 438
    .line 439
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 443
    .line 444
    move-object/from16 v52, v1

    .line 445
    .line 446
    const-string v1, "referer"

    .line 447
    .line 448
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 452
    .line 453
    move-object/from16 v53, v0

    .line 454
    .line 455
    const-string v0, "refresh"

    .line 456
    .line 457
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 461
    .line 462
    move-object/from16 v54, v1

    .line 463
    .line 464
    const-string v1, "retry-after"

    .line 465
    .line 466
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 470
    .line 471
    move-object/from16 v55, v0

    .line 472
    .line 473
    const-string v0, "server"

    .line 474
    .line 475
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 479
    .line 480
    move-object/from16 v56, v1

    .line 481
    .line 482
    const-string v1, "set-cookie"

    .line 483
    .line 484
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 488
    .line 489
    move-object/from16 v57, v0

    .line 490
    .line 491
    const-string v0, "strict-transport-security"

    .line 492
    .line 493
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 497
    .line 498
    move-object/from16 v58, v1

    .line 499
    .line 500
    const-string v1, "transfer-encoding"

    .line 501
    .line 502
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 506
    .line 507
    move-object/from16 v59, v0

    .line 508
    .line 509
    const-string v0, "user-agent"

    .line 510
    .line 511
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 515
    .line 516
    move-object/from16 v60, v1

    .line 517
    .line 518
    const-string v1, "vary"

    .line 519
    .line 520
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 524
    .line 525
    move-object/from16 v61, v0

    .line 526
    .line 527
    const-string v0, "via"

    .line 528
    .line 529
    invoke-direct {v1, v0, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 533
    .line 534
    move-object/from16 v62, v1

    .line 535
    .line 536
    const-string v1, "www-authenticate"

    .line 537
    .line 538
    invoke-direct {v0, v1, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    const/16 v1, 0x3d

    .line 542
    .line 543
    new-array v1, v1, [Lokhttp3/internal/http2/Header;

    .line 544
    .line 545
    const/4 v4, 0x0

    .line 546
    aput-object v2, v1, v4

    .line 547
    .line 548
    const/4 v2, 0x1

    .line 549
    aput-object v3, v1, v2

    .line 550
    .line 551
    const/4 v2, 0x2

    .line 552
    aput-object v6, v1, v2

    .line 553
    .line 554
    const/4 v2, 0x3

    .line 555
    aput-object v5, v1, v2

    .line 556
    .line 557
    const/4 v2, 0x4

    .line 558
    aput-object v8, v1, v2

    .line 559
    .line 560
    const/4 v2, 0x5

    .line 561
    aput-object v7, v1, v2

    .line 562
    .line 563
    const/4 v2, 0x6

    .line 564
    aput-object v10, v1, v2

    .line 565
    .line 566
    const/4 v2, 0x7

    .line 567
    aput-object v9, v1, v2

    .line 568
    .line 569
    const/16 v2, 0x8

    .line 570
    .line 571
    aput-object v12, v1, v2

    .line 572
    .line 573
    const/16 v2, 0x9

    .line 574
    .line 575
    aput-object v13, v1, v2

    .line 576
    .line 577
    const/16 v2, 0xa

    .line 578
    .line 579
    aput-object v14, v1, v2

    .line 580
    .line 581
    const/16 v2, 0xb

    .line 582
    .line 583
    aput-object v15, v1, v2

    .line 584
    .line 585
    const/16 v2, 0xc

    .line 586
    .line 587
    aput-object v16, v1, v2

    .line 588
    .line 589
    const/16 v2, 0xd

    .line 590
    .line 591
    aput-object v18, v1, v2

    .line 592
    .line 593
    const/16 v2, 0xe

    .line 594
    .line 595
    aput-object v17, v1, v2

    .line 596
    .line 597
    const/16 v2, 0xf

    .line 598
    .line 599
    aput-object v11, v1, v2

    .line 600
    .line 601
    const/16 v2, 0x10

    .line 602
    .line 603
    aput-object v19, v1, v2

    .line 604
    .line 605
    const/16 v2, 0x11

    .line 606
    .line 607
    aput-object v20, v1, v2

    .line 608
    .line 609
    const/16 v2, 0x12

    .line 610
    .line 611
    aput-object v21, v1, v2

    .line 612
    .line 613
    const/16 v2, 0x13

    .line 614
    .line 615
    aput-object v22, v1, v2

    .line 616
    .line 617
    const/16 v2, 0x14

    .line 618
    .line 619
    aput-object v23, v1, v2

    .line 620
    .line 621
    const/16 v2, 0x15

    .line 622
    .line 623
    aput-object v24, v1, v2

    .line 624
    .line 625
    const/16 v2, 0x16

    .line 626
    .line 627
    aput-object v25, v1, v2

    .line 628
    .line 629
    const/16 v2, 0x17

    .line 630
    .line 631
    aput-object v26, v1, v2

    .line 632
    .line 633
    const/16 v2, 0x18

    .line 634
    .line 635
    aput-object v27, v1, v2

    .line 636
    .line 637
    const/16 v2, 0x19

    .line 638
    .line 639
    aput-object v28, v1, v2

    .line 640
    .line 641
    const/16 v2, 0x1a

    .line 642
    .line 643
    aput-object v29, v1, v2

    .line 644
    .line 645
    const/16 v2, 0x1b

    .line 646
    .line 647
    aput-object v30, v1, v2

    .line 648
    .line 649
    const/16 v2, 0x1c

    .line 650
    .line 651
    aput-object v31, v1, v2

    .line 652
    .line 653
    const/16 v2, 0x1d

    .line 654
    .line 655
    aput-object v32, v1, v2

    .line 656
    .line 657
    const/16 v2, 0x1e

    .line 658
    .line 659
    aput-object v33, v1, v2

    .line 660
    .line 661
    const/16 v2, 0x1f

    .line 662
    .line 663
    aput-object v34, v1, v2

    .line 664
    .line 665
    const/16 v2, 0x20

    .line 666
    .line 667
    aput-object v35, v1, v2

    .line 668
    .line 669
    const/16 v2, 0x21

    .line 670
    .line 671
    aput-object v36, v1, v2

    .line 672
    .line 673
    const/16 v2, 0x22

    .line 674
    .line 675
    aput-object v37, v1, v2

    .line 676
    .line 677
    const/16 v2, 0x23

    .line 678
    .line 679
    aput-object v38, v1, v2

    .line 680
    .line 681
    const/16 v2, 0x24

    .line 682
    .line 683
    aput-object v39, v1, v2

    .line 684
    .line 685
    const/16 v2, 0x25

    .line 686
    .line 687
    aput-object v40, v1, v2

    .line 688
    .line 689
    const/16 v2, 0x26

    .line 690
    .line 691
    aput-object v41, v1, v2

    .line 692
    .line 693
    const/16 v2, 0x27

    .line 694
    .line 695
    aput-object v42, v1, v2

    .line 696
    .line 697
    const/16 v2, 0x28

    .line 698
    .line 699
    aput-object v43, v1, v2

    .line 700
    .line 701
    const/16 v2, 0x29

    .line 702
    .line 703
    aput-object v44, v1, v2

    .line 704
    .line 705
    const/16 v2, 0x2a

    .line 706
    .line 707
    aput-object v45, v1, v2

    .line 708
    .line 709
    const/16 v2, 0x2b

    .line 710
    .line 711
    aput-object v46, v1, v2

    .line 712
    .line 713
    const/16 v2, 0x2c

    .line 714
    .line 715
    aput-object v47, v1, v2

    .line 716
    .line 717
    const/16 v2, 0x2d

    .line 718
    .line 719
    aput-object v48, v1, v2

    .line 720
    .line 721
    const/16 v2, 0x2e

    .line 722
    .line 723
    aput-object v49, v1, v2

    .line 724
    .line 725
    const/16 v2, 0x2f

    .line 726
    .line 727
    aput-object v50, v1, v2

    .line 728
    .line 729
    const/16 v2, 0x30

    .line 730
    .line 731
    aput-object v51, v1, v2

    .line 732
    .line 733
    const/16 v2, 0x31

    .line 734
    .line 735
    aput-object v52, v1, v2

    .line 736
    .line 737
    const/16 v2, 0x32

    .line 738
    .line 739
    aput-object v53, v1, v2

    .line 740
    .line 741
    const/16 v2, 0x33

    .line 742
    .line 743
    aput-object v54, v1, v2

    .line 744
    .line 745
    const/16 v2, 0x34

    .line 746
    .line 747
    aput-object v55, v1, v2

    .line 748
    .line 749
    const/16 v2, 0x35

    .line 750
    .line 751
    aput-object v56, v1, v2

    .line 752
    .line 753
    const/16 v2, 0x36

    .line 754
    .line 755
    aput-object v57, v1, v2

    .line 756
    .line 757
    const/16 v2, 0x37

    .line 758
    .line 759
    aput-object v58, v1, v2

    .line 760
    .line 761
    const/16 v2, 0x38

    .line 762
    .line 763
    aput-object v59, v1, v2

    .line 764
    .line 765
    const/16 v2, 0x39

    .line 766
    .line 767
    aput-object v60, v1, v2

    .line 768
    .line 769
    const/16 v2, 0x3a

    .line 770
    .line 771
    aput-object v61, v1, v2

    .line 772
    .line 773
    const/16 v2, 0x3b

    .line 774
    .line 775
    aput-object v62, v1, v2

    .line 776
    .line 777
    const/16 v2, 0x3c

    .line 778
    .line 779
    aput-object v0, v1, v2

    .line 780
    .line 781
    sput-object v1, Lokhttp3/internal/http2/Hpack;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lokhttp3/internal/http2/Header;

    .line 782
    .line 783
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 784
    .line 785
    array-length v2, v1

    .line 786
    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 787
    .line 788
    .line 789
    array-length v2, v1

    .line 790
    :goto_0
    if-ge v4, v2, :cond_1

    .line 791
    .line 792
    aget-object v3, v1, v4

    .line 793
    .line 794
    iget-object v3, v3, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    .line 795
    .line 796
    invoke-virtual {v0, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 797
    .line 798
    .line 799
    move-result v3

    .line 800
    if-nez v3, :cond_0

    .line 801
    .line 802
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 803
    .line 804
    .line 805
    move-result-object v3

    .line 806
    aget-object v5, v1, v4

    .line 807
    .line 808
    iget-object v5, v5, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    .line 809
    .line 810
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    :cond_0
    const/4 v3, 0x1

    .line 814
    add-int/2addr v4, v3

    .line 815
    goto :goto_0

    .line 816
    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    const-string v1, "unmodifiableMap(...)"

    .line 821
    .line 822
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    sput-object v0, Lokhttp3/internal/http2/Hpack;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/Map;

    .line 826
    .line 827
    return-void
.end method


# virtual methods
.method public final checkLowercase(Lokio/ByteString;)Lokio/ByteString;
    .locals 4
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lokio/ByteString;->getByte(I)B

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x41

    .line 18
    .line 19
    if-gt v3, v2, :cond_1

    .line 20
    .line 21
    const/16 v3, 0x5b

    .line 22
    .line 23
    if-lt v2, v3, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "PROTOCOL_ERROR response malformed: mixed case name: "

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return-object p1
.end method

.method public final getNAME_TO_FIRST_INDEX()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/internal/http2/Hpack;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSTATIC_HEADER_TABLE()[Lokhttp3/internal/http2/Header;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/internal/http2/Hpack;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lokhttp3/internal/http2/Header;

    .line 2
    .line 3
    return-object v0
.end method
