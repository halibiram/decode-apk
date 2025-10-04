.class final Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.v2ray.ang.viewmodel.MainViewModel$testAllTcping$2$1$1"
    f = "MainViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $item:Lcom/v2ray/ang/dto/ServersCache;

.field final synthetic $testResult:J

.field label:I

.field final synthetic this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;


# direct methods
.method public constructor <init>(Lcom/v2ray/ang/dto/ServersCache;JLcom/v2ray/ang/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/v2ray/ang/dto/ServersCache;",
            "J",
            "Lcom/v2ray/ang/viewmodel/MainViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;->$item:Lcom/v2ray/ang/dto/ServersCache;

    iput-wide p2, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;->$testResult:J

    iput-object p4, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

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

    new-instance p1, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;

    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;->$item:Lcom/v2ray/ang/dto/ServersCache;

    iget-wide v2, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;->$testResult:J

    iget-object v4, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;-><init>(Lcom/v2ray/ang/dto/ServersCache;JLcom/v2ray/ang/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;->$item:Lcom/v2ray/ang/dto/ServersCache;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/ServersCache;->getGuid()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-wide v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;->$testResult:J

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1, v2}, Lcom/v2ray/ang/handler/MmkvManager;->encodeServerTestDelayMillis(Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/v2ray/ang/viewmodel/MainViewModel;->getUpdateListAction()Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1$1;->$item:Lcom/v2ray/ang/dto/ServersCache;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/ServersCache;->getGuid()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/viewmodel/MainViewModel;->getPosition(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    const/4 v1, 0x7

    .line 57
    new-array v1, v1, [J

    .line 58
    .line 59
    fill-array-data v1, :array_0

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :array_0
    .array-data 8
        -0x7151b75aec0b3025L    # -5.813308379726035E-238
        0x1bd424ab4d37219bL    # 1.272541124098958E-174
        -0xfb647e4710442fbL    # -7.985895507079019E232
        -0x6093c72dfddd2ddcL
        0x576e449b3e02aec9L    # 1.455834569814072E113
        0x703d504314f8b474L    # 4.550977572079839E232
        -0x6dc5029f3201cdbcL    # -7.466587997207291E-221
    .end array-data
.end method
