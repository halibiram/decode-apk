.class public Lorg/polaric/md_colorfragment/CircleView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final borderWidthLarge:I

.field private final borderWidthSmall:I

.field private final innerPaint:Landroid/graphics/Paint;

.field private mSelected:Z

.field private final outerPaint:Landroid/graphics/Paint;

.field private final whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lorg/polaric/md_colorfragment/CircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/polaric/md_colorfragment/CircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 p3, 0x1

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p3, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lorg/polaric/md_colorfragment/CircleView;->borderWidthSmall:I

    const/high16 p2, 0x40a00000    # 5.0f

    .line 6
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p3, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/polaric/md_colorfragment/CircleView;->borderWidthLarge:I

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/polaric/md_colorfragment/CircleView;->whitePaint:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p2, -0x1

    .line 9
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/polaric/md_colorfragment/CircleView;->innerPaint:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/polaric/md_colorfragment/CircleView;->outerPaint:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const p1, -0xbbbbbc

    .line 14
    invoke-direct {p0, p1}, Lorg/polaric/md_colorfragment/CircleView;->update(I)V

    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private createSelector(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p1}, Lorg/polaric/md_colorfragment/CircleView;->shiftColorUp(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Lorg/polaric/md_colorfragment/CircleView;->translucentColor(I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    .line 27
    .line 28
    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 29
    .line 30
    .line 31
    const v1, 0x10100a7

    .line 32
    .line 33
    .line 34
    filled-new-array {v1}, [I

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    return-object p1
.end method

.method public static shiftColor(IF)I
    .locals 2
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 2.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 v0, 0x3

    .line 9
    new-array v0, v0, [F

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x2

    .line 15
    aget v1, v0, p0

    .line 16
    .line 17
    mul-float v1, v1, p1

    .line 18
    .line 19
    aput v1, v0, p0

    .line 20
    .line 21
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public static shiftColorDown(I)I
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    const v0, 0x3f666666    # 0.9f

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lorg/polaric/md_colorfragment/CircleView;->shiftColor(IF)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static shiftColorUp(I)I
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    const v0, 0x3f8ccccd    # 1.1f

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lorg/polaric/md_colorfragment/CircleView;->shiftColor(IF)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method private static translucentColor(I)I
    .locals 3
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const v1, 0x3f333333    # 0.7f

    .line 7
    .line 8
    .line 9
    mul-float v0, v0, v1

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method private update(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lorg/polaric/md_colorfragment/CircleView;->innerPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/polaric/md_colorfragment/CircleView;->outerPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-static {p1}, Lorg/polaric/md_colorfragment/CircleView;->shiftColorDown(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lorg/polaric/md_colorfragment/CircleView;->createSelector(I)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [[I

    .line 21
    .line 22
    const v2, 0x10100a7

    .line 23
    .line 24
    .line 25
    filled-new-array {v2}, [I

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    aput-object v2, v1, v3

    .line 31
    .line 32
    invoke-static {p1}, Lorg/polaric/md_colorfragment/CircleView;->shiftColorUp(I)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    filled-new-array {p1}, [I

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 41
    .line 42
    invoke-direct {v2, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {p1, v2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    div-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    iget-boolean v1, p0, Lorg/polaric/md_colorfragment/CircleView;->mSelected:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget v1, p0, Lorg/polaric/md_colorfragment/CircleView;->borderWidthLarge:I

    .line 15
    .line 16
    sub-int v1, v0, v1

    .line 17
    .line 18
    iget v2, p0, Lorg/polaric/md_colorfragment/CircleView;->borderWidthSmall:I

    .line 19
    .line 20
    sub-int v2, v1, v2

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    div-int/lit8 v3, v3, 0x2

    .line 27
    .line 28
    int-to-float v3, v3

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    div-int/lit8 v4, v4, 0x2

    .line 34
    .line 35
    int-to-float v4, v4

    .line 36
    int-to-float v0, v0

    .line 37
    iget-object v5, p0, Lorg/polaric/md_colorfragment/CircleView;->outerPaint:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {p1, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    div-int/lit8 v0, v0, 0x2

    .line 47
    .line 48
    int-to-float v0, v0

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    div-int/lit8 v3, v3, 0x2

    .line 54
    .line 55
    int-to-float v3, v3

    .line 56
    int-to-float v1, v1

    .line 57
    iget-object v4, p0, Lorg/polaric/md_colorfragment/CircleView;->whitePaint:Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    div-int/lit8 v0, v0, 0x2

    .line 67
    .line 68
    int-to-float v0, v0

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    div-int/lit8 v1, v1, 0x2

    .line 74
    .line 75
    int-to-float v1, v1

    .line 76
    int-to-float v2, v2

    .line 77
    iget-object v3, p0, Lorg/polaric/md_colorfragment/CircleView;->innerPaint:Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    div-int/lit8 v1, v1, 0x2

    .line 88
    .line 89
    int-to-float v1, v1

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    div-int/lit8 v2, v2, 0x2

    .line 95
    .line 96
    int-to-float v2, v2

    .line 97
    int-to-float v0, v0

    .line 98
    iget-object v3, p0, Lorg/polaric/md_colorfragment/CircleView;->innerPaint:Landroid/graphics/Paint;

    .line 99
    .line 100
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 101
    .line 102
    .line 103
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "Cannot use setActivated() on CircleView."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "Cannot use setBackground() on CircleView."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lorg/polaric/md_colorfragment/CircleView;->update(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "Cannot use setBackgroundDrawable() on CircleView."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/polaric/md_colorfragment/CircleView;->mSelected:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public showHint(I)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    new-instance v2, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x1

    .line 28
    aget v7, v1, v6

    .line 29
    .line 30
    div-int/lit8 v8, v5, 0x2

    .line 31
    .line 32
    add-int/2addr v8, v7

    .line 33
    const/4 v7, 0x0

    .line 34
    aget v9, v1, v7

    .line 35
    .line 36
    div-int/2addr v4, v0

    .line 37
    add-int/2addr v4, v9

    .line 38
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 53
    .line 54
    sub-int v4, v0, v4

    .line 55
    .line 56
    :cond_0
    const v0, 0xffffff

    .line 57
    .line 58
    .line 59
    and-int/2addr p1, v0

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-array v0, v6, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object p1, v0, v7

    .line 67
    .line 68
    const-string p1, "#%06X"

    .line 69
    .line 70
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {v3, p1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-ge v8, v0, :cond_1

    .line 83
    .line 84
    aget v0, v1, v6

    .line 85
    .line 86
    add-int/2addr v0, v5

    .line 87
    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 88
    .line 89
    sub-int/2addr v0, v1

    .line 90
    const v1, 0x800035

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1, v4, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    const/16 v0, 0x51

    .line 98
    .line 99
    invoke-virtual {p1, v0, v7, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 100
    .line 101
    .line 102
    :goto_0
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 103
    .line 104
    .line 105
    return-void
.end method
