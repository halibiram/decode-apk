.class public Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/utils/OffscreenLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComposeOp"
.end annotation


# instance fields
.field public alpha:I

.field public blendMode:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public colorFilter:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public shadow:Lcom/airbnb/lottie/utils/DropShadow;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->reset()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public hasBlendMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->blendMode:Landroidx/core/graphics/BlendModeCompat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SRC_OVER:Landroidx/core/graphics/BlendModeCompat;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public hasColorFilter()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->colorFilter:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasShadow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->shadow:Lcom/airbnb/lottie/utils/DropShadow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public isNoop()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->isTranslucent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->hasBlendMode()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->hasShadow()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->hasColorFilter()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public isTranslucent()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->alpha:I

    .line 2
    .line 3
    const/16 v1, 0xff

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    iput v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->alpha:I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->blendMode:Landroidx/core/graphics/BlendModeCompat;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->colorFilter:Landroid/graphics/ColorFilter;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->shadow:Lcom/airbnb/lottie/utils/DropShadow;

    .line 11
    .line 12
    return-void
.end method
