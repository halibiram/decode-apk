.class final Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
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
    c = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1$1"
    f = "CoroutinesRoom.kt"
    i = {}
    l = {
        0x80,
        0x82
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic $db:Landroidx/room/RoomDatabase;

.field final synthetic $observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

.field final synthetic $observerChannel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $resultChannel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "TR;>;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;Lkotlinx/coroutines/channels/Channel;Ljava/util/concurrent/Callable;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    iput-object p2, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

    iput-object p3, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observerChannel:Lkotlinx/coroutines/channels/Channel;

    iput-object p4, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$callable:Ljava/util/concurrent/Callable;

    iput-object p5, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$resultChannel:Lkotlinx/coroutines/channels/Channel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;

    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    iget-object v2, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

    iget-object v3, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observerChannel:Lkotlinx/coroutines/channels/Channel;

    iget-object v4, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$callable:Ljava/util/concurrent/Callable;

    iget-object v5, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$resultChannel:Lkotlinx/coroutines/channels/Channel;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;Lkotlinx/coroutines/channels/Channel;Ljava/util/concurrent/Callable;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/CoroutineScope;
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
            "Lkotlinx/coroutines/CoroutineScope;",
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
    invoke-virtual {p0, p1, p2}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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
    iget v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->label:I

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
    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    .line 18
    .line 19
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :cond_0
    move-object p1, v1

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_2
    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    .line 37
    .line 38
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroidx/room/InvalidationTracker;->addObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 54
    .line 55
    .line 56
    :try_start_2
    iget-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observerChannel:Lkotlinx/coroutines/channels/Channel;

    .line 57
    .line 58
    invoke-interface {p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_0
    iput-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    iput v3, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->label:I

    .line 65
    .line 66
    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-ne v1, v0, :cond_4

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_4
    move-object v5, v1

    .line 74
    move-object v1, p1

    .line 75
    move-object p1, v5

    .line 76
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    invoke-interface {v1}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$callable:Ljava/util/concurrent/Callable;

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object v4, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$resultChannel:Lkotlinx/coroutines/channels/Channel;

    .line 94
    .line 95
    iput-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    .line 96
    .line 97
    iput v2, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->label:I

    .line 98
    .line 99
    invoke-interface {v4, p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    if-ne p1, v0, :cond_0

    .line 104
    .line 105
    return-object v0

    .line 106
    :cond_5
    iget-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-object v0, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroidx/room/InvalidationTracker;->removeObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 115
    .line 116
    .line 117
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 118
    .line 119
    return-object p1

    .line 120
    :goto_2
    iget-object v0, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroidx/room/InvalidationTracker;->removeObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 129
    .line 130
    .line 131
    throw p1
.end method
