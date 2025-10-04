.class public Lcom/airbnb/lottie/utils/DropShadow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private color:I

.field private dx:F

.field private dy:F

.field private radius:F

.field private vecs:[F
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 3
    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    .line 4
    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    return-void
.end method

.method public constructor <init>(FFFI)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 8
    iput p2, p0, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    .line 9
    iput p3, p0, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    .line 10
    iput p4, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/airbnb/lottie/utils/DropShadow;->vecs:[F

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/utils/DropShadow;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 14
    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    .line 15
    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    .line 17
    iget v0, p1, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 18
    iget v0, p1, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    .line 19
    iget v0, p1, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    .line 20
    iget p1, p1, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    iput p1, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/airbnb/lottie/utils/DropShadow;->vecs:[F

    return-void
.end method


# virtual methods
.method public applyTo(Landroid/graphics/Paint;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    iget v2, p0, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    iget v3, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    :goto_0
    return-void
.end method

.method public applyTo(Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;)V
    .locals 1

    .line 4
    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iput-object p0, p1, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->shadow:Lcom/airbnb/lottie/utils/DropShadow;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p1, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->shadow:Lcom/airbnb/lottie/utils/DropShadow;

    :goto_0
    return-void
.end method

.method public applyWithAlpha(ILandroid/graphics/Paint;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {p1, v1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(III)I

    move-result p1

    invoke-static {v0, p1}, Lcom/airbnb/lottie/utils/Utils;->mixOpacities(II)I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 3
    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    iget v2, p0, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->clearShadowLayer()V

    :goto_0
    return-void
.end method

.method public applyWithAlpha(ILcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/airbnb/lottie/utils/DropShadow;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/utils/DropShadow;-><init>(Lcom/airbnb/lottie/utils/DropShadow;)V

    iput-object v0, p2, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->shadow:Lcom/airbnb/lottie/utils/DropShadow;

    .line 6
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/DropShadow;->multiplyOpacity(I)V

    return-void
.end method

.method public getColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    .line 2
    .line 3
    return v0
.end method

.method public getDx()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    .line 2
    .line 3
    return v0
.end method

.method public getDy()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    .line 2
    .line 3
    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 2
    .line 3
    return v0
.end method

.method public multiplyOpacity(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0xff

    .line 9
    .line 10
    invoke-static {p1, v1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(III)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    mul-int p1, p1, v0

    .line 15
    .line 16
    int-to-float p1, p1

    .line 17
    const/high16 v0, 0x437f0000    # 255.0f

    .line 18
    .line 19
    div-float/2addr p1, v0

    .line 20
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    .line 25
    .line 26
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget v1, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    .line 31
    .line 32
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget v2, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    .line 37
    .line 38
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    .line 47
    .line 48
    return-void
.end method

.method public sameAs(Lcom/airbnb/lottie/utils/DropShadow;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 2
    .line 3
    iget v1, p1, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    .line 10
    .line 11
    iget v1, p1, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    .line 12
    .line 13
    cmpl-float v0, v0, v1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    .line 18
    .line 19
    iget v1, p1, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    .line 20
    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    .line 26
    .line 27
    iget p1, p1, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    .line 28
    .line 29
    if-ne v0, p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    return p1
.end method

.method public setColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    .line 2
    .line 3
    return-void
.end method

.method public setDx(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    .line 2
    .line 3
    return-void
.end method

.method public setDy(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    .line 2
    .line 3
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 2
    .line 3
    return-void
.end method

.method public transformBy(Landroid/graphics/Matrix;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->vecs:[F

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    iput-object v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->vecs:[F

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->vecs:[F

    .line 11
    .line 12
    iget v1, p0, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput v1, v0, v2

    .line 16
    .line 17
    iget v1, p0, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    aput v1, v0, v3

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->vecs:[F

    .line 26
    .line 27
    aget v1, v0, v2

    .line 28
    .line 29
    iput v1, p0, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    .line 30
    .line 31
    aget v0, v0, v3

    .line 32
    .line 33
    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    .line 34
    .line 35
    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRadius(F)F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 42
    .line 43
    return-void
.end method
