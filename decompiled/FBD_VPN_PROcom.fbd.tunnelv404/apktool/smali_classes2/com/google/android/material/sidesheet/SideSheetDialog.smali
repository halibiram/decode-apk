.class public Lcom/google/android/material/sidesheet/SideSheetDialog;
.super Lcom/google/android/material/sidesheet/SheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/sidesheet/SheetDialog<",
        "Lcom/google/android/material/sidesheet/SideSheetCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final SIDE_SHEET_DIALOG_DEFAULT_THEME_RES:I

.field private static final SIDE_SHEET_DIALOG_THEME_ATTR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->sideSheetDialogTheme:I

    .line 2
    .line 3
    sput v0, Lcom/google/android/material/sidesheet/SideSheetDialog;->SIDE_SHEET_DIALOG_THEME_ATTR:I

    .line 4
    .line 5
    sget v0, Lcom/google/android/material/R$style;->Theme_Material3_Light_SideSheetDialog:I

    .line 6
    .line 7
    sput v0, Lcom/google/android/material/sidesheet/SideSheetDialog;->SIDE_SHEET_DIALOG_DEFAULT_THEME_RES:I

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/sidesheet/SideSheetDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 2
    sget v0, Lcom/google/android/material/sidesheet/SideSheetDialog;->SIDE_SHEET_DIALOG_THEME_ATTR:I

    sget v1, Lcom/google/android/material/sidesheet/SideSheetDialog;->SIDE_SHEET_DIALOG_DEFAULT_THEME_RES:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/material/sidesheet/SheetDialog;-><init>(Landroid/content/Context;III)V

    return-void
.end method


# virtual methods
.method public addSheetCancelOnHideCallback(Lcom/google/android/material/sidesheet/Sheet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/sidesheet/Sheet<",
            "Lcom/google/android/material/sidesheet/SideSheetCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetDialog$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetDialog$1;-><init>(Lcom/google/android/material/sidesheet/SideSheetDialog;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Lcom/google/android/material/sidesheet/Sheet;->addCallback(Lcom/google/android/material/sidesheet/SheetCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public bridge synthetic cancel()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->cancel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic getBehavior()Lcom/google/android/material/sidesheet/Sheet;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetDialog;->getBehavior()Lcom/google/android/material/sidesheet/SideSheetBehavior;

    move-result-object v0

    return-object v0
.end method

.method public getBehavior()Lcom/google/android/material/sidesheet/SideSheetBehavior;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getBehavior()Lcom/google/android/material/sidesheet/Sheet;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0x8

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 8
        0x4742da0558d43d3cL    # 1.957666647585957E35
        -0x156531658bc79bdbL    # -3.3619092949807405E205
        0x38724ffb5e50a6faL    # 8.610462889803204E-37
        0x7333291e93bc7581L    # 8.373096251585391E246
        0x25cc25c5237f87beL    # 1.299428144684556E-126
        -0x417352ec03a823f3L    # -2.1365349149569178E-7
        0x7184aeca3ed85cdaL    # 6.734034782798344E238
        -0x71a30c0c3a630340L
    .end array-data
.end method

.method public getBehaviorFromSheet(Landroid/widget/FrameLayout;)Lcom/google/android/material/sidesheet/Sheet;
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/FrameLayout;",
            ")",
            "Lcom/google/android/material/sidesheet/Sheet<",
            "Lcom/google/android/material/sidesheet/SideSheetCallback;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getDialogId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 1
    sget v0, Lcom/google/android/material/R$id;->m3_side_sheet:I

    .line 2
    .line 3
    return v0
.end method

.method public getLayoutResId()I
    .locals 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    .line 1
    sget v0, Lcom/google/android/material/R$layout;->m3_side_sheet_dialog:I

    .line 2
    .line 3
    return v0
.end method

.method public getStateOnStart()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public bridge synthetic isDismissWithSheetAnimationEnabled()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->isDismissWithSheetAnimationEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setCancelable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setCancelable(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setContentView(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setContentView(I)V

    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/android/material/sidesheet/SheetDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic setDismissWithSheetAnimationEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setDismissWithSheetAnimationEnabled(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setSheetEdge(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/GravityInt;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setSheetEdge(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
