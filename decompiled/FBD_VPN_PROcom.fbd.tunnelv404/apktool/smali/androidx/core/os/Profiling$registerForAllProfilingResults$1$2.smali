.class final Landroidx/core/os/Profiling$registerForAllProfilingResults$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/os/Profiling$registerForAllProfilingResults$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $listener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/os/ProfilingResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $service:Landroid/os/ProfilingManager;


# direct methods
.method public constructor <init>(Landroid/os/ProfilingManager;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ProfilingManager;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/ProfilingResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/os/Profiling$registerForAllProfilingResults$1$2;->$service:Landroid/os/ProfilingManager;

    iput-object p2, p0, Landroidx/core/os/Profiling$registerForAllProfilingResults$1$2;->$listener:Ljava/util/function/Consumer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/core/os/Profiling$registerForAllProfilingResults$1$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Landroidx/core/os/Profiling$registerForAllProfilingResults$1$2;->$service:Landroid/os/ProfilingManager;

    iget-object v1, p0, Landroidx/core/os/Profiling$registerForAllProfilingResults$1$2;->$listener:Ljava/util/function/Consumer;

    invoke-static {v0, v1}, L딻듌딎땧듼돼딟뒻딞딐듔딅땣돨듼땁땪딠뒈돤딟듟땧땡돛딠돶딌땠땋땄땳딨딜땣땣됩드딀둠뎬둔땻딅따듨뒐땰땯돝디뎡듰뒵뎬돷땡땥디따땅땟따뎻땣뒋딽됨뒘됐땅딁딟땤땁뒹뎡딞땧뒝딁되땝뎹딀땣딻돤뎨뎨둑돝뒐땥딅돼뒵뒋딎돤돠땟돵땨땧뒈뒝뒷뎹딐뒐딁듨듼땨돰듼뎹뒘딟도딟듸땰둔딅뒈돛딀돸;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroid/os/ProfilingManager;Ljava/util/function/Consumer;)V

    return-void
.end method
