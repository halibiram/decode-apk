.class public final Lcom/v2ray/ang/fmt/VmessFmt;
.super Lcom/v2ray/ang/fmt/FmtBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/fmt/VmessFmt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005J\u0010\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u0005\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/v2ray/ang/fmt/VmessFmt;",
        "Lcom/v2ray/ang/fmt/FmtBase;",
        "<init>",
        "()V",
        "parse",
        "Lcom/v2ray/ang/dto/ProfileItem;",
        "str",
        "",
        "toUri",
        "config",
        "parseVmessStd",
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
        "SMAP\nVmessFmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VmessFmt.kt\ncom/v2ray/ang/fmt/VmessFmt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,192:1\n1#2:193\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/v2ray/ang/fmt/VmessFmt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/v2ray/ang/fmt/VmessFmt;

    invoke-direct {v0}, Lcom/v2ray/ang/fmt/VmessFmt;-><init>()V

    sput-object v0, Lcom/v2ray/ang/fmt/VmessFmt;->INSTANCE:Lcom/v2ray/ang/fmt/VmessFmt;

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
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x4

    .line 5
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v5, 0x2

    .line 8
    new-array v6, v5, [J

    .line 9
    .line 10
    fill-array-data v6, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v10, 0x6

    .line 24
    const/4 v11, 0x0

    .line 25
    const/16 v7, 0x3f

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    move-object v6, p1

    .line 30
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-lez v4, :cond_0

    .line 35
    .line 36
    const/4 v10, 0x6

    .line 37
    const/4 v11, 0x0

    .line 38
    const/16 v7, 0x26

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    move-object v6, p1

    .line 43
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-lez v4, :cond_0

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/v2ray/ang/fmt/VmessFmt;->parseVmessStd(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_0
    sget-object v4, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 55
    .line 56
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v7, v3, [J

    .line 59
    .line 60
    fill-array-data v7, :array_1

    .line 61
    .line 62
    .line 63
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v4, v6, v2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    sget-object v6, Lcom/v2ray/ang/dto/ProfileItem;->Companion:Lcom/v2ray/ang/dto/ProfileItem$Companion;

    .line 75
    .line 76
    sget-object v7, Lcom/v2ray/ang/dto/EConfigType;->VMESS:Lcom/v2ray/ang/dto/EConfigType;

    .line 77
    .line 78
    invoke-virtual {v6, v7}, Lcom/v2ray/ang/dto/ProfileItem$Companion;->create(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v7}, Lcom/v2ray/ang/dto/EConfigType;->getProtocolScheme()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v8, v1, [J

    .line 89
    .line 90
    const-wide v10, 0x774d26949871931L

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    aput-wide v10, v8, v2

    .line 96
    .line 97
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    const/4 v12, 0x4

    .line 105
    const/4 v13, 0x0

    .line 106
    const/4 v11, 0x0

    .line 107
    move-object v8, p1

    .line 108
    invoke-static/range {v8 .. v13}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    sget-object v2, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 113
    .line 114
    invoke-virtual {v2, p1}, Lcom/v2ray/ang/util/Utils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    const/4 v7, 0x0

    .line 123
    if-eqz v2, :cond_1

    .line 124
    .line 125
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v0, v0, [J

    .line 128
    .line 129
    fill-array-data v0, :array_2

    .line 130
    .line 131
    .line 132
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v0, v3, [J

    .line 141
    .line 142
    fill-array-data v0, :array_3

    .line 143
    .line 144
    .line 145
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    return-object v7

    .line 152
    :cond_1
    sget-object v2, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 153
    .line 154
    const-class v8, Lcom/v2ray/ang/dto/VmessQRCode;

    .line 155
    .line 156
    invoke-virtual {v2, p1, v8}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Lcom/v2ray/ang/dto/VmessQRCode;

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getAdd()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-nez v2, :cond_7

    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getPort()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-nez v2, :cond_7

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getId()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-nez v2, :cond_7

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getNet()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_2

    .line 201
    .line 202
    goto/16 :goto_2

    .line 203
    .line 204
    :cond_2
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getPs()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setRemarks(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getAdd()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setServer(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getPort()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setServerPort(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getId()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setPassword(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getScy()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_3

    .line 241
    .line 242
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 243
    .line 244
    new-array v2, v5, [J

    .line 245
    .line 246
    fill-array-data v2, :array_4

    .line 247
    .line 248
    .line 249
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    goto :goto_0

    .line 257
    :cond_3
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getScy()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    :goto_0
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setMethod(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getNet()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    if-nez v0, :cond_4

    .line 269
    .line 270
    sget-object v0, Lcom/v2ray/ang/dto/NetworkType;->TCP:Lcom/v2ray/ang/dto/NetworkType;

    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/NetworkType;->getType()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    :cond_4
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setNetwork(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getType()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setHeaderType(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getHost()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setHost(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getPath()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setPath(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    sget-object v0, Lcom/v2ray/ang/dto/NetworkType;->Companion:Lcom/v2ray/ang/dto/NetworkType$Companion;

    .line 301
    .line 302
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/ProfileItem;->getNetwork()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v0, v2}, Lcom/v2ray/ang/dto/NetworkType$Companion;->fromString(Ljava/lang/String;)Lcom/v2ray/ang/dto/NetworkType;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    sget-object v2, Lcom/v2ray/ang/fmt/VmessFmt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 311
    .line 312
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    aget v0, v2, v0

    .line 317
    .line 318
    if-eq v0, v1, :cond_6

    .line 319
    .line 320
    if-eq v0, v5, :cond_5

    .line 321
    .line 322
    goto :goto_1

    .line 323
    :cond_5
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getType()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setMode(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getPath()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setServiceName(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getHost()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setAuthority(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    goto :goto_1

    .line 345
    :cond_6
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getPath()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setSeed(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    :goto_1
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getTls()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setSecurity(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setInsecure(Ljava/lang/Boolean;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getSni()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setSni(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getFp()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setFingerPrint(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/VmessQRCode;->getAlpn()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    invoke-virtual {v6, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setAlpn(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    return-object v6

    .line 388
    :cond_7
    :goto_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 389
    .line 390
    new-array v0, v0, [J

    .line 391
    .line 392
    fill-array-data v0, :array_5

    .line 393
    .line 394
    .line 395
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 402
    .line 403
    new-array v0, v3, [J

    .line 404
    .line 405
    fill-array-data v0, :array_6

    .line 406
    .line 407
    .line 408
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    return-object v7

    .line 415
    :array_0
    .array-data 8
        0x40c4f9a223c74df9L    # 10739.266716874192
        -0x291373d0d6020cc8L    # -5.363619336710153E110
    .end array-data

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
    :array_1
    .array-data 8
        0x77c4ce49bc0a4906L    # 8.587185165811653E268
        0x712cbf2a9fce59b6L    # 1.4624306095325917E237
        0x310acb8a0837f4fcL    # 1.8956843723849118E-72
        0x10c51a4681e250cfL    # 6.959371934104174E-228
    .end array-data

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
    .line 444
    .line 445
    .line 446
    .line 447
    :array_2
    .array-data 8
        -0x10a75279e9d0a91L
        -0x5498ebf0fe06aa6eL    # -1.3189133816484817E-99
        0x50deae06107162edL    # 3.6377352471963612E81
    .end array-data

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
    .line 460
    .line 461
    .line 462
    .line 463
    :array_3
    .array-data 8
        -0x7bd9b0cf83f17e94L
        0xe58b5a80571e024L
        -0x21a00d6c56be4b0L    # -2.87715794259116E298
        0x30e35bbc983a4e79L    # 3.423886194957227E-73
    .end array-data

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
    :array_4
    .array-data 8
        0x27079e390e8b705aL
        -0x1a09063ba72691b7L    # -1.5254052286926922E183
    .end array-data

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
    :array_5
    .array-data 8
        0x195086a4cf4fb70bL    # 9.49531095814726E-187
        -0x530b262b75a9ff05L    # -3.998398976078253E-92
        -0x63ebc08eea9128d2L
    .end array-data

    .line 496
    .line 497
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
    :array_6
    .array-data 8
        0x59552832e6bc9407L    # 2.185309183888169E122
        -0x341879489c69d1d0L    # -4.6148929853451626E57
        0x2f291589576b94aaL    # 1.6527614448028147E-81
        -0x4c0a6851b0cf950cL
    .end array-data
.end method

.method public final parseVmessStd(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 10
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
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 20
    .line 21
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v3, 0x4

    .line 24
    new-array v3, v3, [J

    .line 25
    .line 26
    fill-array-data v3, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v0, v2, v3}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sget-object v2, Lcom/v2ray/ang/dto/ProfileItem;->Companion:Lcom/v2ray/ang/dto/ProfileItem$Companion;

    .line 42
    .line 43
    sget-object v4, Lcom/v2ray/ang/dto/EConfigType;->VMESS:Lcom/v2ray/ang/dto/EConfigType;

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Lcom/v2ray/ang/dto/ProfileItem$Companion;->create(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-instance v4, Ljava/net/URI;

    .line 50
    .line 51
    sget-object v5, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 52
    .line 53
    invoke-virtual {v5, p1}, Lcom/v2ray/ang/util/Utils;->fixIllegalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0, v4}, Lcom/v2ray/ang/fmt/FmtBase;->getQueryParam(Ljava/net/URI;)Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v4}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    if-nez v6, :cond_1

    .line 82
    .line 83
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    const/4 v7, 0x1

    .line 86
    new-array v7, v7, [J

    .line 87
    .line 88
    const-wide v8, -0x193725e5f2d4d9c5L    # -1.3516615842909983E187

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    aput-wide v8, v7, v3

    .line 94
    .line 95
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    :cond_1
    invoke-virtual {v5, v6}, Lcom/v2ray/ang/util/Utils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-nez v5, :cond_2

    .line 111
    .line 112
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v5, v1, [J

    .line 115
    .line 116
    fill-array-data v5, :array_2

    .line 117
    .line 118
    .line 119
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    :cond_2
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/ProfileItem;->setRemarks(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v4}, Lcom/v2ray/ang/extension/_ExtKt;->getIdnHost(Ljava/net/URI;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/ProfileItem;->setServer(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/ProfileItem;->setServerPort(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/ProfileItem;->setPassword(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    new-array v1, v1, [J

    .line 157
    .line 158
    fill-array-data v1, :array_3

    .line 159
    .line 160
    .line 161
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v2, v1}, Lcom/v2ray/ang/dto/ProfileItem;->setMethod(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v2, p1, v0}, Lcom/v2ray/ang/fmt/FmtBase;->getItemFormQuery(Lcom/v2ray/ang/dto/ProfileItem;Ljava/util/Map;Z)V

    .line 172
    .line 173
    .line 174
    return-object v2

    .line 175
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 176
    return-object p1

    .line 177
    :array_0
    .array-data 8
        -0x63fa3cb499884183L    # -1.099888506281147E-173
        -0x7fbcc5fdab6128daL    # -2.13903003671689E-307
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_1
    .array-data 8
        -0x1e435f4e1543dac1L    # -6.439681050313906E162
        0x446602aca7165dfL
        0x4d4f2148f8d3e2daL    # 2.5612294654523615E64
        0x6e564f2a5dc021b7L    # 3.225682214555854E223
    .end array-data

    :array_2
    .array-data 8
        0x5ee85915ca39bfd3L    # 1.5566499542311629E149
        0x57c80c9e98eadb1fL    # 7.403050552635556E114
    .end array-data

    :array_3
    .array-data 8
        -0x461d9a379d6aa95fL    # -7.25656931039433E-30
        -0x14958748b6fad5e2L    # -2.7196080707554306E209
    .end array-data
.end method

.method public final toOutbound(Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;
    .locals 9
    .param p1    # Lcom/v2ray/ang/dto/ProfileItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v3, 0x3

    .line 6
    new-array v3, v3, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v2, Lcom/v2ray/ang/handler/V2rayConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/V2rayConfigManager;

    .line 22
    .line 23
    sget-object v3, Lcom/v2ray/ang/dto/EConfigType;->VMESS:Lcom/v2ray/ang/dto/EConfigType;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/handler/V2rayConfigManager;->createInitOutbound(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->getVnext()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean;

    .line 48
    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    sget-object v5, Lcom/v2ray/ang/fmt/VmessFmt;->INSTANCE:Lcom/v2ray/ang/fmt/VmessFmt;

    .line 52
    .line 53
    invoke-virtual {v5, p1}, Lcom/v2ray/ang/fmt/FmtBase;->getServerAddress(Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v4, v5}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean;->setAddress(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getServerPort()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-nez v5, :cond_0

    .line 65
    .line 66
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v6, v0, [J

    .line 69
    .line 70
    const-wide v7, -0x68762ff1605857b8L

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    aput-wide v7, v6, v1

    .line 76
    .line 77
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-virtual {v4, v5}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean;->setPort(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean;->getUsers()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean$UsersBean;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPassword()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    if-nez v6, :cond_1

    .line 106
    .line 107
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v0, v0, [J

    .line 110
    .line 111
    const-wide v7, -0x60984a2f89881abbL    # -2.158677257624493E-157

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    aput-wide v7, v0, v1

    .line 117
    .line 118
    invoke-direct {v6, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    :cond_1
    invoke-virtual {v5, v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean$UsersBean;->setId(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean;->getUsers()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean$UsersBean;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getMethod()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean$UsersBean;->setSecurity(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_2
    if-eqz v3, :cond_3

    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-eqz v0, :cond_3

    .line 152
    .line 153
    invoke-virtual {v2, v0, p1}, Lcom/v2ray/ang/handler/V2rayConfigManager;->populateTransportSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    goto :goto_0

    .line 158
    :cond_3
    const/4 v0, 0x0

    .line 159
    :goto_0
    if-eqz v3, :cond_4

    .line 160
    .line 161
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    if-eqz v1, :cond_4

    .line 166
    .line 167
    invoke-virtual {v2, v1, p1, v0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->populateTlsSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;Lcom/v2ray/ang/dto/ProfileItem;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_4
    return-object v3

    .line 171
    :array_0
    .array-data 8
        -0x528cdd6b845dccc3L    # -9.393588720190427E-90
        0x37a5579f0591c1a8L    # 1.2249862347854863E-40
        -0x71bd0a83fbf31263L    # -5.686527457944994E-240
    .end array-data
.end method

.method public final toUri(Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;
    .locals 23
    .param p1    # Lcom/v2ray/ang/dto/ProfileItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    new-array v4, v3, [J

    .line 7
    .line 8
    fill-array-data v4, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    move-object/from16 v4, p1

    .line 19
    .line 20
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/v2ray/ang/dto/VmessQRCode;

    .line 24
    .line 25
    move-object v5, v2

    .line 26
    const/16 v21, 0x7fff

    .line 27
    .line 28
    const/16 v22, 0x0

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v10, 0x0

    .line 35
    const/4 v11, 0x0

    .line 36
    const/4 v12, 0x0

    .line 37
    const/4 v13, 0x0

    .line 38
    const/4 v14, 0x0

    .line 39
    const/4 v15, 0x0

    .line 40
    const/16 v16, 0x0

    .line 41
    .line 42
    const/16 v17, 0x0

    .line 43
    .line 44
    const/16 v18, 0x0

    .line 45
    .line 46
    const/16 v19, 0x0

    .line 47
    .line 48
    const/16 v20, 0x0

    .line 49
    .line 50
    invoke-direct/range {v5 .. v22}, Lcom/v2ray/ang/dto/VmessQRCode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    .line 52
    .line 53
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v6, v3, [J

    .line 56
    .line 57
    fill-array-data v6, :array_1

    .line 58
    .line 59
    .line 60
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v2, v5}, Lcom/v2ray/ang/dto/VmessQRCode;->setV(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getRemarks()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v2, v5}, Lcom/v2ray/ang/dto/VmessQRCode;->setPs(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getServer()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    if-nez v5, :cond_0

    .line 82
    .line 83
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v6, v1, [J

    .line 86
    .line 87
    const-wide v7, 0x23cd80330fbf08abL

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    aput-wide v7, v6, v0

    .line 93
    .line 94
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    :cond_0
    invoke-virtual {v2, v5}, Lcom/v2ray/ang/dto/VmessQRCode;->setAdd(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getServerPort()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    if-nez v5, :cond_1

    .line 109
    .line 110
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v6, v1, [J

    .line 113
    .line 114
    const-wide v7, 0x2f72e4d1f950fec4L    # 3.983649693365574E-80

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    aput-wide v7, v6, v0

    .line 120
    .line 121
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    :cond_1
    invoke-virtual {v2, v5}, Lcom/v2ray/ang/dto/VmessQRCode;->setPort(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPassword()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    if-nez v5, :cond_2

    .line 136
    .line 137
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    new-array v6, v1, [J

    .line 140
    .line 141
    const-wide v7, 0x528198e06207289L

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    aput-wide v7, v6, v0

    .line 147
    .line 148
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    :cond_2
    invoke-virtual {v2, v5}, Lcom/v2ray/ang/dto/VmessQRCode;->setId(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getMethod()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    if-nez v5, :cond_3

    .line 163
    .line 164
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    new-array v6, v1, [J

    .line 167
    .line 168
    const-wide v7, 0x11fca57476fcb6deL    # 4.95304040959622E-222

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    aput-wide v7, v6, v0

    .line 174
    .line 175
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    :cond_3
    invoke-virtual {v2, v5}, Lcom/v2ray/ang/dto/VmessQRCode;->setScy(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 186
    .line 187
    new-array v6, v3, [J

    .line 188
    .line 189
    fill-array-data v6, :array_2

    .line 190
    .line 191
    .line 192
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v2, v5}, Lcom/v2ray/ang/dto/VmessQRCode;->setAid(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getNetwork()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    if-nez v5, :cond_4

    .line 207
    .line 208
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 209
    .line 210
    new-array v6, v1, [J

    .line 211
    .line 212
    const-wide v7, -0x4631142069f0e9dL

    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    aput-wide v7, v6, v0

    .line 218
    .line 219
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    :cond_4
    invoke-virtual {v2, v5}, Lcom/v2ray/ang/dto/VmessQRCode;->setNet(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getHeaderType()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    if-nez v5, :cond_5

    .line 234
    .line 235
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 236
    .line 237
    new-array v6, v1, [J

    .line 238
    .line 239
    const-wide v7, 0x1cc5429e59e88430L

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    aput-wide v7, v6, v0

    .line 245
    .line 246
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    :cond_5
    invoke-virtual {v2, v5}, Lcom/v2ray/ang/dto/VmessQRCode;->setType(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    sget-object v5, Lcom/v2ray/ang/dto/NetworkType;->Companion:Lcom/v2ray/ang/dto/NetworkType$Companion;

    .line 257
    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getNetwork()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-virtual {v5, v6}, Lcom/v2ray/ang/dto/NetworkType$Companion;->fromString(Ljava/lang/String;)Lcom/v2ray/ang/dto/NetworkType;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    sget-object v6, Lcom/v2ray/ang/fmt/VmessFmt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 267
    .line 268
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    aget v5, v6, v5

    .line 273
    .line 274
    if-eq v5, v1, :cond_a

    .line 275
    .line 276
    if-eq v5, v3, :cond_6

    .line 277
    .line 278
    goto :goto_0

    .line 279
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getMode()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    if-nez v3, :cond_7

    .line 284
    .line 285
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 286
    .line 287
    new-array v5, v1, [J

    .line 288
    .line 289
    const-wide v6, -0x1cba98cec7507e76L

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    aput-wide v6, v5, v0

    .line 295
    .line 296
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    :cond_7
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/VmessQRCode;->setType(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getServiceName()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    if-nez v3, :cond_8

    .line 311
    .line 312
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 313
    .line 314
    new-array v5, v1, [J

    .line 315
    .line 316
    const-wide v6, 0x632e216f1ef667baL    # 5.6855879555037825E169

    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    aput-wide v6, v5, v0

    .line 322
    .line 323
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    :cond_8
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/VmessQRCode;->setPath(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getAuthority()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    if-nez v3, :cond_9

    .line 338
    .line 339
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 340
    .line 341
    new-array v5, v1, [J

    .line 342
    .line 343
    const-wide v6, -0x5b40e0fe67e5aaeeL

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    aput-wide v6, v5, v0

    .line 349
    .line 350
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    :cond_9
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/VmessQRCode;->setHost(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    goto :goto_0

    .line 361
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getSeed()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    if-nez v3, :cond_b

    .line 366
    .line 367
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 368
    .line 369
    new-array v5, v1, [J

    .line 370
    .line 371
    const-wide v6, -0x19b9f88c633291fbL    # -4.680198452262563E184

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    aput-wide v6, v5, v0

    .line 377
    .line 378
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    :cond_b
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/VmessQRCode;->setPath(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getHost()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-static {v3}, Lcom/v2ray/ang/extension/_ExtKt;->isNotNullEmpty(Ljava/lang/CharSequence;)Z

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    if-eqz v5, :cond_d

    .line 397
    .line 398
    if-nez v3, :cond_c

    .line 399
    .line 400
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 401
    .line 402
    new-array v5, v1, [J

    .line 403
    .line 404
    const-wide v6, -0x2f169aa36ea9e17aL    # -6.022449933608478E81

    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    aput-wide v6, v5, v0

    .line 410
    .line 411
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    :cond_c
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/VmessQRCode;->setHost(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPath()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    invoke-static {v3}, Lcom/v2ray/ang/extension/_ExtKt;->isNotNullEmpty(Ljava/lang/CharSequence;)Z

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    if-eqz v5, :cond_f

    .line 430
    .line 431
    if-nez v3, :cond_e

    .line 432
    .line 433
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 434
    .line 435
    new-array v5, v1, [J

    .line 436
    .line 437
    const-wide v6, -0x2ff7789fd77b798L

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    aput-wide v6, v5, v0

    .line 443
    .line 444
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    :cond_e
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/VmessQRCode;->setPath(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getSecurity()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    if-nez v3, :cond_10

    .line 459
    .line 460
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 461
    .line 462
    new-array v5, v1, [J

    .line 463
    .line 464
    const-wide v6, 0x479d4ddf61d2ede3L    # 9.73798736590564E36

    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    aput-wide v6, v5, v0

    .line 470
    .line 471
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    :cond_10
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/VmessQRCode;->setTls(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getSni()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    if-nez v3, :cond_11

    .line 486
    .line 487
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 488
    .line 489
    new-array v5, v1, [J

    .line 490
    .line 491
    const-wide v6, 0xc81f2156c44d019L    # 2.0051761130499927E-248

    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    aput-wide v6, v5, v0

    .line 497
    .line 498
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    :cond_11
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/VmessQRCode;->setSni(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getFingerPrint()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    if-nez v3, :cond_12

    .line 513
    .line 514
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 515
    .line 516
    new-array v5, v1, [J

    .line 517
    .line 518
    const-wide v6, -0x2913f5f176645a37L    # -5.268116258244289E110

    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    aput-wide v6, v5, v0

    .line 524
    .line 525
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    :cond_12
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/VmessQRCode;->setFp(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getAlpn()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    if-nez v3, :cond_13

    .line 540
    .line 541
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 542
    .line 543
    new-array v1, v1, [J

    .line 544
    .line 545
    const-wide v4, 0x1f9ba18842c358f6L

    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    aput-wide v4, v1, v0

    .line 551
    .line 552
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    :cond_13
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/VmessQRCode;->setAlpn(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    sget-object v0, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 563
    .line 564
    invoke-virtual {v0, v2}, Lcom/v2ray/ang/util/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    sget-object v1, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 569
    .line 570
    invoke-virtual {v1, v0}, Lcom/v2ray/ang/util/Utils;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    return-object v0

    .line 575
    :array_0
    .array-data 8
        0x7edf951fc7a46177L    # 1.3536375165983902E303
        -0x39a49daf11f32969L    # -8.678351028292979E30
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
    :array_1
    .array-data 8
        0x1f6420734f69eaacL
        0x20b59f06a48df2adL    # 4.128210947921791E-151
    .end array-data

    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    :array_2
    .array-data 8
        0x1074f04c7cf786ceL
        -0x76c7f14261a00382L    # -2.984391330462697E-264
    .end array-data
.end method
