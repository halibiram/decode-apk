.class final Lcom/v2ray/ang/viewmodel/MainViewModel$initAssets$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v2ray/ang/viewmodel/MainViewModel;->initAssets(Landroid/content/res/AssetManager;)V
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
    c = "com.v2ray.ang.viewmodel.MainViewModel$initAssets$1"
    f = "MainViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $assets:Landroid/content/res/AssetManager;

.field label:I

.field final synthetic this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;


# direct methods
.method public constructor <init>(Lcom/v2ray/ang/viewmodel/MainViewModel;Landroid/content/res/AssetManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/v2ray/ang/viewmodel/MainViewModel;",
            "Landroid/content/res/AssetManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/v2ray/ang/viewmodel/MainViewModel$initAssets$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$initAssets$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    iput-object p2, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$initAssets$1;->$assets:Landroid/content/res/AssetManager;

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

    new-instance p1, Lcom/v2ray/ang/viewmodel/MainViewModel$initAssets$1;

    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$initAssets$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$initAssets$1;->$assets:Landroid/content/res/AssetManager;

    invoke-direct {p1, v0, v1, p2}, Lcom/v2ray/ang/viewmodel/MainViewModel$initAssets$1;-><init>(Lcom/v2ray/ang/viewmodel/MainViewModel;Landroid/content/res/AssetManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/viewmodel/MainViewModel$initAssets$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/viewmodel/MainViewModel$initAssets$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/v2ray/ang/viewmodel/MainViewModel$initAssets$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/v2ray/ang/viewmodel/MainViewModel$initAssets$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$initAssets$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$initAssets$1;->this$0:Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel$initAssets$1;->$assets:Landroid/content/res/AssetManager;

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/v2ray/ang/handler/SettingsManager;->initAssets(Landroid/content/Context;Landroid/content/res/AssetManager;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v1, 0x7

    .line 32
    new-array v1, v1, [J

    .line 33
    .line 34
    fill-array-data v1, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        -0x65e6893dd2162c15L    # -5.992769484133382E-183
        -0xfde390a75842135L    # -1.379970001741939E232
        0x153a4447b1127125L
        -0x699ad7f41271d947L    # -8.6372467619519E-201
        -0x590a0b7d2d8e5c3cL    # -5.313951549655521E-121
        0x14f3a91ca4dc81edL    # 9.56840656741042E-208
        0x7118c10b737f21dcL    # 6.296561021909533E236
    .end array-data
.end method
