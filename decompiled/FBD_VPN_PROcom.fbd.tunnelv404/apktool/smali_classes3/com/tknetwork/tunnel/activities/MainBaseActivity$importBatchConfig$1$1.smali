.class final Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.tknetwork.tunnel.activities.MainBaseActivity$importBatchConfig$1$1"
    f = "MainBaseActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $count:I

.field final synthetic $countSub:I

.field label:I

.field final synthetic this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;


# direct methods
.method public constructor <init>(ILcom/tknetwork/tunnel/activities/MainBaseActivity;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tknetwork/tunnel/activities/MainBaseActivity;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;->$count:I

    iput-object p2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    iput p3, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;->$countSub:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;

    iget v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;->$count:I

    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    iget v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;->$countSub:I

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;-><init>(ILcom/tknetwork/tunnel/activities/MainBaseActivity;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;->$count:I

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getMainViewModel()Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/v2ray/ang/viewmodel/MainViewModel;->reloadServerList()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;->$countSub:I

    .line 26
    .line 27
    if-lez p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->access$initGroupTab(Lcom/tknetwork/tunnel/activities/MainBaseActivity;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v1, 0x7

    .line 42
    new-array v1, v1, [J

    .line 43
    .line 44
    fill-array-data v1, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        -0x3f086425de6b0a18L    # -96701.6331987005
        -0x7c8d779b12e87d8eL    # -4.642853920262103E-292
        0x3cd4ba2236d655ffL    # 1.1505843260030631E-15
        0x76371b26d16f07fbL    # 2.8421184275979073E261
        0x72cd9feb0d465d49L    # 1.011393516481271E245
        0x718925c13147944L
        -0x56a5c016395ccc60L
    .end array-data
.end method
