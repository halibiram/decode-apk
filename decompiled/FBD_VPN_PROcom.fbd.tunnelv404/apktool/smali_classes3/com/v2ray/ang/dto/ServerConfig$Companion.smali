.class public final Lcom/v2ray/ang/dto/ServerConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/v2ray/ang/dto/ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/dto/ServerConfig$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/v2ray/ang/dto/ServerConfig$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/v2ray/ang/dto/ServerConfig;",
        "configType",
        "Lcom/v2ray/ang/dto/EConfigType;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/dto/ServerConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/ServerConfig;
    .locals 54
    .param p1    # Lcom/v2ray/ang/dto/EConfigType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    move-object/from16 v4, p1

    .line 17
    .line 18
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/v2ray/ang/dto/ServerConfig$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    aget v0, v0, v2

    .line 28
    .line 29
    packed-switch v0, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 33
    .line 34
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :pswitch_0
    new-instance v0, Lcom/v2ray/ang/dto/ServerConfig;

    .line 39
    .line 40
    new-instance v15, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v1, v1, [J

    .line 55
    .line 56
    fill-array-data v1, :array_1

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v8, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 70
    .line 71
    move-object/from16 v16, v8

    .line 72
    .line 73
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    new-array v2, v2, [J

    .line 77
    .line 78
    const-wide v5, 0x4b098253a26ca1a8L    # 3.0541066112603623E53

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    aput-wide v5, v2, v3

    .line 85
    .line 86
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v29

    .line 93
    new-instance v1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$WireGuardBean;

    .line 94
    .line 95
    const/4 v13, 0x7

    .line 96
    const/4 v14, 0x0

    .line 97
    const/4 v10, 0x0

    .line 98
    const/4 v11, 0x0

    .line 99
    const/4 v12, 0x0

    .line 100
    move-object v9, v1

    .line 101
    invoke-direct/range {v9 .. v14}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$WireGuardBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v30

    .line 108
    const v34, 0x1cfff

    .line 109
    .line 110
    .line 111
    const/16 v35, 0x0

    .line 112
    .line 113
    const/16 v17, 0x0

    .line 114
    .line 115
    const/16 v18, 0x0

    .line 116
    .line 117
    const/16 v19, 0x0

    .line 118
    .line 119
    const/16 v20, 0x0

    .line 120
    .line 121
    const/16 v21, 0x0

    .line 122
    .line 123
    const/16 v22, 0x0

    .line 124
    .line 125
    const/16 v23, 0x0

    .line 126
    .line 127
    const/16 v24, 0x0

    .line 128
    .line 129
    const/16 v25, 0x0

    .line 130
    .line 131
    const/16 v26, 0x0

    .line 132
    .line 133
    const/16 v27, 0x0

    .line 134
    .line 135
    const/16 v28, 0x0

    .line 136
    .line 137
    const/16 v31, 0x0

    .line 138
    .line 139
    const/16 v32, 0x0

    .line 140
    .line 141
    const/16 v33, 0x0

    .line 142
    .line 143
    invoke-direct/range {v16 .. v35}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;-><init>(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$FragmentBean;Ljava/util/List;Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$Response;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    .line 145
    .line 146
    const/16 v13, 0x79

    .line 147
    .line 148
    const/4 v6, 0x0

    .line 149
    const/4 v9, 0x0

    .line 150
    move-object v5, v15

    .line 151
    invoke-direct/range {v5 .. v14}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;Ljava/lang/Object;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 152
    .line 153
    .line 154
    const/16 v11, 0x5d

    .line 155
    .line 156
    const/4 v5, 0x0

    .line 157
    const-wide/16 v6, 0x0

    .line 158
    .line 159
    const/4 v8, 0x0

    .line 160
    move-object v2, v0

    .line 161
    move-object/from16 v4, p1

    .line 162
    .line 163
    move-object v9, v15

    .line 164
    invoke-direct/range {v2 .. v12}, Lcom/v2ray/ang/dto/ServerConfig;-><init>(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;Lcom/v2ray/ang/dto/V2rayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 165
    .line 166
    .line 167
    return-object v0

    .line 168
    :pswitch_1
    new-instance v0, Lcom/v2ray/ang/dto/ServerConfig;

    .line 169
    .line 170
    new-instance v15, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 171
    .line 172
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 177
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 183
    .line 184
    new-array v1, v1, [J

    .line 185
    .line 186
    fill-array-data v1, :array_2

    .line 187
    .line 188
    .line 189
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    new-instance v8, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 200
    .line 201
    move-object/from16 v16, v8

    .line 202
    .line 203
    new-instance v1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;

    .line 204
    .line 205
    const/16 v28, 0x3ff

    .line 206
    .line 207
    const/16 v29, 0x0

    .line 208
    .line 209
    const/16 v18, 0x0

    .line 210
    .line 211
    const/16 v19, 0x0

    .line 212
    .line 213
    const/16 v20, 0x0

    .line 214
    .line 215
    const/16 v21, 0x0

    .line 216
    .line 217
    const/16 v22, 0x0

    .line 218
    .line 219
    const/16 v23, 0x0

    .line 220
    .line 221
    const/16 v24, 0x0

    .line 222
    .line 223
    const/16 v25, 0x0

    .line 224
    .line 225
    const/16 v26, 0x0

    .line 226
    .line 227
    const/16 v27, 0x0

    .line 228
    .line 229
    move-object/from16 v17, v1

    .line 230
    .line 231
    invoke-direct/range {v17 .. v29}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v1}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object v20

    .line 238
    const v34, 0x1fff7

    .line 239
    .line 240
    .line 241
    const/16 v35, 0x0

    .line 242
    .line 243
    const/16 v17, 0x0

    .line 244
    .line 245
    const/16 v22, 0x0

    .line 246
    .line 247
    const/16 v23, 0x0

    .line 248
    .line 249
    const/16 v28, 0x0

    .line 250
    .line 251
    const/16 v30, 0x0

    .line 252
    .line 253
    const/16 v31, 0x0

    .line 254
    .line 255
    const/16 v32, 0x0

    .line 256
    .line 257
    const/16 v33, 0x0

    .line 258
    .line 259
    invoke-direct/range {v16 .. v35}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;-><init>(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$FragmentBean;Ljava/util/List;Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$Response;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 260
    .line 261
    .line 262
    new-instance v9, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 263
    .line 264
    move-object/from16 v36, v9

    .line 265
    .line 266
    const/16 v52, 0x7fff

    .line 267
    .line 268
    const/16 v53, 0x0

    .line 269
    .line 270
    const/16 v37, 0x0

    .line 271
    .line 272
    const/16 v38, 0x0

    .line 273
    .line 274
    const/16 v39, 0x0

    .line 275
    .line 276
    const/16 v40, 0x0

    .line 277
    .line 278
    const/16 v41, 0x0

    .line 279
    .line 280
    const/16 v42, 0x0

    .line 281
    .line 282
    const/16 v43, 0x0

    .line 283
    .line 284
    const/16 v44, 0x0

    .line 285
    .line 286
    const/16 v45, 0x0

    .line 287
    .line 288
    const/16 v46, 0x0

    .line 289
    .line 290
    const/16 v47, 0x0

    .line 291
    .line 292
    const/16 v48, 0x0

    .line 293
    .line 294
    const/16 v49, 0x0

    .line 295
    .line 296
    const/16 v50, 0x0

    .line 297
    .line 298
    const/16 v51, 0x0

    .line 299
    .line 300
    invoke-direct/range {v36 .. v53}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 301
    .line 302
    .line 303
    const/16 v13, 0x71

    .line 304
    .line 305
    const/4 v14, 0x0

    .line 306
    const/4 v6, 0x0

    .line 307
    const/4 v10, 0x0

    .line 308
    const/4 v11, 0x0

    .line 309
    const/4 v12, 0x0

    .line 310
    move-object v5, v15

    .line 311
    invoke-direct/range {v5 .. v14}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;Ljava/lang/Object;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 312
    .line 313
    .line 314
    const/16 v11, 0x5d

    .line 315
    .line 316
    const/4 v3, 0x0

    .line 317
    const/4 v5, 0x0

    .line 318
    const-wide/16 v6, 0x0

    .line 319
    .line 320
    const/4 v8, 0x0

    .line 321
    move-object v2, v0

    .line 322
    move-object/from16 v4, p1

    .line 323
    .line 324
    move-object v9, v15

    .line 325
    invoke-direct/range {v2 .. v12}, Lcom/v2ray/ang/dto/ServerConfig;-><init>(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;Lcom/v2ray/ang/dto/V2rayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 326
    .line 327
    .line 328
    return-object v0

    .line 329
    :pswitch_2
    new-instance v0, Lcom/v2ray/ang/dto/ServerConfig;

    .line 330
    .line 331
    const/16 v11, 0x7d

    .line 332
    .line 333
    const/4 v12, 0x0

    .line 334
    const/4 v3, 0x0

    .line 335
    const/4 v5, 0x0

    .line 336
    const-wide/16 v6, 0x0

    .line 337
    .line 338
    const/4 v8, 0x0

    .line 339
    const/4 v9, 0x0

    .line 340
    const/4 v10, 0x0

    .line 341
    move-object v2, v0

    .line 342
    move-object/from16 v4, p1

    .line 343
    .line 344
    invoke-direct/range {v2 .. v12}, Lcom/v2ray/ang/dto/ServerConfig;-><init>(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;Lcom/v2ray/ang/dto/V2rayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 345
    .line 346
    .line 347
    return-object v0

    .line 348
    :pswitch_3
    new-instance v0, Lcom/v2ray/ang/dto/ServerConfig;

    .line 349
    .line 350
    new-instance v15, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 351
    .line 352
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 357
    .line 358
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v7

    .line 362
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 363
    .line 364
    new-array v1, v1, [J

    .line 365
    .line 366
    fill-array-data v1, :array_3

    .line 367
    .line 368
    .line 369
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    new-instance v8, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 380
    .line 381
    move-object/from16 v16, v8

    .line 382
    .line 383
    new-instance v1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean;

    .line 384
    .line 385
    new-instance v2, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean$UsersBean;

    .line 386
    .line 387
    const/16 v24, 0x3f

    .line 388
    .line 389
    const/16 v25, 0x0

    .line 390
    .line 391
    const/16 v18, 0x0

    .line 392
    .line 393
    const/16 v19, 0x0

    .line 394
    .line 395
    const/16 v20, 0x0

    .line 396
    .line 397
    const/16 v21, 0x0

    .line 398
    .line 399
    const/16 v22, 0x0

    .line 400
    .line 401
    const/16 v23, 0x0

    .line 402
    .line 403
    move-object/from16 v17, v2

    .line 404
    .line 405
    invoke-direct/range {v17 .. v25}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean$UsersBean;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 406
    .line 407
    .line 408
    invoke-static {v2}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 409
    .line 410
    .line 411
    move-result-object v12

    .line 412
    const/4 v13, 0x3

    .line 413
    const/4 v14, 0x0

    .line 414
    const/4 v10, 0x0

    .line 415
    const/4 v11, 0x0

    .line 416
    move-object v9, v1

    .line 417
    invoke-direct/range {v9 .. v14}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean;-><init>(Ljava/lang/String;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 418
    .line 419
    .line 420
    invoke-static {v1}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 421
    .line 422
    .line 423
    move-result-object v17

    .line 424
    const v34, 0x1fffe

    .line 425
    .line 426
    .line 427
    const/16 v35, 0x0

    .line 428
    .line 429
    const/16 v21, 0x0

    .line 430
    .line 431
    const/16 v24, 0x0

    .line 432
    .line 433
    const/16 v26, 0x0

    .line 434
    .line 435
    const/16 v27, 0x0

    .line 436
    .line 437
    const/16 v28, 0x0

    .line 438
    .line 439
    const/16 v29, 0x0

    .line 440
    .line 441
    const/16 v30, 0x0

    .line 442
    .line 443
    const/16 v31, 0x0

    .line 444
    .line 445
    const/16 v32, 0x0

    .line 446
    .line 447
    const/16 v33, 0x0

    .line 448
    .line 449
    invoke-direct/range {v16 .. v35}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;-><init>(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$FragmentBean;Ljava/util/List;Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$Response;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 450
    .line 451
    .line 452
    new-instance v9, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 453
    .line 454
    move-object/from16 v36, v9

    .line 455
    .line 456
    const/16 v52, 0x7fff

    .line 457
    .line 458
    const/16 v53, 0x0

    .line 459
    .line 460
    const/16 v37, 0x0

    .line 461
    .line 462
    const/16 v38, 0x0

    .line 463
    .line 464
    const/16 v39, 0x0

    .line 465
    .line 466
    const/16 v40, 0x0

    .line 467
    .line 468
    const/16 v41, 0x0

    .line 469
    .line 470
    const/16 v42, 0x0

    .line 471
    .line 472
    const/16 v43, 0x0

    .line 473
    .line 474
    const/16 v44, 0x0

    .line 475
    .line 476
    const/16 v45, 0x0

    .line 477
    .line 478
    const/16 v46, 0x0

    .line 479
    .line 480
    const/16 v47, 0x0

    .line 481
    .line 482
    const/16 v48, 0x0

    .line 483
    .line 484
    const/16 v49, 0x0

    .line 485
    .line 486
    const/16 v50, 0x0

    .line 487
    .line 488
    const/16 v51, 0x0

    .line 489
    .line 490
    invoke-direct/range {v36 .. v53}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 491
    .line 492
    .line 493
    const/16 v13, 0x71

    .line 494
    .line 495
    const/4 v6, 0x0

    .line 496
    const/4 v11, 0x0

    .line 497
    const/4 v12, 0x0

    .line 498
    move-object v5, v15

    .line 499
    invoke-direct/range {v5 .. v14}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;Ljava/lang/Object;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 500
    .line 501
    .line 502
    const/16 v11, 0x5d

    .line 503
    .line 504
    const/4 v3, 0x0

    .line 505
    const/4 v5, 0x0

    .line 506
    const-wide/16 v6, 0x0

    .line 507
    .line 508
    const/4 v8, 0x0

    .line 509
    move-object v2, v0

    .line 510
    move-object/from16 v4, p1

    .line 511
    .line 512
    move-object v9, v15

    .line 513
    invoke-direct/range {v2 .. v12}, Lcom/v2ray/ang/dto/ServerConfig;-><init>(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;Lcom/v2ray/ang/dto/V2rayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 514
    .line 515
    .line 516
    return-object v0

    .line 517
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
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
    :array_0
    .array-data 8
        -0x898f5ef2922a20eL
        -0xe529cc601349915L    # -3.827284483179053E239
        0x61aaea537660f976L
    .end array-data

    .line 540
    .line 541
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
    :array_1
    .array-data 8
        -0x2d0be37640ac3f82L    # -4.0967801897145196E91
        -0x59bc749373ca56bbL    # -2.309825347046897E-124
        -0x2a4a9c89ac55cc46L    # -7.664773565673873E104
    .end array-data

    .line 556
    .line 557
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
    :array_2
    .array-data 8
        -0xb890f882f915b03L    # -1.051131546928803E253
        0x3f451775f273bb40L    # 6.4366587767304E-4
        -0x36f2eb2d6a28ad41L    # -8.106693936825877E43
    .end array-data

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
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    :array_3
    .array-data 8
        -0x10db99056f95a585L    # -2.4166014880180686E227
        0x618d91d794c3627dL    # 8.314469508746031E161
        -0x12a849bc0083b4d6L    # -5.231480357634665E218
    .end array-data
.end method
