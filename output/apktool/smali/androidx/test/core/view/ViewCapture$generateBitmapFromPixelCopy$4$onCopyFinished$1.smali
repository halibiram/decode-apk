.class final Landroidx/test/core/view/ViewCapture$generateBitmapFromPixelCopy$4$onCopyFinished$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/core/view/ViewCapture;->generateBitmapFromPixelCopy(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Landroid/view/PixelCopy$Result;",
        "kotlin.jvm.PlatformType",
        "accept"
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
.field final synthetic $cont:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/test/core/view/ViewCapture$generateBitmapFromPixelCopy$4$onCopyFinished$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/view/PixelCopy$Result;)V
    .locals 2

    .line 2
    invoke-static {p1}, L땰땭뒾듼듬돼땜딅듟돳딨땸듟땍땹딨듔됴뎸듻뒙돝딹돶땨됨땧드땫둣땧딁땮딤딤뒐두돼땄듸돤돝땄땳땋돛든됫뒤됫딹둘뒘딄돰딞땃돰둠뒼든듽땤둣딝됩뒬뎡땃돠듸딝땐둠뎨땧땰딟땱땤땮뒘땡디땵뒼든땔둔둑돵된둠뒨따됩따딌땄듼딎땦뎸돝돼딐딟땤딀딟뎸뒵땋득딀딀땫됩딐땻뎡딠돶땬둥듐땲뒋돷됫;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroid/view/PixelCopy$Result;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/test/core/view/ViewCapture$generateBitmapFromPixelCopy$4$onCopyFinished$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, L땰땭뒾듼듬돼땜딅듟돳딨땸듟땍땹딨듔됴뎸듻뒙돝딹돶땨됨땧드땫둣땧딁땮딤딤뒐두돼땄듸돤돝땄땳땋돛든됫뒤됫딹둘뒘딄돰딞땃돰둠뒼든듽땤둣딝됩뒬뎡땃돠듸딝땐둠뎨땧땰딟땱땤땮뒘땡디땵뒼든땔둔둑돵된둠뒨따됩따딌땄듼딎땦뎸돝돼딐딟땤딀딟뎸뒵땋득딀딀땫됩딐땻뎡딠돶땬둥듐땲뒋돷됫;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroid/view/PixelCopy$Result;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/test/core/view/ViewCapture$generateBitmapFromPixelCopy$4$onCopyFinished$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PixelCopy failed: $(result.status)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1}, L땰땭뒾듼듬돼땜딅듟돳딨땸듟땍땹딨듔됴뎸듻뒙돝딹돶땨됨땧드땫둣땧딁땮딤딤뒐두돼땄듸돤돝땄땳땋돛든됫뒤됫딹둘뒘딄돰딞땃돰둠뒼든듽땤둣딝됩뒬뎡땃돠듸딝땐둠뎨땧땰딟땱땤땮뒘땡디땵뒼든땔둔둑돵된둠뒨따됩따딌땄듼딎땦뎸돝돼딐딟땤딀딟뎸뒵땋득딀딀땫됩딐땻뎡딠돶땬둥듐땲뒋돷됫;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/Object;)Landroid/view/PixelCopy$Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/test/core/view/ViewCapture$generateBitmapFromPixelCopy$4$onCopyFinished$1;->accept(Landroid/view/PixelCopy$Result;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
