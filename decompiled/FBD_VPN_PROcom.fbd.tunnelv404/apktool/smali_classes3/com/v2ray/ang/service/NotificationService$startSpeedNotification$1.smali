.class final Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v2ray/ang/service/NotificationService;->startSpeedNotification(Lcom/v2ray/ang/dto/ProfileItem;)V
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
    c = "com.v2ray.ang.service.NotificationService$startSpeedNotification$1"
    f = "NotificationService.kt"
    i = {
        0x0
    }
    l = {
        0x54
    }
    m = "invokeSuspend"
    n = {
        "$this$launch"
    }
    s = {
        "L$0"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNotificationService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationService.kt\ncom/v2ray/ang/service/NotificationService$startSpeedNotification$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,252:1\n1869#2,2:253\n*S KotlinDebug\n*F\n+ 1 NotificationService.kt\ncom/v2ray/ang/service/NotificationService$startSpeedNotification$1\n*L\n61#1:253,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $lastZeroSpeed:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $outboundTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;->$outboundTags:Ljava/util/List;

    iput-object p2, p0, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;->$lastZeroSpeed:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;

    iget-object v1, p0, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;->$outboundTags:Ljava/util/List;

    iget-object v2, p0, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;->$lastZeroSpeed:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0, v1, v2, p2}, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;-><init>(Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget v3, v0, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;->label:I

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    if-ne v3, v4, :cond_0

    .line 14
    .line 15
    iget-object v3, v0, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 18
    .line 19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    move-object v4, v2

    .line 23
    const/4 v1, 0x1

    .line 24
    goto/16 :goto_7

    .line 25
    .line 26
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v3, 0x7

    .line 31
    new-array v3, v3, [J

    .line 32
    .line 33
    fill-array-data v3, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v1

    .line 47
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, v0, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 53
    .line 54
    :goto_0
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_a

    .line 59
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    invoke-static {}, Lcom/v2ray/ang/service/NotificationService;->access$getLastQueryTime$p()J

    .line 65
    .line 66
    .line 67
    move-result-wide v7

    .line 68
    sub-long v7, v5, v7

    .line 69
    .line 70
    long-to-double v7, v7

    .line 71
    const-wide v9, 0x408f400000000000L    # 1000.0

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    div-double/2addr v7, v9

    .line 77
    new-instance v9, Lkotlin/jvm/internal/Ref$LongRef;

    .line 78
    .line 79
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v17, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v10, v0, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;->$outboundTags:Ljava/util/List;

    .line 88
    .line 89
    const-wide/16 v18, 0x0

    .line 90
    .line 91
    if-eqz v10, :cond_3

    .line 92
    .line 93
    check-cast v10, Ljava/lang/Iterable;

    .line 94
    .line 95
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v20

    .line 99
    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-eqz v10, :cond_3

    .line 104
    .line 105
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    move-object v12, v10

    .line 110
    check-cast v12, Ljava/lang/String;

    .line 111
    .line 112
    sget-object v10, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 113
    .line 114
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v13, v1, [J

    .line 117
    .line 118
    fill-array-data v13, :array_1

    .line 119
    .line 120
    .line 121
    invoke-direct {v11, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    invoke-virtual {v10, v12, v11}, Lcom/v2ray/ang/service/V2RayServiceManager;->queryStats(Ljava/lang/String;Ljava/lang/String;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v13

    .line 132
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array v15, v1, [J

    .line 135
    .line 136
    fill-array-data v15, :array_2

    .line 137
    .line 138
    .line 139
    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    invoke-virtual {v10, v12, v11}, Lcom/v2ray/ang/service/V2RayServiceManager;->queryStats(Ljava/lang/String;Ljava/lang/String;)J

    .line 147
    .line 148
    .line 149
    move-result-wide v10

    .line 150
    add-long v21, v13, v10

    .line 151
    .line 152
    cmp-long v15, v21, v18

    .line 153
    .line 154
    if-lez v15, :cond_2

    .line 155
    .line 156
    sget-object v15, Lcom/v2ray/ang/service/NotificationService;->INSTANCE:Lcom/v2ray/ang/service/NotificationService;

    .line 157
    .line 158
    long-to-double v13, v13

    .line 159
    div-double/2addr v13, v7

    .line 160
    long-to-double v10, v10

    .line 161
    div-double v23, v10, v7

    .line 162
    .line 163
    move-object v10, v15

    .line 164
    move-object/from16 v11, v17

    .line 165
    .line 166
    move-wide/from16 v15, v23

    .line 167
    .line 168
    invoke-static/range {v10 .. v16}, Lcom/v2ray/ang/service/NotificationService;->access$appendSpeedString(Lcom/v2ray/ang/service/NotificationService;Ljava/lang/StringBuilder;Ljava/lang/String;DD)V

    .line 169
    .line 170
    .line 171
    iget-wide v10, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 172
    .line 173
    add-long v10, v10, v21

    .line 174
    .line 175
    iput-wide v10, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_3
    sget-object v10, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 179
    .line 180
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 181
    .line 182
    new-array v12, v1, [J

    .line 183
    .line 184
    fill-array-data v12, :array_3

    .line 185
    .line 186
    .line 187
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 195
    .line 196
    new-array v13, v1, [J

    .line 197
    .line 198
    fill-array-data v13, :array_4

    .line 199
    .line 200
    .line 201
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    invoke-virtual {v10, v11, v12}, Lcom/v2ray/ang/service/V2RayServiceManager;->queryStats(Ljava/lang/String;Ljava/lang/String;)J

    .line 209
    .line 210
    .line 211
    move-result-wide v13

    .line 212
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 213
    .line 214
    new-array v12, v1, [J

    .line 215
    .line 216
    fill-array-data v12, :array_5

    .line 217
    .line 218
    .line 219
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 227
    .line 228
    new-array v15, v1, [J

    .line 229
    .line 230
    fill-array-data v15, :array_6

    .line 231
    .line 232
    .line 233
    invoke-direct {v12, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    invoke-virtual {v10, v11, v12}, Lcom/v2ray/ang/service/V2RayServiceManager;->queryStats(Ljava/lang/String;Ljava/lang/String;)J

    .line 241
    .line 242
    .line 243
    move-result-wide v11

    .line 244
    move-wide/from16 v21, v5

    .line 245
    .line 246
    iget-wide v4, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 247
    .line 248
    cmp-long v6, v4, v18

    .line 249
    .line 250
    if-nez v6, :cond_4

    .line 251
    .line 252
    cmp-long v6, v13, v18

    .line 253
    .line 254
    if-nez v6, :cond_4

    .line 255
    .line 256
    cmp-long v6, v11, v18

    .line 257
    .line 258
    if-nez v6, :cond_4

    .line 259
    .line 260
    const/4 v6, 0x1

    .line 261
    goto :goto_2

    .line 262
    :cond_4
    const/4 v6, 0x0

    .line 263
    :goto_2
    if-eqz v6, :cond_6

    .line 264
    .line 265
    iget-object v10, v0, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;->$lastZeroSpeed:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 266
    .line 267
    iget-boolean v10, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 268
    .line 269
    if-nez v10, :cond_5

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_5
    move-object/from16 v19, v2

    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_6
    :goto_3
    cmp-long v10, v4, v18

    .line 276
    .line 277
    if-nez v10, :cond_8

    .line 278
    .line 279
    sget-object v10, Lcom/v2ray/ang/service/NotificationService;->INSTANCE:Lcom/v2ray/ang/service/NotificationService;

    .line 280
    .line 281
    iget-object v4, v0, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;->$outboundTags:Ljava/util/List;

    .line 282
    .line 283
    if-eqz v4, :cond_7

    .line 284
    .line 285
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    check-cast v4, Ljava/lang/String;

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_7
    const/4 v4, 0x0

    .line 293
    :goto_4
    const-wide/16 v15, 0x0

    .line 294
    .line 295
    const-wide/16 v18, 0x0

    .line 296
    .line 297
    move-wide/from16 v25, v11

    .line 298
    .line 299
    move-object/from16 v11, v17

    .line 300
    .line 301
    move-object v12, v4

    .line 302
    move-wide v4, v13

    .line 303
    move-wide v13, v15

    .line 304
    move-wide/from16 v15, v18

    .line 305
    .line 306
    invoke-static/range {v10 .. v16}, Lcom/v2ray/ang/service/NotificationService;->access$appendSpeedString(Lcom/v2ray/ang/service/NotificationService;Ljava/lang/StringBuilder;Ljava/lang/String;DD)V

    .line 307
    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_8
    move-wide/from16 v25, v11

    .line 311
    .line 312
    move-wide v4, v13

    .line 313
    :goto_5
    sget-object v27, Lcom/v2ray/ang/service/NotificationService;->INSTANCE:Lcom/v2ray/ang/service/NotificationService;

    .line 314
    .line 315
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 316
    .line 317
    new-array v11, v1, [J

    .line 318
    .line 319
    fill-array-data v11, :array_7

    .line 320
    .line 321
    .line 322
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v12

    .line 329
    long-to-double v10, v4

    .line 330
    div-double v13, v10, v7

    .line 331
    .line 332
    move-object/from16 v19, v2

    .line 333
    .line 334
    move-wide/from16 v10, v25

    .line 335
    .line 336
    long-to-double v1, v10

    .line 337
    div-double v15, v1, v7

    .line 338
    .line 339
    move-wide v1, v10

    .line 340
    move-object/from16 v10, v27

    .line 341
    .line 342
    move-object/from16 v11, v17

    .line 343
    .line 344
    invoke-static/range {v10 .. v16}, Lcom/v2ray/ang/service/NotificationService;->access$appendSpeedString(Lcom/v2ray/ang/service/NotificationService;Ljava/lang/StringBuilder;Ljava/lang/String;DD)V

    .line 345
    .line 346
    .line 347
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v28

    .line 351
    iget-wide v7, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 352
    .line 353
    add-long v31, v1, v4

    .line 354
    .line 355
    move-wide/from16 v29, v7

    .line 356
    .line 357
    invoke-static/range {v27 .. v32}, Lcom/v2ray/ang/service/NotificationService;->access$updateNotification(Lcom/v2ray/ang/service/NotificationService;Ljava/lang/String;JJ)V

    .line 358
    .line 359
    .line 360
    :goto_6
    iget-object v1, v0, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;->$lastZeroSpeed:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 361
    .line 362
    iput-boolean v6, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 363
    .line 364
    invoke-static/range {v21 .. v22}, Lcom/v2ray/ang/service/NotificationService;->access$setLastQueryTime$p(J)V

    .line 365
    .line 366
    .line 367
    iput-object v3, v0, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;->L$0:Ljava/lang/Object;

    .line 368
    .line 369
    const/4 v1, 0x1

    .line 370
    iput v1, v0, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;->label:I

    .line 371
    .line 372
    const-wide/16 v4, 0xbb8

    .line 373
    .line 374
    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    move-object/from16 v4, v19

    .line 379
    .line 380
    if-ne v2, v4, :cond_9

    .line 381
    .line 382
    return-object v4

    .line 383
    :cond_9
    :goto_7
    move-object v2, v4

    .line 384
    const/4 v1, 0x2

    .line 385
    const/4 v4, 0x1

    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :cond_a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 389
    .line 390
    return-object v1

    .line 391
    :array_0
    .array-data 8
        0x3a14543308c7d27bL    # 6.414670956790154E-29
        0x2b5e6d5798c37d4cL    # 8.694453019637507E-100
        -0x2101891d93b16f68L    # -3.895385003697261E149
        -0x5c9defd54f01972L    # -5.021075180327167E280
        0x6a2fe81992f68f93L    # 3.1261381463802547E203
        0x74b0e626bb3f7506L    # 1.2389623126500899E254
        -0x175bf4f43a1b47c5L    # -1.1705046314100121E196
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
    :array_1
    .array-data 8
        0x15db4856e37e2e93L
        -0x70a932ab767907f7L    # -8.964326950746043E-235
    .end array-data

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
    :array_2
    .array-data 8
        -0x5c34ff943c5a98ddL    # -2.902299223300671E-136
        0xaf3330c26bda4c4L
    .end array-data

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
    :array_3
    .array-data 8
        -0x4c8c82aa6861c86fL    # -7.580249964302729E-61
        -0x20f50147b9cc8863L    # -6.903529466693688E149
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
    :array_4
    .array-data 8
        0x41ba10866d0a98ceL    # 4.372906050413941E8
        -0x70ce53bfceb5f841L    # -1.73696113617385E-235
    .end array-data

    .line 460
    .line 461
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
    :array_5
    .array-data 8
        0x327131b075b467d4L    # 1.0204233131408999E-65
        -0x5f01f65bc8719f78L
    .end array-data

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
    :array_6
    .array-data 8
        0x6e4ec17c26e8bd87L    # 2.2234831455306178E223
        0x4660454af20d162aL    # 1.0312765355765178E31
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
    :array_7
    .array-data 8
        -0x288f72491c2cfd09L    # -1.592392440719413E113
        -0x4b814e128f96a28cL    # -7.824000458101703E-56
    .end array-data
.end method
