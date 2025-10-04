.class public final Lio/github/g00fy2/quickie/extensions/BitmapQrReaderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\u001a:\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u00062\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "readQrCode",
        "",
        "Landroid/graphics/Bitmap;",
        "barcodeFormats",
        "",
        "onSuccess",
        "Lkotlin/Function1;",
        "",
        "onFailure",
        "",
        "quickie-foss_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final readQrCode(Landroid/graphics/Bitmap;[ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "[I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "barcodeFormats"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onSuccess"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "onFailure"

    .line 17
    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v0, L돤딐듟돶뒉땬뒘도뒾돳딐돤딎듐딤따딜뒵둠뒀땍땐땵땭딌뒛딅둔뎡땬둣뎡돠둠됐뎽듨땄땨뒉듸땋땳딹돤딽땹됫뒬땜둥돠둬딄땱땋디딃땥돷뒬둠됴뎽뎨땅땄땝뎻땠딅땱땰돰뒉땟딟땁딤딅땣딹땍뒙땸뒝땍뒾땵뎹딌드뎹둠뒉땨땬두듟돳땮땔땤땣됩땬뒐둘득딃땬땠딄뎨딝땄둡땭듬둘됐땬두땹돵딻땝돝땵땍;

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    move-object v2, v0

    .line 33
    move-object v3, p1

    .line 34
    move-object v4, p0

    .line 35
    move-object v5, p2

    .line 36
    move-object v6, p3

    .line 37
    invoke-direct/range {v2 .. v7}, L돤딐듟돶뒉땬뒘도뒾돳딐돤딎듐딤따딜뒵둠뒀땍땐땵땭딌뒛딅둔뎡땬둣뎡돠둠됐뎽듨땄땨뒉듸땋땳딹돤딽땹됫뒬땜둥돠둬딄땱땋디딃땥돷뒬둠됴뎽뎨땅땄땝뎻땠딅땱땰돰뒉땟딟땁딤딅땣딹땍뒙땸뒝땍뒾땵뎹딌드뎹둠뒉땨땬두듟돳땮땔땤땣됩땬뒐둘득딃땬땠딄뎨딝땄둡땭듬둘됐땬두땹돵딻땝돝땵땍;-><init>([ILandroid/graphics/Bitmap;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 38
    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    move-object v4, v0

    .line 45
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 46
    .line 47
    .line 48
    return-void
.end method
