.class public final Lio/github/g00fy2/quickie/ScanCustomCode;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract<",
        "Lio/github/g00fy2/quickie/config/ScannerConfig;",
        "Lio/github/g00fy2/quickie/QRResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/github/g00fy2/quickie/ScanCustomCode;",
        "Landroidx/activity/result/contract/ActivityResultContract;",
        "Lio/github/g00fy2/quickie/config/ScannerConfig;",
        "Lio/github/g00fy2/quickie/QRResult;",
        "<init>",
        "()V",
        "createIntent",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "input",
        "parseResult",
        "resultCode",
        "",
        "intent",
        "quickie-foss_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createIntent(Landroid/content/Context;Lio/github/g00fy2/quickie/config/ScannerConfig;)Landroid/content/Intent;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/github/g00fy2/quickie/config/ScannerConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/g00fy2/quickie/QRScannerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    const-string p1, "quickie-config"

    invoke-static {p2}, Lio/github/g00fy2/quickie/config/ParcelableScannerConfigKt;->toParcelableConfig(Lio/github/g00fy2/quickie/config/ScannerConfig;)Lio/github/g00fy2/quickie/config/ParcelableScannerConfig;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 1
    check-cast p2, Lio/github/g00fy2/quickie/config/ScannerConfig;

    invoke-virtual {p0, p1, p2}, Lio/github/g00fy2/quickie/ScanCustomCode;->createIntent(Landroid/content/Context;Lio/github/g00fy2/quickie/config/ScannerConfig;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public parseResult(ILandroid/content/Intent;)Lio/github/g00fy2/quickie/QRResult;
    .locals 2
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2
    new-instance p2, Lio/github/g00fy2/quickie/QRResult$QRError;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown activity result code "

    .line 3
    invoke-static {p1, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lio/github/g00fy2/quickie/QRResult$QRError;-><init>(Ljava/lang/Exception;)V

    goto :goto_1

    .line 5
    :cond_0
    new-instance p1, Lio/github/g00fy2/quickie/QRResult$QRError;

    invoke-static {p2}, Lio/github/g00fy2/quickie/extensions/IntentExtensionsKt;->getRootException(Landroid/content/Intent;)Ljava/lang/Exception;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/github/g00fy2/quickie/QRResult$QRError;-><init>(Ljava/lang/Exception;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    .line 6
    :cond_1
    sget-object p2, Lio/github/g00fy2/quickie/QRResult$QRMissingPermission;->INSTANCE:Lio/github/g00fy2/quickie/QRResult$QRMissingPermission;

    goto :goto_1

    .line 7
    :cond_2
    sget-object p2, Lio/github/g00fy2/quickie/QRResult$QRUserCanceled;->INSTANCE:Lio/github/g00fy2/quickie/QRResult$QRUserCanceled;

    goto :goto_1

    .line 8
    :cond_3
    new-instance p1, Lio/github/g00fy2/quickie/QRResult$QRSuccess;

    invoke-static {p2}, Lio/github/g00fy2/quickie/extensions/IntentExtensionsKt;->toQuickieContentType(Landroid/content/Intent;)Lio/github/g00fy2/quickie/content/QRContent;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/github/g00fy2/quickie/QRResult$QRSuccess;-><init>(Lio/github/g00fy2/quickie/content/QRContent;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/github/g00fy2/quickie/ScanCustomCode;->parseResult(ILandroid/content/Intent;)Lio/github/g00fy2/quickie/QRResult;

    move-result-object p1

    return-object p1
.end method
