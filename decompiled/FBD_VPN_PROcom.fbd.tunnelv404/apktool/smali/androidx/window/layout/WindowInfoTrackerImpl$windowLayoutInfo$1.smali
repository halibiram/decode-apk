.class final Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/layout/WindowInfoTrackerImpl;->windowLayoutInfo(Landroid/app/Activity;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Landroidx/window/layout/WindowLayoutInfo;",
        ">;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Landroidx/window/layout/WindowLayoutInfo;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1"
    f = "WindowInfoTrackerImpl.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x36,
        0x37
    }
    m = "invokeSuspend"
    n = {
        "$this$flow",
        "listener",
        "$this$flow",
        "listener"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/window/layout/WindowInfoTrackerImpl;


# direct methods
.method public constructor <init>(Landroidx/window/layout/WindowInfoTrackerImpl;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/layout/WindowInfoTrackerImpl;",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    iput-object p2, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->$activity:Landroid/app/Activity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lkotlinx/coroutines/channels/Channel;Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 1

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lkotlinx/coroutines/channels/Channel;Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->invokeSuspend$lambda-0(Lkotlinx/coroutines/channels/Channel;Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;

    iget-object v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    iget-object v2, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->$activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;-><init>(Landroidx/window/layout/WindowInfoTrackerImpl;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/FlowCollector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    if-eq v1, v3, :cond_2

    .line 12
    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$2:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    .line 18
    .line 19
    iget-object v4, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$1:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v4, Landroidx/core/util/Consumer;

    .line 22
    .line 23
    iget-object v5, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    .line 26
    .line 27
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :cond_0
    move-object p1, v5

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_2
    iget-object v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$2:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    .line 46
    .line 47
    iget-object v4, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$1:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v4, Landroidx/core/util/Consumer;

    .line 50
    .line 51
    iget-object v5, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    .line 54
    .line 55
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 65
    .line 66
    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 67
    .line 68
    const/16 v4, 0xa

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x4

    .line 72
    invoke-static {v4, v1, v5, v6, v5}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    new-instance v4, Landroidx/window/layout/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    .line 77
    .line 78
    invoke-direct {v4, v1}, Landroidx/window/layout/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Lkotlinx/coroutines/channels/Channel;)V

    .line 79
    .line 80
    .line 81
    iget-object v5, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    .line 82
    .line 83
    invoke-static {v5}, Landroidx/window/layout/WindowInfoTrackerImpl;->access$getWindowBackend$p(Landroidx/window/layout/WindowInfoTrackerImpl;)Landroidx/window/layout/WindowBackend;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    iget-object v6, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->$activity:Landroid/app/Activity;

    .line 88
    .line 89
    new-instance v7, L뎻듟땨뒝땄딃됩따땣땮돷뒛둬든뒨뎻땯딄돰뒉땡돠딤딨땠돸땋돳땋뎨땠딎됨둔땸딻딄땡돠듐둑딨뒼드딅된둬뒋딄듨뒀됩돳뎠듌뒬땝뎠딽땦돸돸땵땜땋땧둬돷돼돛딻돤뒙뒷돰딤듻뒷돳땬뒀땸땠둡돵돛듟땰듻뒾땮딄땦뒼뒼땲딟듨돷돛땅딤뒛땄돝뒋됴뒉땋드뒐돨뒋딎땧드듨둔땀땁땟됴돛둡땁딀뒐돳땧땅;

    .line 90
    .line 91
    const/4 v8, 0x0

    .line 92
    invoke-direct {v7, v8}, L뎻듟땨뒝땄딃됩따땣땮돷뒛둬든뒨뎻땯딄돰뒉땡돠딤딨땠돸땋돳땋뎨땠딎됨둔땸딻딄땡돠듐둑딨뒼드딅된둬뒋딄듨뒀됩돳뎠듌뒬땝뎠딽땦돸돸땵땜땋땧둬돷돼돛딻돤뒙뒷돰딤듻뒷돳땬뒀땸땠둡돵돛듟땰듻뒾땮딄땦뒼뒼땲딟듨돷돛땅딤뒛땄돝뒋됴뒉땋드뒐돨뒋딎땧드듨둔땀땁땟됴돛둡땁딀뒐돳땧땅;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v5, v6, v7, v4}, Landroidx/window/layout/WindowBackend;->registerLayoutChangeCallback(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 96
    .line 97
    .line 98
    :try_start_2
    invoke-interface {v1}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :goto_0
    iput-object p1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    .line 103
    .line 104
    iput-object v4, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$1:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$2:Ljava/lang/Object;

    .line 107
    .line 108
    iput v3, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->label:I

    .line 109
    .line 110
    invoke-interface {v1, p0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    if-ne v5, v0, :cond_4

    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_4
    move-object v9, v5

    .line 118
    move-object v5, p1

    .line 119
    move-object p1, v9

    .line 120
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    invoke-interface {v1}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    .line 133
    .line 134
    iput-object v5, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    .line 135
    .line 136
    iput-object v4, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$1:Ljava/lang/Object;

    .line 137
    .line 138
    iput-object v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$2:Ljava/lang/Object;

    .line 139
    .line 140
    iput v2, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->label:I

    .line 141
    .line 142
    invoke-interface {v5, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    if-ne p1, v0, :cond_0

    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_5
    iget-object p1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    .line 150
    .line 151
    invoke-static {p1}, Landroidx/window/layout/WindowInfoTrackerImpl;->access$getWindowBackend$p(Landroidx/window/layout/WindowInfoTrackerImpl;)Landroidx/window/layout/WindowBackend;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-interface {p1, v4}, Landroidx/window/layout/WindowBackend;->unregisterLayoutChangeCallback(Landroidx/core/util/Consumer;)V

    .line 156
    .line 157
    .line 158
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 159
    .line 160
    return-object p1

    .line 161
    :goto_2
    iget-object v0, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    .line 162
    .line 163
    invoke-static {v0}, Landroidx/window/layout/WindowInfoTrackerImpl;->access$getWindowBackend$p(Landroidx/window/layout/WindowInfoTrackerImpl;)Landroidx/window/layout/WindowBackend;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-interface {v0, v4}, Landroidx/window/layout/WindowBackend;->unregisterLayoutChangeCallback(Landroidx/core/util/Consumer;)V

    .line 168
    .line 169
    .line 170
    throw p1
.end method
