.class final Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/WorkForegroundKt;->workForeground(Landroid/content/Context;Landroidx/work/impl/model/WorkSpec;Landroidx/work/ListenableWorker;Landroidx/work/ForegroundUpdater;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Void;",
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
        "Ljava/lang/Void;",
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
    c = "androidx.work.impl.utils.WorkForegroundKt$workForeground$2"
    f = "WorkForeground.kt"
    i = {}
    l = {
        0x2a,
        0x32
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWorkForeground.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkForeground.kt\nandroidx/work/impl/utils/WorkForegroundKt$workForeground$2\n+ 2 LoggerExt.kt\nandroidx/work/LoggerExtKt\n*L\n1#1,55:1\n19#2:56\n*S KotlinDebug\n*F\n+ 1 WorkForeground.kt\nandroidx/work/impl/utils/WorkForegroundKt$workForeground$2\n*L\n49#1:56\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $foregroundUpdater:Landroidx/work/ForegroundUpdater;

.field final synthetic $spec:Landroidx/work/impl/model/WorkSpec;

.field final synthetic $worker:Landroidx/work/ListenableWorker;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/work/ListenableWorker;Landroidx/work/impl/model/WorkSpec;Landroidx/work/ForegroundUpdater;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/ListenableWorker;",
            "Landroidx/work/impl/model/WorkSpec;",
            "Landroidx/work/ForegroundUpdater;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->$worker:Landroidx/work/ListenableWorker;

    iput-object p2, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->$spec:Landroidx/work/impl/model/WorkSpec;

    iput-object p3, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->$foregroundUpdater:Landroidx/work/ForegroundUpdater;

    iput-object p4, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;

    iget-object v1, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->$worker:Landroidx/work/ListenableWorker;

    iget-object v2, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->$spec:Landroidx/work/impl/model/WorkSpec;

    iget-object v3, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->$foregroundUpdater:Landroidx/work/ForegroundUpdater;

    iget-object v4, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->$context:Landroid/content/Context;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;-><init>(Landroidx/work/ListenableWorker;Landroidx/work/impl/model/WorkSpec;Landroidx/work/ForegroundUpdater;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->$worker:Landroidx/work/ListenableWorker;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/work/ListenableWorker;->getForegroundInfoAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v1, "worker.getForegroundInfoAsync()"

    .line 41
    .line 42
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->$worker:Landroidx/work/ListenableWorker;

    .line 46
    .line 47
    iput v3, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->label:I

    .line 48
    .line 49
    invoke-static {p1, v1, p0}, Landroidx/work/impl/WorkerWrapperKt;->awaitWithin(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/ListenableWorker;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_3
    :goto_0
    check-cast p1, Landroidx/work/ForegroundInfo;

    .line 57
    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    invoke-static {}, Landroidx/work/impl/utils/WorkForegroundKt;->access$getTAG$p()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v3, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->$spec:Landroidx/work/impl/model/WorkSpec;

    .line 65
    .line 66
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v6, "Updating notification for "

    .line 73
    .line 74
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v4, v1, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->$foregroundUpdater:Landroidx/work/ForegroundUpdater;

    .line 90
    .line 91
    iget-object v3, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->$context:Landroid/content/Context;

    .line 92
    .line 93
    iget-object v4, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->$worker:Landroidx/work/ListenableWorker;

    .line 94
    .line 95
    invoke-virtual {v4}, Landroidx/work/ListenableWorker;->getId()Ljava/util/UUID;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-interface {v1, v3, v4, p1}, Landroidx/work/ForegroundUpdater;->setForegroundAsync(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/ForegroundInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v1, "foregroundUpdater.setFor\u2026orker.id, foregroundInfo)"

    .line 104
    .line 105
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iput v2, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->label:I

    .line 109
    .line 110
    invoke-static {p1, p0}, Landroidx/concurrent/futures/ListenableFutureKt;->await(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-ne p1, v0, :cond_4

    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_4
    :goto_1
    return-object p1

    .line 118
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v0, "Worker was marked important ("

    .line 121
    .line 122
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundKt$workForeground$2;->$spec:Landroidx/work/impl/model/WorkSpec;

    .line 126
    .line 127
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 128
    .line 129
    const-string v1, ") but did not provide ForegroundInfo"

    .line 130
    .line 131
    invoke-static {p1, v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 136
    .line 137
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0
.end method
