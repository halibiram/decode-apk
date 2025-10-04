.class final Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.v2ray.ang.viewmodel.MainViewModel$createIntelligentSelectionAll$1$1"
    f = "MainViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/v2ray/ang/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/v2ray/ang/viewmodel/MainViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;->$key:Ljava/lang/String;

    iput-object p2, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

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

    new-instance p1, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;

    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;->$key:Ljava/lang/String;

    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;-><init>(Ljava/lang/String;Lcom/v2ray/ang/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;->$key:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const v0, 0x7f13030b

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/v2ray/ang/extension/_ExtKt;->toastSuccess(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;->$key:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/v2ray/ang/handler/MmkvManager;->setSelectServer(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/v2ray/ang/viewmodel/MainViewModel;->reloadServerList()V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const v0, 0x7f1302fc

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v0}, Lcom/v2ray/ang/extension/_ExtKt;->toastError(Landroid/content/Context;I)V

    .line 57
    .line 58
    .line 59
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    const/4 v1, 0x7

    .line 67
    new-array v1, v1, [J

    .line 68
    .line 69
    fill-array-data v1, :array_0

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :array_0
    .array-data 8
        0x7845ed7561acd530L    # 2.316843310739685E271
        0x410f68176da44f07L    # 257282.92853605023
        -0x47e8cc2c436c84ccL    # -1.7046467764736133E-38
        -0x713f416386da6540L
        -0x3ebcd5621ff06de2L    # -2512187.750475182
        -0x2edc3c7ae5baf181L    # -7.498910508481014E82
        -0x764c0343ae3173ceL    # -6.34741353627063E-262
    .end array-data
.end method
