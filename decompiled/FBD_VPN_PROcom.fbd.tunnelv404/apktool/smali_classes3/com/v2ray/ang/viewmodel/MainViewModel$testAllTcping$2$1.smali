.class final Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v2ray/ang/viewmodel/MainViewModel;->testAllTcping()V
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
    c = "com.v2ray.ang.viewmodel.MainViewModel$testAllTcping$2$1"
    f = "MainViewModel.kt"
    i = {
        0x0
    }
    l = {
        0xe4
    }
    m = "invokeSuspend"
    n = {
        "$this$launch"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/v2ray/ang/dto/ServersCache;

.field final synthetic $serverAddress:Ljava/lang/String;

.field final synthetic $serverPort:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/ServersCache;Lcom/v2ray/ang/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/v2ray/ang/dto/ServersCache;",
            "Lcom/v2ray/ang/viewmodel/MainViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->$serverAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->$serverPort:Ljava/lang/String;

    iput-object p3, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->$item:Lcom/v2ray/ang/dto/ServersCache;

    iput-object p4, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;

    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->$serverAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->$serverPort:Ljava/lang/String;

    iget-object v3, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->$item:Lcom/v2ray/ang/dto/ServersCache;

    iget-object v4, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/ServersCache;Lcom/v2ray/ang/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v1, 0x7

    .line 25
    new-array v1, v1, [J

    .line 26
    .line 27
    fill-array-data v1, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 47
    .line 48
    sget-object v1, Lcom/v2ray/ang/handler/SpeedtestManager;->INSTANCE:Lcom/v2ray/ang/handler/SpeedtestManager;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->$serverAddress:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->$serverPort:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    iput v2, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->label:I

    .line 61
    .line 62
    invoke-virtual {v1, v3, v4, p0}, Lcom/v2ray/ang/handler/SpeedtestManager;->tcping(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-ne v1, v0, :cond_2

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_2
    move-object v0, p1

    .line 70
    move-object p1, v1

    .line 71
    :goto_0
    check-cast p1, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance v7, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;

    .line 82
    .line 83
    iget-object v2, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->$item:Lcom/v2ray/ang/dto/ServersCache;

    .line 84
    .line 85
    iget-object v5, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    move-object v1, v7

    .line 89
    invoke-direct/range {v1 .. v6}, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;-><init>(Lcom/v2ray/ang/dto/ServersCache;JLcom/v2ray/ang/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 90
    .line 91
    .line 92
    const/4 v4, 0x2

    .line 93
    const/4 v5, 0x0

    .line 94
    const/4 v2, 0x0

    .line 95
    move-object v1, p1

    .line 96
    move-object v3, v7

    .line 97
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 98
    .line 99
    .line 100
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 101
    .line 102
    return-object p1

    .line 103
    :array_0
    .array-data 8
        -0x5ba37527e2e08081L    # -1.5707671691249992E-133
        0x1f4d76f5c67be4b1L
        0x6ad5c81bd050fbf0L
        -0x3a581c97ebfaeb8cL    # -3.696536441179301E27
        -0xc1ba2cf8ccdb676L    # -1.822510086203124E250
        -0x6547dfeb3f206f8cL    # -5.814007989957145E-180
        -0x3dd5c1b143bff35dL    # -5.635724854402468E10
    .end array-data
.end method
