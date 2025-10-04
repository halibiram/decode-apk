.class final Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/workers/ConstraintTrackingWorker;->runWorker(Landroidx/work/ListenableWorker;Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Landroidx/work/ListenableWorker$Result;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/work/ListenableWorker$Result;",
        "kotlin.jvm.PlatformType",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$2"
    f = "ConstraintTrackingWorker.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x86
    }
    m = "invokeSuspend"
    n = {
        "atomicReason",
        "future",
        "constraintTrackingJob"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nConstraintTrackingWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConstraintTrackingWorker.kt\nandroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2\n+ 2 LoggerExt.kt\nandroidx/work/LoggerExtKt\n*L\n1#1,168:1\n22#2:169\n22#2:170\n*S KotlinDebug\n*F\n+ 1 ConstraintTrackingWorker.kt\nandroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2\n*L\n137#1:169\n144#1:170\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $delegate:Landroidx/work/ListenableWorker;

.field final synthetic $workConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

.field final synthetic $workSpec:Landroidx/work/impl/model/WorkSpec;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/work/ListenableWorker;Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/ListenableWorker;",
            "Landroidx/work/impl/constraints/WorkConstraintsTracker;",
            "Landroidx/work/impl/model/WorkSpec;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->$delegate:Landroidx/work/ListenableWorker;

    iput-object p2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->$workConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    iput-object p3, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->$workSpec:Landroidx/work/impl/model/WorkSpec;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;

    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->$delegate:Landroidx/work/ListenableWorker;

    iget-object v2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->$workConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    iget-object v3, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->$workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;-><init>(Landroidx/work/ListenableWorker;Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v2, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->label:I

    .line 8
    .line 9
    const/16 v3, -0x100

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    const-string v6, "Delegated worker "

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    if-ne v2, v5, :cond_0

    .line 18
    .line 19
    iget-object v0, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->L$2:Ljava/lang/Object;

    .line 20
    .line 21
    move-object v2, v0

    .line 22
    check-cast v2, Lkotlinx/coroutines/Job;

    .line 23
    .line 24
    iget-object v0, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->L$1:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v7, v0

    .line 27
    check-cast v7, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 28
    .line 29
    iget-object v0, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->L$0:Ljava/lang/Object;

    .line 30
    .line 31
    move-object v8, v0

    .line 32
    check-cast v8, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    move-object v9, v8

    .line 38
    move-object/from16 v8, p1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object v2, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    move-object v7, v2

    .line 60
    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    .line 61
    .line 62
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    .line 64
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 65
    .line 66
    .line 67
    iget-object v8, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->$delegate:Landroidx/work/ListenableWorker;

    .line 68
    .line 69
    invoke-virtual {v8}, Landroidx/work/ListenableWorker;->startWork()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 70
    .line 71
    .line 72
    move-result-object v14

    .line 73
    const-string v8, "delegate.startWork()"

    .line 74
    .line 75
    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v15, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2$constraintTrackingJob$1;

    .line 79
    .line 80
    iget-object v9, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->$workConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 81
    .line 82
    iget-object v10, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->$workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 83
    .line 84
    const/4 v13, 0x0

    .line 85
    move-object v8, v15

    .line 86
    move-object v11, v2

    .line 87
    move-object v12, v14

    .line 88
    invoke-direct/range {v8 .. v13}, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2$constraintTrackingJob$1;-><init>(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/google/common/util/concurrent/ListenableFuture;Lkotlin/coroutines/Continuation;)V

    .line 89
    .line 90
    .line 91
    const/4 v11, 0x3

    .line 92
    const/4 v12, 0x0

    .line 93
    const/4 v8, 0x0

    .line 94
    const/4 v9, 0x0

    .line 95
    move-object v10, v15

    .line 96
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    :try_start_1
    iput-object v2, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    iput-object v14, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->L$1:Ljava/lang/Object;

    .line 103
    .line 104
    iput-object v7, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->L$2:Ljava/lang/Object;

    .line 105
    .line 106
    iput v5, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->label:I

    .line 107
    .line 108
    invoke-static {v14, v1}, Landroidx/concurrent/futures/ListenableFutureKt;->await(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v8
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    if-ne v8, v0, :cond_2

    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_2
    move-object v9, v2

    .line 116
    move-object v2, v7

    .line 117
    move-object v7, v14

    .line 118
    :goto_0
    :try_start_2
    check-cast v8, Landroidx/work/ListenableWorker$Result;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    .line 120
    invoke-static {v2, v4, v5, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    return-object v8

    .line 124
    :catch_1
    move-exception v0

    .line 125
    move-object v8, v9

    .line 126
    goto :goto_2

    .line 127
    :catchall_1
    move-exception v0

    .line 128
    move-object v2, v7

    .line 129
    goto :goto_1

    .line 130
    :catch_2
    move-exception v0

    .line 131
    move-object v8, v2

    .line 132
    move-object v2, v7

    .line 133
    move-object v7, v14

    .line 134
    goto :goto_2

    .line 135
    :goto_1
    :try_start_3
    invoke-static {}, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->access$getTAG$p()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget-object v7, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->$delegate:Landroidx/work/ListenableWorker;

    .line 140
    .line 141
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    new-instance v9, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v6, " threw exception in startWork."

    .line 158
    .line 159
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {v8, v3, v6, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :catchall_2
    move-exception v0

    .line 171
    goto :goto_4

    .line 172
    :goto_2
    invoke-static {}, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->access$getTAG$p()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    iget-object v10, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;->$delegate:Landroidx/work/ListenableWorker;

    .line 177
    .line 178
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    new-instance v12, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v6, " was cancelled"

    .line 195
    .line 196
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-virtual {v11, v9, v6, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-eq v6, v3, :cond_3

    .line 211
    .line 212
    const/4 v3, 0x1

    .line 213
    goto :goto_3

    .line 214
    :cond_3
    const/4 v3, 0x0

    .line 215
    :goto_3
    invoke-interface {v7}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-eqz v6, :cond_4

    .line 220
    .line 221
    if-eqz v3, :cond_4

    .line 222
    .line 223
    new-instance v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$ConstraintUnsatisfiedException;

    .line 224
    .line 225
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    invoke-direct {v0, v3}, Landroidx/work/impl/workers/ConstraintTrackingWorker$ConstraintUnsatisfiedException;-><init>(I)V

    .line 230
    .line 231
    .line 232
    throw v0

    .line 233
    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 234
    :goto_4
    invoke-static {v2, v4, v5, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    throw v0
.end method
