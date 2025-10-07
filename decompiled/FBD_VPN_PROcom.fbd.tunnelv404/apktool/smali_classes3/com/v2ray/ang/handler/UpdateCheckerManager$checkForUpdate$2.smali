.class final Lcom/v2ray/ang/handler/UpdateCheckerManager$checkForUpdate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v2ray/ang/handler/UpdateCheckerManager;->checkForUpdate(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/v2ray/ang/dto/CheckUpdateResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/v2ray/ang/dto/CheckUpdateResult;",
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
    c = "com.v2ray.ang.handler.UpdateCheckerManager$checkForUpdate$2"
    f = "UpdateCheckerManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $includePreRelease:Z

.field label:I


# direct methods
.method public constructor <init>(ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/v2ray/ang/handler/UpdateCheckerManager$checkForUpdate$2;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/v2ray/ang/handler/UpdateCheckerManager$checkForUpdate$2;->$includePreRelease:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/v2ray/ang/handler/UpdateCheckerManager$checkForUpdate$2;

    iget-boolean v0, p0, Lcom/v2ray/ang/handler/UpdateCheckerManager$checkForUpdate$2;->$includePreRelease:Z

    invoke-direct {p1, v0, p2}, Lcom/v2ray/ang/handler/UpdateCheckerManager$checkForUpdate$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/handler/UpdateCheckerManager$checkForUpdate$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/v2ray/ang/dto/CheckUpdateResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/handler/UpdateCheckerManager$checkForUpdate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/v2ray/ang/handler/UpdateCheckerManager$checkForUpdate$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/v2ray/ang/handler/UpdateCheckerManager$checkForUpdate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget v4, v0, Lcom/v2ray/ang/handler/UpdateCheckerManager$checkForUpdate$2;->label:I

    .line 11
    .line 12
    if-nez v4, :cond_7

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v4, v0, Lcom/v2ray/ang/handler/UpdateCheckerManager$checkForUpdate$2;->$includePreRelease:Z

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    new-array v2, v2, [J

    .line 24
    .line 25
    fill-array-data v2, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v2, v2, [J

    .line 39
    .line 40
    fill-array-data v2, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v5, v3, [J

    .line 53
    .line 54
    fill-array-data v5, :array_2

    .line 55
    .line 56
    .line 57
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    filled-new-array {v4}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-static {v2, v4}, Lcom/v2ray/ang/extension/_ExtKt;->concatUrl(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    :goto_0
    sget-object v10, Lcom/v2ray/ang/util/HttpUtil;->INSTANCE:Lcom/v2ray/ang/util/HttpUtil;

    .line 73
    .line 74
    const/4 v8, 0x4

    .line 75
    const/4 v9, 0x0

    .line 76
    const/16 v6, 0x1388

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    move-object v4, v10

    .line 80
    move-object v5, v2

    .line 81
    invoke-static/range {v4 .. v9}, Lcom/v2ray/ang/util/HttpUtil;->getUrlContent$default(Lcom/v2ray/ang/util/HttpUtil;Ljava/lang/String;IIILjava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    if-eqz v4, :cond_1

    .line 86
    .line 87
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-nez v5, :cond_2

    .line 92
    .line 93
    :cond_1
    sget-object v4, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/v2ray/ang/handler/SettingsManager;->getHttpPort()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    const/16 v5, 0x1388

    .line 100
    .line 101
    invoke-virtual {v10, v2, v5, v4}, Lcom/v2ray/ang/util/HttpUtil;->getUrlContent(Ljava/lang/String;II)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    if-eqz v4, :cond_6

    .line 106
    .line 107
    :cond_2
    iget-boolean v2, v0, Lcom/v2ray/ang/handler/UpdateCheckerManager$checkForUpdate$2;->$includePreRelease:Z

    .line 108
    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    sget-object v2, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 112
    .line 113
    const-class v5, [Lcom/v2ray/ang/dto/GitHubRelease;

    .line 114
    .line 115
    invoke-virtual {v2, v4, v5}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, [Ljava/lang/Object;

    .line 120
    .line 121
    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Lcom/v2ray/ang/dto/GitHubRelease;

    .line 126
    .line 127
    if-eqz v2, :cond_3

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 131
    .line 132
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array v1, v1, [J

    .line 135
    .line 136
    fill-array-data v1, :array_3

    .line 137
    .line 138
    .line 139
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v2

    .line 150
    :cond_4
    sget-object v1, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 151
    .line 152
    const-class v2, Lcom/v2ray/ang/dto/GitHubRelease;

    .line 153
    .line 154
    invoke-virtual {v1, v4, v2}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    move-object v2, v1

    .line 159
    check-cast v2, Lcom/v2ray/ang/dto/GitHubRelease;

    .line 160
    .line 161
    :goto_1
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/GitHubRelease;->getTagName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 166
    .line 167
    new-array v5, v3, [J

    .line 168
    .line 169
    fill-array-data v5, :array_4

    .line 170
    .line 171
    .line 172
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-static {v1, v4}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 184
    .line 185
    const/4 v4, 0x3

    .line 186
    new-array v4, v4, [J

    .line 187
    .line 188
    fill-array-data v4, :array_5

    .line 189
    .line 190
    .line 191
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    sget-object v1, Lcom/v2ray/ang/handler/UpdateCheckerManager;->INSTANCE:Lcom/v2ray/ang/handler/UpdateCheckerManager;

    .line 198
    .line 199
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 200
    .line 201
    new-array v5, v3, [J

    .line 202
    .line 203
    fill-array-data v5, :array_6

    .line 204
    .line 205
    .line 206
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-static {v1, v7, v4}, Lcom/v2ray/ang/handler/UpdateCheckerManager;->access$compareVersions(Lcom/v2ray/ang/handler/UpdateCheckerManager;Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-lez v4, :cond_5

    .line 218
    .line 219
    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 220
    .line 221
    const/4 v5, 0x0

    .line 222
    aget-object v4, v4, v5

    .line 223
    .line 224
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    new-array v3, v3, [J

    .line 227
    .line 228
    fill-array-data v3, :array_7

    .line 229
    .line 230
    .line 231
    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v1, v2, v4}, Lcom/v2ray/ang/handler/UpdateCheckerManager;->access$getDownloadUrl(Lcom/v2ray/ang/handler/UpdateCheckerManager;Lcom/v2ray/ang/dto/GitHubRelease;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    new-instance v1, Lcom/v2ray/ang/dto/CheckUpdateResult;

    .line 246
    .line 247
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/GitHubRelease;->getBody()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/GitHubRelease;->getPrerelease()Z

    .line 252
    .line 253
    .line 254
    move-result v11

    .line 255
    const/16 v12, 0x10

    .line 256
    .line 257
    const/4 v13, 0x0

    .line 258
    const/4 v6, 0x1

    .line 259
    const/4 v10, 0x0

    .line 260
    move-object v5, v1

    .line 261
    invoke-direct/range {v5 .. v13}, Lcom/v2ray/ang/dto/CheckUpdateResult;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_5
    new-instance v1, Lcom/v2ray/ang/dto/CheckUpdateResult;

    .line 266
    .line 267
    const/16 v21, 0x3e

    .line 268
    .line 269
    const/16 v22, 0x0

    .line 270
    .line 271
    const/4 v15, 0x0

    .line 272
    const/16 v16, 0x0

    .line 273
    .line 274
    const/16 v17, 0x0

    .line 275
    .line 276
    const/16 v18, 0x0

    .line 277
    .line 278
    const/16 v19, 0x0

    .line 279
    .line 280
    const/16 v20, 0x0

    .line 281
    .line 282
    move-object v14, v1

    .line 283
    invoke-direct/range {v14 .. v22}, Lcom/v2ray/ang/dto/CheckUpdateResult;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 284
    .line 285
    .line 286
    :goto_2
    return-object v1

    .line 287
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 288
    .line 289
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 290
    .line 291
    new-array v1, v1, [J

    .line 292
    .line 293
    fill-array-data v1, :array_8

    .line 294
    .line 295
    .line 296
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v2

    .line 307
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 308
    .line 309
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 310
    .line 311
    const/4 v3, 0x7

    .line 312
    new-array v3, v3, [J

    .line 313
    .line 314
    fill-array-data v3, :array_9

    .line 315
    .line 316
    .line 317
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw v1

    .line 328
    nop

    .line 329
    :array_0
    .array-data 8
        -0x51706f552a36d08fL    # -2.0310400593154934E-84
        -0x7839a180a0530a0L    # -2.400407270605762E272
        0x20f3c27163c0bbd9L    # 6.036414548643794E-150
        0x430fd0d2a3462e23L    # 1.1194159223781804E15
        -0x3fb3b270c7e52ef5L    # -56.60593320187953
        0x3ea6615f8a158a74L    # 6.669868250315572E-7
        -0x163ac1b23161c515L    # -3.252150437074535E201
        0xbac86de7cbd9b1dL
    .end array-data

    .line 330
    .line 331
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
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
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
    :array_1
    .array-data 8
        -0x31739b06afd192a0L    # -2.4496393515271647E70
        -0x3e2ac232f34f8fd1L    # -1.4254868987568471E9
        0x3ef454b6ef9361e4L    # 1.9389072780069935E-5
        -0x4760186540bc3a82L    # -6.000608079455579E-36
        0x7f6cda3b9279db89L    # 6.331529533438899E305
        -0x262bf39e7cba52c0L    # -5.301235990938772E124
        -0xb4a8cf4aada8841L
        -0x4d87f21c19c2f040L
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
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
    :array_2
    .array-data 8
        0x2d69d2c05b095c1aL    # 6.338436805659459E-90
        -0x7fcb0b87b92a8fc4L    # -1.165658357943975E-307
    .end array-data

    .line 402
    .line 403
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
    :array_3
    .array-data 8
        -0x4dd853556cec971eL    # -4.390675926185855E-67
        0x269758c59405e07eL    # 8.829344982326654E-123
        0x455522cbd0211d5dL    # 1.0220704943468905E26
        -0x227dbf6c4fceee51L    # -2.7821750996320866E142
    .end array-data

    .line 414
    .line 415
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
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    :array_4
    .array-data 8
        0x341479661b57a51aL    # 8.154326287558155E-58
        0x5197d30bdd6ef749L    # 1.1570730089493071E85
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
    :array_5
    .array-data 8
        0x231698139e866594L
        0x3dbdd51080acd506L    # 2.713230338509688E-11
        0x532505048bbadae8L    # 3.4254146126643643E92
    .end array-data

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
    .line 460
    .line 461
    :array_6
    .array-data 8
        -0x255e261cb8329f6bL    # -3.8668180689767844E128
        -0x2a7130d6978260f9L    # -1.380096020447497E104
    .end array-data

    .line 462
    .line 463
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
    :array_7
    .array-data 8
        -0x4bc1c7a6d6eb320aL    # -4.814341356058859E-57
        0x7d00694c05f35acL
    .end array-data

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
    :array_8
    .array-data 8
        -0x3f954cf00cb61af1L    # -213.59569706375666
        -0x1590513968217508L
        0x549c4c17c6ddfabcL    # 3.86832211872189E99
        -0x662c6d5508b40e84L
    .end array-data

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
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    :array_9
    .array-data 8
        -0x2e3145d8e05540a5L    # -1.1938539373756924E86
        0x46d9e4c2518664a7L    # 2.1007375991763783E33
        0x4a845c06b804a1f4L    # 9.521731114317458E50
        0x19b422b2e5bd3f4dL    # 7.404333996905975E-185
        0x217afba2016d27c5L    # 2.110237873109985E-147
        -0x4c956808e2e0f33cL
        0x55156d74743a6bd7L    # 7.498790751570241E101
    .end array-data
.end method
