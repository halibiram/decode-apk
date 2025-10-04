.class final Lcom/v2ray/ang/service/V2RayServiceManager$measureV2rayDelay$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v2ray/ang/service/V2RayServiceManager;->measureV2rayDelay()V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.v2ray.ang.service.V2RayServiceManager$measureV2rayDelay$1"
    f = "V2RayServiceManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/v2ray/ang/service/V2RayServiceManager$measureV2rayDelay$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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

    new-instance p1, Lcom/v2ray/ang/service/V2RayServiceManager$measureV2rayDelay$1;

    invoke-direct {p1, p2}, Lcom/v2ray/ang/service/V2RayServiceManager$measureV2rayDelay$1;-><init>(Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/service/V2RayServiceManager$measureV2rayDelay$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/service/V2RayServiceManager$measureV2rayDelay$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/v2ray/ang/service/V2RayServiceManager$measureV2rayDelay$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/v2ray/ang/service/V2RayServiceManager$measureV2rayDelay$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget v5, p0, Lcom/v2ray/ang/service/V2RayServiceManager$measureV2rayDelay$1;->label:I

    .line 10
    .line 11
    if-nez v5, :cond_8

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/v2ray/ang/service/V2RayServiceManager;->access$getService()Landroid/app/Service;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v6, v4, [J

    .line 28
    .line 29
    const-wide v7, -0x74435d29e276f66fL

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    aput-wide v7, v6, v3

    .line 35
    .line 36
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const-wide/16 v6, -0x1

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    :try_start_0
    sget-object v9, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 47
    .line 48
    invoke-virtual {v9}, Lcom/v2ray/ang/service/V2RayServiceManager;->getCoreController()Llibv2ray/CoreController;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    sget-object v10, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 53
    .line 54
    invoke-static {v10, v3, v4, v8}, Lcom/v2ray/ang/handler/SettingsManager;->getDelayTestUrl$default(Lcom/v2ray/ang/handler/SettingsManager;ZILjava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    invoke-virtual {v9, v10}, Llibv2ray/CoreController;->measureDelay(Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v5

    .line 64
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v10, v2, [J

    .line 67
    .line 68
    fill-array-data v10, :array_0

    .line 69
    .line 70
    .line 71
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    const/4 v10, 0x6

    .line 80
    new-array v10, v10, [J

    .line 81
    .line 82
    fill-array-data v10, :array_1

    .line 83
    .line 84
    .line 85
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-eqz v5, :cond_1

    .line 96
    .line 97
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v10, v1, [J

    .line 100
    .line 101
    fill-array-data v10, :array_2

    .line 102
    .line 103
    .line 104
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-static {v5, v9, v8, v1, v8}, Lkotlin/text/StringsKt__StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    if-nez v5, :cond_2

    .line 116
    .line 117
    :cond_1
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v9, v2, [J

    .line 120
    .line 121
    fill-array-data v9, :array_3

    .line 122
    .line 123
    .line 124
    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    :cond_2
    move-wide v9, v6

    .line 132
    :goto_0
    cmp-long v11, v9, v6

    .line 133
    .line 134
    if-nez v11, :cond_5

    .line 135
    .line 136
    :try_start_1
    sget-object v6, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 137
    .line 138
    invoke-virtual {v6}, Lcom/v2ray/ang/service/V2RayServiceManager;->getCoreController()Llibv2ray/CoreController;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    sget-object v7, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 143
    .line 144
    invoke-virtual {v7, v4}, Lcom/v2ray/ang/handler/SettingsManager;->getDelayTestUrl(Z)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-virtual {v6, v7}, Llibv2ray/CoreController;->measureDelay(Ljava/lang/String;)J

    .line 149
    .line 150
    .line 151
    move-result-wide v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    goto :goto_3

    .line 153
    :catch_1
    move-exception v5

    .line 154
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    new-array v7, v2, [J

    .line 157
    .line 158
    fill-array-data v7, :array_4

    .line 159
    .line 160
    .line 161
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    new-array v0, v0, [J

    .line 170
    .line 171
    fill-array-data v0, :array_5

    .line 172
    .line 173
    .line 174
    invoke-direct {v6, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    if-eqz v0, :cond_4

    .line 185
    .line 186
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 187
    .line 188
    new-array v6, v1, [J

    .line 189
    .line 190
    fill-array-data v6, :array_6

    .line 191
    .line 192
    .line 193
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    invoke-static {v0, v5, v8, v1, v8}, Lkotlin/text/StringsKt__StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    if-nez v0, :cond_3

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_3
    :goto_1
    move-object v5, v0

    .line 208
    goto :goto_3

    .line 209
    :cond_4
    :goto_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 210
    .line 211
    new-array v1, v2, [J

    .line 212
    .line 213
    fill-array-data v1, :array_7

    .line 214
    .line 215
    .line 216
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    goto :goto_1

    .line 224
    :cond_5
    :goto_3
    const-wide/16 v0, 0x0

    .line 225
    .line 226
    cmp-long v2, v9, v0

    .line 227
    .line 228
    if-ltz v2, :cond_6

    .line 229
    .line 230
    invoke-static {v9, v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    new-array v1, v4, [Ljava/lang/Object;

    .line 235
    .line 236
    aput-object v0, v1, v3

    .line 237
    .line 238
    const v0, 0x7f130082

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    goto :goto_4

    .line 246
    :cond_6
    const v0, 0x7f130083

    .line 247
    .line 248
    .line 249
    new-array v1, v4, [Ljava/lang/Object;

    .line 250
    .line 251
    aput-object v5, v1, v3

    .line 252
    .line 253
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    :goto_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    sget-object v1, Lcom/v2ray/ang/util/MessageUtil;->INSTANCE:Lcom/v2ray/ang/util/MessageUtil;

    .line 261
    .line 262
    const/16 v3, 0x3d

    .line 263
    .line 264
    invoke-virtual {v1, p1, v3, v0}, Lcom/v2ray/ang/util/MessageUtil;->sendMsg2UI(Landroid/content/Context;ILjava/io/Serializable;)V

    .line 265
    .line 266
    .line 267
    new-instance v4, Landroid/content/Intent;

    .line 268
    .line 269
    const-class v5, Lapp/tunnel/vpncommons/auth/AuthService;

    .line 270
    .line 271
    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 275
    .line 276
    .line 277
    if-ltz v2, :cond_7

    .line 278
    .line 279
    sget-object v2, Lcom/v2ray/ang/handler/SpeedtestManager;->INSTANCE:Lcom/v2ray/ang/handler/SpeedtestManager;

    .line 280
    .line 281
    invoke-virtual {v2}, Lcom/v2ray/ang/handler/SpeedtestManager;->getRemoteIPInfo()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    if-eqz v2, :cond_7

    .line 286
    .line 287
    const-string v4, "\n"

    .line 288
    .line 289
    invoke-static {v0, v4, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v1, p1, v3, v0}, Lcom/v2ray/ang/util/MessageUtil;->sendMsg2UI(Landroid/content/Context;ILjava/io/Serializable;)V

    .line 294
    .line 295
    .line 296
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 297
    .line 298
    return-object p1

    .line 299
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 300
    .line 301
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 302
    .line 303
    new-array v0, v0, [J

    .line 304
    .line 305
    fill-array-data v0, :array_8

    .line 306
    .line 307
    .line 308
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw p1

    .line 319
    :array_0
    .array-data 8
        0x31230bfded6b31c6L    # 5.390065658365518E-72
        -0x4a0985a78194b1efL    # -9.6125075378197E-49
        0x7fa81c431a0ba242L    # 8.465448938608594E306
    .end array-data

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
    .line 332
    .line 333
    .line 334
    .line 335
    :array_1
    .array-data 8
        0x2fabb91d3bde8b80L
        0x2cd6a5d245570a4eL    # 1.0857409287682824E-92
        -0x3d1fcdfe27d2ad36L    # -1.424557228304863E14
        -0x53eba73558bd5726L    # -2.381433255763459E-96
        -0x7af93291ea09ae2bL    # -1.916795708226631E-284
        -0x768bb95913227dfL    # -7.86685466901235E272
    .end array-data

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
    :array_2
    .array-data 8
        0x24c6c22306a5d190L
        -0x75261d4a73eacc99L
    .end array-data

    .line 364
    .line 365
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
    :array_3
    .array-data 8
        -0x1bd80c5074fbadbdL    # -2.962016190610778E174
        0x290c8424fa5cbd8cL    # 5.92874944191489E-111
        -0x8b5c4097bfd5072L
    .end array-data

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
    :array_4
    .array-data 8
        -0x6da4f0f42b30b4dcL
        -0x6037f1b24952e069L
        -0x7cfbe9979b0d9e77L    # -3.931522746137582E-294
    .end array-data

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
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    :array_5
    .array-data 8
        0x469dbe0766507adL
        0x3bf524e3a41edecaL    # 7.163899237102096E-20
        -0x49952cbe51740324L    # -1.4683648811550177E-46
        0x9b5d9fab4a1d1edL    # 6.93944394699716E-262
        0xc40f3eade52eb20L
        0x5cebb379288f6712L    # 4.123485910948565E139
        0x761bb15391126093L    # 8.515717999344981E260
    .end array-data

    .line 408
    .line 409
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
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    :array_6
    .array-data 8
        0x6e06d833f6618bfbL    # 1.0322129277418867E222
        -0x1d2a910c491c896bL    # -1.2638885931581333E168
    .end array-data

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
    .line 450
    .line 451
    :array_7
    .array-data 8
        0xd8cbbf362e95caL
        0x44e91ede256e0276L    # 9.490285737228786E23
        -0x31d96a41a6e31fc2L    # -3.044443314005725E68
    .end array-data

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
    .line 466
    .line 467
    :array_8
    .array-data 8
        0x6158a3074174cf16L    # 8.659294681640479E160
        -0x78b61bae46b99bcaL
        0x7a2875064f93a04fL    # 2.774670577507875E280
        0x2a1b57c2edc052aaL    # 7.451175775604863E-106
        -0x4c9c056f1c182a1bL    # -3.885256618409062E-61
        0x2d3c8f3048db4acL
        -0x42ba9e622dc12214L
    .end array-data
.end method
