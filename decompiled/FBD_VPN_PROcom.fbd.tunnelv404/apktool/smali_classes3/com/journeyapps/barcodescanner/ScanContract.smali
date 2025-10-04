.class public Lcom/journeyapps/barcodescanner/ScanContract;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract<",
        "Lcom/journeyapps/barcodescanner/ScanOptions;",
        "Lcom/journeyapps/barcodescanner/ScanIntentResult;",
        ">;"
    }
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
.method public createIntent(Landroid/content/Context;Lcom/journeyapps/barcodescanner/ScanOptions;)Landroid/content/Intent;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p2, p1}, Lcom/journeyapps/barcodescanner/ScanOptions;->createScanIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p2, Lcom/journeyapps/barcodescanner/ScanOptions;

    invoke-virtual {p0, p1, p2}, Lcom/journeyapps/barcodescanner/ScanContract;->createIntent(Landroid/content/Context;Lcom/journeyapps/barcodescanner/ScanOptions;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public parseResult(ILandroid/content/Intent;)Lcom/journeyapps/barcodescanner/ScanIntentResult;
    .locals 0
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p1, p2}, Lcom/journeyapps/barcodescanner/ScanIntentResult;->parseActivityResult(ILandroid/content/Intent;)Lcom/journeyapps/barcodescanner/ScanIntentResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/journeyapps/barcodescanner/ScanContract;->parseResult(ILandroid/content/Intent;)Lcom/journeyapps/barcodescanner/ScanIntentResult;

    move-result-object p1

    return-object p1
.end method
