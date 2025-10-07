.class public Lcom/tknetwork/tunnel/view/CircleProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private color:I

.field private foregroundPaint:Landroid/graphics/Paint;

.field private max:I

.field private min:I

.field private progress:F

.field private rectF:Landroid/graphics/RectF;

.field private startAngle:I

.field private strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x40800000    # 4.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->strokeWidth:F

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->progress:F

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->min:I

    .line 13
    .line 14
    const/16 v0, 0x64

    .line 15
    .line 16
    iput v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->max:I

    .line 17
    .line 18
    const/16 v0, -0x5a

    .line 19
    .line 20
    iput v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->startAngle:I

    .line 21
    .line 22
    const v0, -0xbbbbbc

    .line 23
    .line 24
    .line 25
    iput v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->color:I

    .line 26
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/view/CircleProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->rectF:Landroid/graphics/RectF;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lcom/v2ray/ang/R$styleable;->CircleProgressBar:[I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :try_start_0
    iget p2, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->strokeWidth:F

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iput p2, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->strokeWidth:F

    .line 27
    .line 28
    iget p2, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->progress:F

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    iput p2, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->progress:F

    .line 36
    .line 37
    iget p2, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->color:I

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iput p2, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->color:I

    .line 45
    .line 46
    iget p2, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->min:I

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    iput p2, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->min:I

    .line 54
    .line 55
    iget p2, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->max:I

    .line 56
    .line 57
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    iput p2, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->max:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    .line 65
    .line 66
    new-instance p1, Landroid/graphics/Paint;

    .line 67
    .line 68
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    .line 72
    .line 73
    iget p2, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->color:I

    .line 74
    .line 75
    const v1, 0x3e99999a    # 0.3f

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p2, v1}, Lcom/tknetwork/tunnel/view/CircleProgressBar;->adjustAlpha(IF)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    .line 86
    .line 87
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    .line 93
    .line 94
    iget v1, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->strokeWidth:F

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    .line 98
    .line 99
    new-instance p1, Landroid/graphics/Paint;

    .line 100
    .line 101
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    .line 105
    .line 106
    iget v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->color:I

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    .line 117
    .line 118
    iget p2, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->strokeWidth:F

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :catchall_0
    move-exception p2

    .line 125
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    .line 127
    .line 128
    throw p2
.end method


# virtual methods
.method public adjustAlpha(IF)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    mul-float v0, v0, p2

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public getColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->color:I

    .line 2
    .line 3
    return v0
.end method

.method public getMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->max:I

    .line 2
    .line 3
    return v0
.end method

.method public getMin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->min:I

    .line 2
    .line 3
    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->progress:F

    .line 2
    .line 3
    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->strokeWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public lightenColor(IF)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    mul-float v0, v0, p2

    .line 7
    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    mul-float v1, v1, p2

    .line 14
    .line 15
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    int-to-float v2, v2

    .line 20
    mul-float v2, v2, p2

    .line 21
    .line 22
    float-to-int p2, v0

    .line 23
    const/16 v0, 0xff

    .line 24
    .line 25
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    float-to-int v1, v1

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    float-to-int v2, v2

    .line 35
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {p1, p2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->rectF:Landroid/graphics/RectF;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 9
    .line 10
    .line 11
    const/high16 v0, 0x43b40000    # 360.0f

    .line 12
    .line 13
    iget v1, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->progress:F

    .line 14
    .line 15
    mul-float v1, v1, v0

    .line 16
    .line 17
    iget v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->max:I

    .line 18
    .line 19
    int-to-float v0, v0

    .line 20
    div-float v5, v1, v0

    .line 21
    .line 22
    iget-object v3, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->rectF:Landroid/graphics/RectF;

    .line 23
    .line 24
    iget v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->startAngle:I

    .line 25
    .line 26
    int-to-float v4, v0

    .line 27
    const/4 v6, 0x0

    .line 28
    iget-object v7, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    .line 29
    .line 30
    move-object v2, p1

    .line 31
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->rectF:Landroid/graphics/RectF;

    .line 25
    .line 26
    iget v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->strokeWidth:F

    .line 27
    .line 28
    const/high16 v1, 0x40000000    # 2.0f

    .line 29
    .line 30
    div-float v2, v0, v1

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    add-float/2addr v2, v3

    .line 34
    div-float v4, v0, v1

    .line 35
    .line 36
    add-float/2addr v4, v3

    .line 37
    int-to-float p1, p1

    .line 38
    div-float v3, v0, v1

    .line 39
    .line 40
    sub-float v3, p1, v3

    .line 41
    .line 42
    div-float/2addr v0, v1

    .line 43
    sub-float/2addr p1, v0

    .line 44
    invoke-virtual {p2, v2, v4, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public setColor(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->color:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    .line 4
    .line 5
    const v1, 0x3e99999a    # 0.3f

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v1}, Lcom/tknetwork/tunnel/view/CircleProgressBar;->adjustAlpha(IF)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->max:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->min:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->progress:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProgressWithAnimation(F)V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    new-array v1, v1, [F

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    aput p1, v1, v2

    .line 21
    .line 22
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-wide/16 v0, 0x5dc

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 29
    .line 30
    .line 31
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :array_0
    .array-data 8
        -0x4818a1f4922b1dd2L    # -2.14595327336093E-39
        0x5298cf005fc78902L    # 7.89625150316404E89
    .end array-data
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->strokeWidth:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/CircleProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
