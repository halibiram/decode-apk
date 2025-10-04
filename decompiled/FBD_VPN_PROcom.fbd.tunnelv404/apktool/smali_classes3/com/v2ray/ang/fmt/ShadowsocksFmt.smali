.class public final Lcom/v2ray/ang/fmt/ShadowsocksFmt;
.super Lcom/v2ray/ang/fmt/FmtBase;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\t\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0005J\u0010\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u0005\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/v2ray/ang/fmt/ShadowsocksFmt;",
        "Lcom/v2ray/ang/fmt/FmtBase;",
        "<init>",
        "()V",
        "parse",
        "Lcom/v2ray/ang/dto/ProfileItem;",
        "str",
        "",
        "parseSip002",
        "parseLegacy",
        "toUri",
        "config",
        "toOutbound",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;",
        "profileItem",
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
        "SMAP\nShadowsocksFmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShadowsocksFmt.kt\ncom/v2ray/ang/fmt/ShadowsocksFmt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,154:1\n1#2:155\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/v2ray/ang/fmt/ShadowsocksFmt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/v2ray/ang/fmt/ShadowsocksFmt;

    invoke-direct {v0}, Lcom/v2ray/ang/fmt/ShadowsocksFmt;-><init>()V

    sput-object v0, Lcom/v2ray/ang/fmt/ShadowsocksFmt;->INSTANCE:Lcom/v2ray/ang/fmt/ShadowsocksFmt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/fmt/FmtBase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final parse(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 2
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
    invoke-virtual {p0, p1}, Lcom/v2ray/ang/fmt/ShadowsocksFmt;->parseSip002(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/v2ray/ang/fmt/ShadowsocksFmt;->parseLegacy(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    return-object v0

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x13d36ceb717f2f7bL    # -1.2024473908037463E213
        0x3a88454693dcf5c6L    # 9.802820576259092E-27
    .end array-data
.end method

.method public final parseLegacy(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object/from16 v3, p1

    .line 18
    .line 19
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lcom/v2ray/ang/dto/ProfileItem;->Companion:Lcom/v2ray/ang/dto/ProfileItem$Companion;

    .line 23
    .line 24
    sget-object v4, Lcom/v2ray/ang/dto/EConfigType;->SHADOWSOCKS:Lcom/v2ray/ang/dto/EConfigType;

    .line 25
    .line 26
    invoke-virtual {v1, v4}, Lcom/v2ray/ang/dto/ProfileItem$Companion;->create(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/EConfigType;->getProtocolScheme()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v9, 0x1

    .line 37
    new-array v6, v9, [J

    .line 38
    .line 39
    const-wide v7, -0x5e91cb314d61581fL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    aput-wide v7, v6, v10

    .line 46
    .line 47
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x4

    .line 57
    invoke-static/range {v3 .. v8}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v5, v2, [J

    .line 64
    .line 65
    fill-array-data v5, :array_1

    .line 66
    .line 67
    .line 68
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    const/4 v13, 0x0

    .line 76
    const/4 v14, 0x0

    .line 77
    const/4 v15, 0x6

    .line 78
    const/16 v16, 0x0

    .line 79
    .line 80
    move-object v11, v3

    .line 81
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-lez v4, :cond_0

    .line 86
    .line 87
    :try_start_0
    sget-object v5, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 88
    .line 89
    add-int/lit8 v6, v4, 0x1

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v8, v0, [J

    .line 102
    .line 103
    fill-array-data v8, :array_2

    .line 104
    .line 105
    .line 106
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v6}, Lcom/v2ray/ang/util/Utils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v1, v5}, Lcom/v2ray/ang/dto/ProfileItem;->setRemarks(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catch_0
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 125
    .line 126
    new-array v6, v0, [J

    .line 127
    .line 128
    fill-array-data v6, :array_3

    .line 129
    .line 130
    .line 131
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    const/4 v6, 0x7

    .line 140
    new-array v6, v6, [J

    .line 141
    .line 142
    fill-array-data v6, :array_4

    .line 143
    .line 144
    .line 145
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    :goto_0
    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v5, v0, [J

    .line 158
    .line 159
    fill-array-data v5, :array_5

    .line 160
    .line 161
    .line 162
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 173
    .line 174
    new-array v5, v2, [J

    .line 175
    .line 176
    fill-array-data v5, :array_6

    .line 177
    .line 178
    .line 179
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    const/4 v13, 0x0

    .line 187
    const/4 v14, 0x0

    .line 188
    const/4 v15, 0x6

    .line 189
    const/16 v16, 0x0

    .line 190
    .line 191
    move-object v11, v3

    .line 192
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-lez v4, :cond_1

    .line 197
    .line 198
    sget-object v5, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 199
    .line 200
    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 205
    .line 206
    new-array v8, v0, [J

    .line 207
    .line 208
    fill-array-data v8, :array_7

    .line 209
    .line 210
    .line 211
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v6}, Lcom/v2ray/ang/util/Utils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 234
    .line 235
    new-array v6, v0, [J

    .line 236
    .line 237
    fill-array-data v6, :array_8

    .line 238
    .line 239
    .line 240
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    goto :goto_1

    .line 266
    :cond_1
    sget-object v4, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 267
    .line 268
    invoke-virtual {v4, v3}, Lcom/v2ray/ang/util/Utils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    :goto_1
    new-instance v4, Lkotlin/text/Regex;

    .line 273
    .line 274
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 275
    .line 276
    const/4 v6, 0x5

    .line 277
    new-array v6, v6, [J

    .line 278
    .line 279
    fill-array-data v6, :array_9

    .line 280
    .line 281
    .line 282
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4, v3}, Lkotlin/text/Regex;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    if-nez v3, :cond_2

    .line 297
    .line 298
    const/4 v0, 0x0

    .line 299
    return-object v0

    .line 300
    :cond_2
    invoke-interface {v3}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    check-cast v4, Ljava/lang/String;

    .line 309
    .line 310
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 311
    .line 312
    new-array v6, v2, [J

    .line 313
    .line 314
    fill-array-data v6, :array_a

    .line 315
    .line 316
    .line 317
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 325
    .line 326
    new-array v7, v2, [J

    .line 327
    .line 328
    fill-array-data v7, :array_b

    .line 329
    .line 330
    .line 331
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt__StringsKt;->removeSurrounding(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    invoke-virtual {v1, v4}, Lcom/v2ray/ang/dto/ProfileItem;->setServer(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-interface {v3}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    const/4 v5, 0x4

    .line 350
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    check-cast v4, Ljava/lang/String;

    .line 355
    .line 356
    invoke-virtual {v1, v4}, Lcom/v2ray/ang/dto/ProfileItem;->setServerPort(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-interface {v3}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    check-cast v2, Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {v1, v2}, Lcom/v2ray/ang/dto/ProfileItem;->setPassword(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-interface {v3}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    check-cast v2, Ljava/lang/String;

    .line 381
    .line 382
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 383
    .line 384
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 389
    .line 390
    new-array v0, v0, [J

    .line 391
    .line 392
    fill-array-data v0, :array_c

    .line 393
    .line 394
    .line 395
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v2}, Lcom/v2ray/ang/dto/ProfileItem;->setMethod(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    return-object v1

    .line 409
    :array_0
    .array-data 8
        -0x1058bbe6cff85edbL    # -7.054863364137418E229
        -0x53e8bd68674095fbL    # -2.7224095102704056E-96
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
    :array_1
    .array-data 8
        -0x5f9ee949452b722L    # -6.259070698757838E279
        0x5a8776f03894dc32L    # 1.2706951869624073E128
    .end array-data

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
    :array_2
    .array-data 8
        0x44ae573a5b31baeaL    # 7.164003311492901E22
        0xb2b4ca13918b545L
        -0x3ed36a3c10c8f29bL    # -936673.9672168909
    .end array-data

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
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    :array_3
    .array-data 8
        0x604ddf998be57cb0L    # 8.010746025113961E155
        0x470a5d936fa22368L    # 1.7112207937973E34
        0x363968291fc577a8L    # 1.7384091030148855E-47
    .end array-data

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
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    :array_4
    .array-data 8
        -0xb473d8d5fa7c9e9L
        -0x5d4cf958d24c0c86L
        0x22f5ffe41243a274L
        -0x757ab356b689c1d0L    # -5.541180270064215E-258
        -0x3f6eab95185059d9L    # -1109.104399437443
        0x1dbb9ba10b3bd51bL
        0x1b0a6de95e21feddL
    .end array-data

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
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
    .line 494
    .line 495
    .line 496
    .line 497
    :array_5
    .array-data 8
        -0x6f7965fcd0a6d600L    # -4.658570864585921E-229
        0x257748f964766be8L    # 3.359225294796126E-128
        -0x6fa1094d2b6412f8L    # -7.977663227371848E-230
    .end array-data

    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :array_6
    .array-data 8
        0x12c1309ddbd39184L
        0x7d7cda8ca70c0105L    # 2.9484746177312954E296
    .end array-data

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    :array_7
    .array-data 8
        -0x627af807c8afe217L
        -0x5c9228951a207c89L
        0x6595a78ab04d9930L    # 2.246387969673311E181
    .end array-data

    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    :array_8
    .array-data 8
        -0x1b5b39d976ccf739L    # -6.576701529628202E176
        -0x6b2f86f69daaec96L
        0x6fcf95d1c187460bL    # 3.830987807106101E230
    .end array-data

    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    :array_9
    .array-data 8
        -0x6a62046eafa55b07L
        -0x56dbed1bc3ba94aaL    # -1.669402604625035E-110
        -0x22ce723bf6fb1bd6L    # -8.361582013917347E140
        -0x5d556366ff5c2b88L
        -0x4a9cee1e9f0ea808L    # -1.592787794580008E-51
    .end array-data

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    :array_a
    .array-data 8
        0x10872cf49b180fdaL    # 4.776881120556167E-229
        0x589bf9f52ffe2739L    # 7.054887604454438E118
    .end array-data

    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    :array_b
    .array-data 8
        -0x721f83656c095fe2L
        0x6ca91b7e895d8188L
    .end array-data

    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    :array_c
    .array-data 8
        -0xa03b4a449eb8571L    # -2.175185357477645E260
        0x145ace5218917a73L
        -0x46ae0ed42d153fcaL    # -1.3822071763920837E-32
    .end array-data
.end method

.method public final parseSip002(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x3

    .line 4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v4, 0x2

    .line 7
    new-array v5, v4, [J

    .line 8
    .line 9
    fill-array-data v5, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v3, Lcom/v2ray/ang/dto/ProfileItem;->Companion:Lcom/v2ray/ang/dto/ProfileItem$Companion;

    .line 23
    .line 24
    sget-object v5, Lcom/v2ray/ang/dto/EConfigType;->SHADOWSOCKS:Lcom/v2ray/ang/dto/EConfigType;

    .line 25
    .line 26
    invoke-virtual {v3, v5}, Lcom/v2ray/ang/dto/ProfileItem$Companion;->create(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-instance v5, Ljava/net/URI;

    .line 31
    .line 32
    sget-object v6, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 33
    .line 34
    invoke-virtual {v6, p1}, Lcom/v2ray/ang/util/Utils;->fixIllegalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v5, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v5}, Lcom/v2ray/ang/extension/_ExtKt;->getIdnHost(Ljava/net/URI;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/4 v7, 0x0

    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    return-object v7

    .line 53
    :cond_0
    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-gtz p1, :cond_1

    .line 58
    .line 59
    return-object v7

    .line 60
    :cond_1
    invoke-virtual {v5}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_d

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_2
    invoke-virtual {v5}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-nez p1, :cond_3

    .line 79
    .line 80
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v8, v1, [J

    .line 83
    .line 84
    const-wide v9, 0x7235d41758d458a5L    # 1.455526280014956E242

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    aput-wide v9, v8, v0

    .line 90
    .line 91
    invoke-direct {p1, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :cond_3
    invoke-virtual {v6, p1}, Lcom/v2ray/ang/util/Utils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-nez v8, :cond_4

    .line 107
    .line 108
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v8, v4, [J

    .line 111
    .line 112
    fill-array-data v8, :array_1

    .line 113
    .line 114
    .line 115
    invoke-direct {p1, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    :cond_4
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setRemarks(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v5}, Lcom/v2ray/ang/extension/_ExtKt;->getIdnHost(Ljava/net/URI;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setServer(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setServerPort(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    new-array v9, v2, [J

    .line 150
    .line 151
    fill-array-data v9, :array_2

    .line 152
    .line 153
    .line 154
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    new-array v9, v4, [J

    .line 167
    .line 168
    fill-array-data v9, :array_3

    .line 169
    .line 170
    .line 171
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-static {p1, v8, v0, v4, v7}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_5

    .line 183
    .line 184
    invoke-virtual {v5}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 189
    .line 190
    new-array v6, v2, [J

    .line 191
    .line 192
    fill-array-data v6, :array_4

    .line 193
    .line 194
    .line 195
    invoke-direct {p1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    new-array v6, v4, [J

    .line 208
    .line 209
    fill-array-data v6, :array_5

    .line 210
    .line 211
    .line 212
    invoke-direct {p1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    filled-new-array {p1}, [Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    const/4 v12, 0x2

    .line 224
    const/4 v13, 0x0

    .line 225
    const/4 v10, 0x0

    .line 226
    const/4 v11, 0x2

    .line 227
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    goto :goto_0

    .line 232
    :cond_5
    invoke-virtual {v5}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {v6, p1}, Lcom/v2ray/ang/util/Utils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 241
    .line 242
    new-array v6, v4, [J

    .line 243
    .line 244
    fill-array-data v6, :array_6

    .line 245
    .line 246
    .line 247
    invoke-direct {p1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    filled-new-array {p1}, [Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    const/4 v12, 0x2

    .line 259
    const/4 v13, 0x0

    .line 260
    const/4 v10, 0x0

    .line 261
    const/4 v11, 0x2

    .line 262
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    :goto_0
    move-object v6, p1

    .line 267
    check-cast v6, Ljava/util/Collection;

    .line 268
    .line 269
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 270
    .line 271
    .line 272
    move-result v6

    .line 273
    if-ne v6, v4, :cond_6

    .line 274
    .line 275
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    check-cast v6, Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v3, v6}, Lcom/v2ray/ang/dto/ProfileItem;->setMethod(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    check-cast p1, Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setPassword(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    :cond_6
    invoke-virtual {v5}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    if-eqz p1, :cond_c

    .line 298
    .line 299
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    if-nez p1, :cond_7

    .line 304
    .line 305
    goto/16 :goto_2

    .line 306
    .line 307
    :cond_7
    invoke-virtual {p0, v5}, Lcom/v2ray/ang/fmt/FmtBase;->getQueryParam(Ljava/net/URI;)Ljava/util/Map;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 312
    .line 313
    new-array v6, v4, [J

    .line 314
    .line 315
    fill-array-data v6, :array_7

    .line 316
    .line 317
    .line 318
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    check-cast v5, Ljava/lang/String;

    .line 330
    .line 331
    if-eqz v5, :cond_c

    .line 332
    .line 333
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 334
    .line 335
    new-array v8, v2, [J

    .line 336
    .line 337
    fill-array-data v8, :array_8

    .line 338
    .line 339
    .line 340
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    invoke-static {v5, v6, v0, v4, v7}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-ne v0, v1, :cond_c

    .line 352
    .line 353
    new-instance v0, Ljava/util/HashMap;

    .line 354
    .line 355
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 356
    .line 357
    .line 358
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 359
    .line 360
    new-array v5, v4, [J

    .line 361
    .line 362
    fill-array-data v5, :array_9

    .line 363
    .line 364
    .line 365
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    move-object v5, p1

    .line 377
    check-cast v5, Ljava/lang/String;

    .line 378
    .line 379
    if-eqz v5, :cond_8

    .line 380
    .line 381
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 382
    .line 383
    new-array v1, v4, [J

    .line 384
    .line 385
    fill-array-data v1, :array_a

    .line 386
    .line 387
    .line 388
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    filled-new-array {p1}, [Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v6

    .line 399
    const/4 v9, 0x6

    .line 400
    const/4 v10, 0x0

    .line 401
    const/4 v7, 0x0

    .line 402
    const/4 v8, 0x0

    .line 403
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    if-nez p1, :cond_9

    .line 408
    .line 409
    :cond_8
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    :cond_a
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    if-eqz v1, :cond_b

    .line 422
    .line 423
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    move-object v5, v1

    .line 428
    check-cast v5, Ljava/lang/String;

    .line 429
    .line 430
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 431
    .line 432
    new-array v6, v4, [J

    .line 433
    .line 434
    fill-array-data v6, :array_b

    .line 435
    .line 436
    .line 437
    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    filled-new-array {v1}, [Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v6

    .line 448
    const/4 v9, 0x6

    .line 449
    const/4 v10, 0x0

    .line 450
    const/4 v7, 0x0

    .line 451
    const/4 v8, 0x0

    .line 452
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    move-object v5, v1

    .line 457
    check-cast v5, Ljava/util/Collection;

    .line 458
    .line 459
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 460
    .line 461
    .line 462
    move-result v5

    .line 463
    if-ne v5, v4, :cond_a

    .line 464
    .line 465
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    goto :goto_1

    .line 477
    :cond_b
    sget-object p1, Lcom/v2ray/ang/dto/NetworkType;->TCP:Lcom/v2ray/ang/dto/NetworkType;

    .line 478
    .line 479
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/NetworkType;->getType()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setNetwork(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 487
    .line 488
    new-array v1, v4, [J

    .line 489
    .line 490
    fill-array-data v1, :array_c

    .line 491
    .line 492
    .line 493
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setHeaderType(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 504
    .line 505
    new-array v1, v2, [J

    .line 506
    .line 507
    fill-array-data v1, :array_d

    .line 508
    .line 509
    .line 510
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object p1

    .line 517
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object p1

    .line 521
    check-cast p1, Ljava/lang/String;

    .line 522
    .line 523
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setHost(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 527
    .line 528
    new-array v1, v4, [J

    .line 529
    .line 530
    fill-array-data v1, :array_e

    .line 531
    .line 532
    .line 533
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object p1

    .line 544
    check-cast p1, Ljava/lang/String;

    .line 545
    .line 546
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setPath(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    :cond_c
    :goto_2
    return-object v3

    .line 550
    :cond_d
    :goto_3
    return-object v7

    .line 551
    :array_0
    .array-data 8
        0x66a31ce823d55dc2L
        0x4f3c7788024d6ba3L    # 5.029669242428308E73
    .end array-data

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    :array_1
    .array-data 8
        0x5bd786b0c1c3bfe9L    # 2.671829008979832E134
        -0x5c0230bb7665090aL
    .end array-data

    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    :array_2
    .array-data 8
        -0x6afb46c73f21ab01L
        0x5beac7ee1b25f5d5L    # 6.0829534778024386E134
        0x71506cbc7255b210L    # 6.68459919262157E237
    .end array-data

    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    :array_3
    .array-data 8
        0x29fcf5aad8c1ef4L
        0x5d441aaf12317e33L    # 1.915294279378319E141
    .end array-data

    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    :array_4
    .array-data 8
        0x1ddcbd4a5fcc5db7L    # 7.797947828920455E-165
        0x6841f9dfbff7eed6L    # 1.6402950749623398E194
        0x230cd6e78614aa71L    # 7.567968292807893E-140
    .end array-data

    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    :array_5
    .array-data 8
        0x2030121e114f8cb2L
        -0x15ecddd476edffc5L    # -9.373267016036193E202
    .end array-data

    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    :array_6
    .array-data 8
        0x193bdd3ea77e8602L    # 4.002486404362361E-187
        -0x79b791b64a08a15fL
    .end array-data

    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    :array_7
    .array-data 8
        -0x57c273c0e76d95d1L    # -7.499069367441515E-115
        -0x50f2f2a60e563e0L
    .end array-data

    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    :array_8
    .array-data 8
        -0x590593f99d69f52fL    # -6.395094800163917E-121
        0x27429e6a0854c437L
        -0x5d314030b1d65598L    # -5.043205536603649E-141
    .end array-data

    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    :array_9
    .array-data 8
        -0x37741a3bbf6bdc8cL    # -3.0377715577265E41
        0x738f35e56dafa4b9L    # 4.3644308038997086E248
    .end array-data

    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    :array_a
    .array-data 8
        0x3c1bc26d1cad64beL    # 3.7621107153636157E-19
        0x571825f238bc3b73L    # 3.6296409609865347E111
    .end array-data

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
    :array_b
    .array-data 8
        0x2de18d94aadf5632L    # 1.102970390437569E-87
        0x59c8e40b1bb831d9L    # 3.290841654284712E124
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
    :array_c
    .array-data 8
        0x64763b237159cf58L    # 8.797447232928125E175
        -0x2be379fc670ffb61L    # -1.5231452492208882E97
    .end array-data

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    :array_d
    .array-data 8
        -0x10f823246e6c34e8L    # -7.066214149553388E226
        0x4f6911f5d4b71491L    # 3.5436107116647373E74
        0x49b30f98b3e02045L    # 1.0881863809955084E47
    .end array-data

    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    :array_e
    .array-data 8
        0x98e8d97127d9212L    # 1.2128549991531057E-262
        0x2ae44fac76bd4773L
    .end array-data
.end method

.method public final toOutbound(Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;
    .locals 8
    .param p1    # Lcom/v2ray/ang/dto/ProfileItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    sget-object v0, Lcom/v2ray/ang/handler/V2rayConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/V2rayConfigManager;

    .line 20
    .line 21
    sget-object v1, Lcom/v2ray/ang/dto/EConfigType;->SHADOWSOCKS:Lcom/v2ray/ang/dto/EConfigType;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/handler/V2rayConfigManager;->createInitOutbound(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->getServers()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    sget-object v3, Lcom/v2ray/ang/fmt/ShadowsocksFmt;->INSTANCE:Lcom/v2ray/ang/fmt/ShadowsocksFmt;

    .line 50
    .line 51
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/fmt/FmtBase;->getServerAddress(Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;->setAddress(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getServerPort()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-nez v3, :cond_0

    .line 63
    .line 64
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    new-array v4, v4, [J

    .line 68
    .line 69
    const-wide v5, 0x5890fcc9754f9e57L    # 4.283773255097144E118

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    aput-wide v5, v4, v7

    .line 76
    .line 77
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;->setPort(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPassword()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;->setPassword(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getMethod()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;->setMethod(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    if-eqz v1, :cond_2

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_2

    .line 112
    .line 113
    invoke-virtual {v0, v2, p1}, Lcom/v2ray/ang/handler/V2rayConfigManager;->populateTransportSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    const/4 v2, 0x0

    .line 119
    :goto_0
    if-eqz v1, :cond_3

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    if-eqz v3, :cond_3

    .line 126
    .line 127
    invoke-virtual {v0, v3, p1, v2}, Lcom/v2ray/ang/handler/V2rayConfigManager;->populateTlsSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;Lcom/v2ray/ang/dto/ProfileItem;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    return-object v1

    .line 131
    :array_0
    .array-data 8
        0x17f59cd31cb10565L
        -0x743dc4c74e543702L    # -4.973385013950549E-252
        -0x4fa8972eb10d6a2cL    # -8.086716094941485E-76
    .end array-data
.end method

.method public final toUri(Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/v2ray/ang/dto/ProfileItem;
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
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getMethod()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPassword()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, ":"

    .line 28
    .line 29
    invoke-static {v0, v2, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/v2ray/ang/util/Utils;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, p1, v0, v1}, Lcom/v2ray/ang/fmt/FmtBase;->toUri(Lcom/v2ray/ang/dto/ProfileItem;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    :array_0
    .array-data 8
        -0x267b7ebee94df830L    # -1.694360769213354E123
        0x3e39e819b0566daaL    # 6.031860127175976E-9
    .end array-data
.end method
