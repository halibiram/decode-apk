.class final Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/activities/MainBaseActivity;->importBatchConfig(Ljava/lang/String;)V
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
    c = "com.tknetwork.tunnel.activities.MainBaseActivity$importBatchConfig$1"
    f = "MainBaseActivity.kt"
    i = {
        0x0,
        0x0,
        0x2
    }
    l = {
        0x2f3,
        0x2f4,
        0x301
    }
    m = "invokeSuspend"
    n = {
        "count",
        "countSub",
        "e"
    }
    s = {
        "I$0",
        "I$1",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $server:Ljava/lang/String;

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tknetwork/tunnel/activities/MainBaseActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tknetwork/tunnel/activities/MainBaseActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->$server:Ljava/lang/String;

    iput-object p2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;

    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->$server:Ljava/lang/String;

    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;-><init>(Ljava/lang/String;Lcom/tknetwork/tunnel/activities/MainBaseActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->label:I

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v2, :cond_3

    .line 12
    .line 13
    if-eq v2, v5, :cond_2

    .line 14
    .line 15
    if-eq v2, v4, :cond_1

    .line 16
    .line 17
    if-ne v2, v0, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->L$0:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Exception;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v1, 0x7

    .line 33
    new-array v1, v1, [J

    .line 34
    .line 35
    fill-array-data v1, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->I$1:I

    .line 57
    .line 58
    iget v5, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->I$0:I

    .line 59
    .line 60
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :try_start_2
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->$server:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getMainViewModel()Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Lcom/v2ray/ang/viewmodel/MainViewModel;->getSubscriptionId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {p1, v2, v5}, Lcom/v2ray/ang/handler/AngConfigManager;->importBatchConfig1(Ljava/lang/String;Ljava/lang/String;Z)Lkotlin/Pair;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Ljava/lang/Number;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Ljava/lang/Number;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iput v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->I$0:I

    .line 104
    .line 105
    iput p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->I$1:I

    .line 106
    .line 107
    iput v5, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->label:I

    .line 108
    .line 109
    const-wide/16 v5, 0x1f4

    .line 110
    .line 111
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    if-ne v5, v1, :cond_4

    .line 116
    .line 117
    return-object v1

    .line 118
    :cond_4
    move v5, v2

    .line 119
    move v2, p1

    .line 120
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-instance v6, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;

    .line 125
    .line 126
    iget-object v7, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 127
    .line 128
    invoke-direct {v6, v5, v7, v2, v3}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;-><init>(ILcom/tknetwork/tunnel/activities/MainBaseActivity;ILkotlin/coroutines/Continuation;)V

    .line 129
    .line 130
    .line 131
    iput v4, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->label:I

    .line 132
    .line 133
    invoke-static {p1, v6, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    if-ne p1, v1, :cond_6

    .line 138
    .line 139
    return-object v1

    .line 140
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    new-instance v4, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$2;

    .line 145
    .line 146
    iget-object v5, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 147
    .line 148
    invoke-direct {v4, v5, v3}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$2;-><init>(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Lkotlin/coroutines/Continuation;)V

    .line 149
    .line 150
    .line 151
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->L$0:Ljava/lang/Object;

    .line 152
    .line 153
    iput v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->label:I

    .line 154
    .line 155
    invoke-static {v2, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-ne p1, v1, :cond_5

    .line 160
    .line 161
    return-object v1

    .line 162
    :cond_5
    :goto_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    new-array v0, v0, [J

    .line 165
    .line 166
    fill-array-data v0, :array_1

    .line 167
    .line 168
    .line 169
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 176
    .line 177
    const/4 v0, 0x5

    .line 178
    new-array v0, v0, [J

    .line 179
    .line 180
    fill-array-data v0, :array_2

    .line 181
    .line 182
    .line 183
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 190
    .line 191
    return-object p1

    .line 192
    nop

    .line 193
    :array_0
    .array-data 8
        0x18cba73a04b36fe6L
        0x4d1d52438e8e51bfL    # 3.015525255371401E63
        0x23a8b0e22716db2cL    # 6.634829942458862E-137
        0x67c3aca4541c2291L    # 7.012750127982162E191
        0x3d3c3347a6849e48L    # 1.0018763436389147E-13
        0x7f7302891cabe8f7L    # 8.343255641397866E305
        0x63c32d9abc531b27L    # 3.705732532520127E172
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_1
    .array-data 8
        0x5728b2b74f344b07L    # 7.424583943820314E111
        0x6c20eca145cd03f0L    # 7.12194451884314E212
        -0x7bfeccf36cca1532L
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
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
    :array_2
    .array-data 8
        0x25a05edfc9ae0dcfL    # 1.889367754490996E-127
        0x13d3d8ed91ca61d2L    # 3.684734108295528E-213
        0x11fbe2a187d8210L
        -0x38156176bbef25b8L    # -2.830647590152217E38
        0x1316b9740eb9ee91L    # 1.0299972724579797E-216
    .end array-data
.end method
