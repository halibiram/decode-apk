.class public Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;
.super Lcom/github/mikephil/charting/renderer/YAxisRenderer;
.source "SourceFile"


# instance fields
.field protected mDrawZeroLinePathBuffer:Landroid/graphics/Path;

.field protected mRenderLimitLinesBuffer:[F

.field protected mRenderLimitLinesPathBuffer:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mDrawZeroLinePathBuffer:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mRenderLimitLinesPathBuffer:Landroid/graphics/Path;

    .line 17
    .line 18
    const/4 p1, 0x4

    .line 19
    new-array p1, p1, [F

    .line 20
    .line 21
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mRenderLimitLinesBuffer:[F

    .line 22
    .line 23
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 24
    .line 25
    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public computeAxis(FFZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentHeight()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x41200000    # 10.0f

    .line 8
    .line 9
    cmpl-float v0, v0, v1

    .line 10
    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOutX()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, p2, v0}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p2, v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-nez p3, :cond_0

    .line 58
    .line 59
    iget-wide v0, p1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    .line 60
    .line 61
    double-to-float p3, v0

    .line 62
    iget-wide v0, p2, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    .line 63
    .line 64
    :goto_0
    double-to-float v0, v0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    iget-wide v0, p2, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    .line 67
    .line 68
    double-to-float p3, v0

    .line 69
    iget-wide v0, p1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :goto_1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p2}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 76
    .line 77
    .line 78
    move p1, p3

    .line 79
    move p2, v0

    .line 80
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->computeAxisValues(FF)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public drawYLabels(Landroid/graphics/Canvas;F[FF)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/ComponentBase;->getTypeface()Landroid/graphics/Typeface;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/ComponentBase;->getTextSize()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/ComponentBase;->getTextColor()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isDrawBottomYLabelEntryEnabled()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    xor-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->isDrawTopYLabelEntryEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 51
    .line 52
    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 56
    .line 57
    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    .line 58
    .line 59
    add-int/lit8 v1, v1, -0x1

    .line 60
    .line 61
    :goto_0
    if-ge v0, v1, :cond_1

    .line 62
    .line 63
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/components/AxisBase;->getFormattedLabel(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    mul-int/lit8 v3, v0, 0x2

    .line 70
    .line 71
    aget v3, p3, v3

    .line 72
    .line 73
    sub-float v4, p2, p4

    .line 74
    .line 75
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    .line 76
    .line 77
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method

.method public drawZeroLine(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mZeroLineClippingRect:Landroid/graphics/RectF;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mZeroLineClippingRect:Landroid/graphics/RectF;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->getZeroLineWidth()F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    neg-float v2, v2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    .line 35
    .line 36
    invoke-virtual {v1, v3, v3}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mZeroLinePaint:Landroid/graphics/Paint;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->getZeroLineColor()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mZeroLinePaint:Landroid/graphics/Paint;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->getZeroLineWidth()F

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mDrawZeroLinePathBuffer:Landroid/graphics/Path;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 65
    .line 66
    .line 67
    iget-wide v3, v1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    .line 68
    .line 69
    double-to-float v3, v3

    .line 70
    const/high16 v4, 0x3f800000    # 1.0f

    .line 71
    .line 72
    sub-float/2addr v3, v4

    .line 73
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 74
    .line 75
    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 80
    .line 81
    .line 82
    iget-wide v5, v1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    .line 83
    .line 84
    double-to-float v1, v5

    .line 85
    sub-float/2addr v1, v4

    .line 86
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mZeroLinePaint:Landroid/graphics/Paint;

    .line 96
    .line 97
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public getGridClippingRect()Landroid/graphics/RectF;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGridClippingRect:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGridClippingRect:Landroid/graphics/RectF;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/AxisBase;->getGridLineWidth()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    neg-float v1, v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGridClippingRect:Landroid/graphics/RectF;

    .line 26
    .line 27
    return-object v0
.end method

.method public getTransformedPositions()[F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGetTransformedPositionsBuffer:[F

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 5
    .line 6
    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    .line 7
    .line 8
    mul-int/lit8 v2, v1, 0x2

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    mul-int/lit8 v1, v1, 0x2

    .line 13
    .line 14
    new-array v0, v1, [F

    .line 15
    .line 16
    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGetTransformedPositionsBuffer:[F

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGetTransformedPositionsBuffer:[F

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    array-length v2, v0

    .line 22
    if-ge v1, v2, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    .line 27
    .line 28
    div-int/lit8 v3, v1, 0x2

    .line 29
    .line 30
    aget v2, v2, v3

    .line 31
    .line 32
    aput v2, v0, v1

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public linePath(Landroid/graphics/Path;I[F)Landroid/graphics/Path;
    .locals 2

    .line 1
    aget v0, p3, p2

    .line 2
    .line 3
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 10
    .line 11
    .line 12
    aget p2, p3, p2

    .line 13
    .line 14
    iget-object p3, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method

.method public renderAxisLabels(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->isDrawLabelsEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->getTransformedPositions()[F

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getTypeface()Landroid/graphics/Typeface;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getTextSize()F

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getTextColor()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    .line 57
    .line 58
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 61
    .line 62
    .line 63
    const/high16 v1, 0x40200000    # 2.5f

    .line 64
    .line 65
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    .line 70
    .line 71
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    const/4 v4, 0x2

    .line 74
    new-array v4, v4, [J

    .line 75
    .line 76
    fill-array-data v4, :array_0

    .line 77
    .line 78
    .line 79
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    int-to-float v2, v2

    .line 91
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->getLabelPosition()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    sget-object v5, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 104
    .line 105
    if-ne v3, v5, :cond_2

    .line 106
    .line 107
    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .line 108
    .line 109
    if-ne v4, v2, :cond_1

    .line 110
    .line 111
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    :goto_0
    sub-float/2addr v2, v1

    .line 118
    goto :goto_2

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .line 127
    .line 128
    if-ne v4, v3, :cond_3

    .line 129
    .line 130
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    :goto_1
    add-float/2addr v3, v2

    .line 137
    add-float v2, v3, v1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_3
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    goto :goto_1

    .line 147
    :goto_2
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/ComponentBase;->getYOffset()F

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->drawYLabels(Landroid/graphics/Canvas;F[FF)V

    .line 154
    .line 155
    .line 156
    :cond_4
    :goto_3
    return-void

    .line 157
    :array_0
    .array-data 8
        0x7d2e7aea2bdc766dL    # 9.733357345953698E294
        -0x1be638f31c49f517L    # -1.5938923557682969E174
    .end array-data
.end method

.method public renderAxisLine(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->isDrawAxisLineEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisLineColor()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisLineWidth()F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 47
    .line 48
    if-ne v0, v1, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    .line 75
    .line 76
    move-object v1, p1

    .line 77
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    .line 106
    .line 107
    move-object v1, p1

    .line 108
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    :goto_0
    return-void
.end method

.method public renderLimitLines(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 8
    .line 9
    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/AxisBase;->getLimitLines()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    if-eqz v4, :cond_6

    .line 14
    .line 15
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-gtz v5, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mRenderLimitLinesBuffer:[F

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    aput v6, v5, v2

    .line 27
    .line 28
    aput v6, v5, v3

    .line 29
    .line 30
    const/4 v7, 0x2

    .line 31
    aput v6, v5, v7

    .line 32
    .line 33
    const/4 v8, 0x3

    .line 34
    aput v6, v5, v8

    .line 35
    .line 36
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mRenderLimitLinesPathBuffer:Landroid/graphics/Path;

    .line 37
    .line 38
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 39
    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    if-ge v10, v11, :cond_6

    .line 47
    .line 48
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    check-cast v11, Lcom/github/mikephil/charting/components/LimitLine;

    .line 53
    .line 54
    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    if-nez v12, :cond_1

    .line 59
    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    .line 67
    .line 68
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 69
    .line 70
    invoke-virtual {v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    .line 71
    .line 72
    .line 73
    move-result-object v14

    .line 74
    invoke-virtual {v13, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 75
    .line 76
    .line 77
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    .line 78
    .line 79
    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    .line 80
    .line 81
    .line 82
    move-result v14

    .line 83
    neg-float v14, v14

    .line 84
    invoke-virtual {v13, v14, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 85
    .line 86
    .line 87
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    .line 88
    .line 89
    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 90
    .line 91
    .line 92
    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->getLimit()F

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    aput v13, v5, v2

    .line 97
    .line 98
    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->getLimit()F

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    aput v13, v5, v7

    .line 103
    .line 104
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    .line 105
    .line 106
    invoke-virtual {v13, v5}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 107
    .line 108
    .line 109
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 110
    .line 111
    invoke-virtual {v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 112
    .line 113
    .line 114
    move-result v13

    .line 115
    aput v13, v5, v3

    .line 116
    .line 117
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 118
    .line 119
    invoke-virtual {v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    aput v13, v5, v8

    .line 124
    .line 125
    aget v13, v5, v2

    .line 126
    .line 127
    aget v14, v5, v3

    .line 128
    .line 129
    invoke-virtual {v9, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 130
    .line 131
    .line 132
    aget v13, v5, v7

    .line 133
    .line 134
    aget v14, v5, v8

    .line 135
    .line 136
    invoke-virtual {v9, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 137
    .line 138
    .line 139
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 140
    .line 141
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 142
    .line 143
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    .line 145
    .line 146
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 147
    .line 148
    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->getLineColor()I

    .line 149
    .line 150
    .line 151
    move-result v14

    .line 152
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    .line 154
    .line 155
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 156
    .line 157
    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 162
    .line 163
    .line 164
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 165
    .line 166
    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    .line 167
    .line 168
    .line 169
    move-result v14

    .line 170
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    .line 172
    .line 173
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 174
    .line 175
    invoke-virtual {v1, v9, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->getLabel()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v13

    .line 185
    if-eqz v13, :cond_5

    .line 186
    .line 187
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 188
    .line 189
    new-array v15, v3, [J

    .line 190
    .line 191
    const-wide v16, 0x382a94d8e7f93986L    # 3.905790794518828E-38

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    aput-wide v16, v15, v2

    .line 197
    .line 198
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v14

    .line 205
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    if-nez v14, :cond_5

    .line 210
    .line 211
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 212
    .line 213
    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->getTextStyle()Landroid/graphics/Paint$Style;

    .line 214
    .line 215
    .line 216
    move-result-object v15

    .line 217
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 218
    .line 219
    .line 220
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 221
    .line 222
    const/4 v15, 0x0

    .line 223
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 224
    .line 225
    .line 226
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 227
    .line 228
    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/ComponentBase;->getTextColor()I

    .line 229
    .line 230
    .line 231
    move-result v15

    .line 232
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    .line 234
    .line 235
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 236
    .line 237
    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/ComponentBase;->getTypeface()Landroid/graphics/Typeface;

    .line 238
    .line 239
    .line 240
    move-result-object v15

    .line 241
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 242
    .line 243
    .line 244
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 245
    .line 246
    const/high16 v15, 0x3f000000    # 0.5f

    .line 247
    .line 248
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 249
    .line 250
    .line 251
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 252
    .line 253
    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/ComponentBase;->getTextSize()F

    .line 254
    .line 255
    .line 256
    move-result v15

    .line 257
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    .line 261
    .line 262
    .line 263
    move-result v14

    .line 264
    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/ComponentBase;->getXOffset()F

    .line 265
    .line 266
    .line 267
    move-result v15

    .line 268
    add-float/2addr v15, v14

    .line 269
    const/high16 v14, 0x40000000    # 2.0f

    .line 270
    .line 271
    invoke-static {v14}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 272
    .line 273
    .line 274
    move-result v14

    .line 275
    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/ComponentBase;->getYOffset()F

    .line 276
    .line 277
    .line 278
    move-result v16

    .line 279
    add-float v16, v16, v14

    .line 280
    .line 281
    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->getLabelPosition()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    .line 282
    .line 283
    .line 284
    move-result-object v11

    .line 285
    sget-object v14, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    .line 286
    .line 287
    if-ne v11, v14, :cond_2

    .line 288
    .line 289
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 290
    .line 291
    invoke-static {v11, v13}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    move-result v11

    .line 295
    int-to-float v11, v11

    .line 296
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 297
    .line 298
    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 299
    .line 300
    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 301
    .line 302
    .line 303
    aget v6, v5, v2

    .line 304
    .line 305
    add-float/2addr v6, v15

    .line 306
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 307
    .line 308
    invoke-virtual {v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 309
    .line 310
    .line 311
    move-result v14

    .line 312
    add-float v14, v14, v16

    .line 313
    .line 314
    add-float/2addr v14, v11

    .line 315
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 316
    .line 317
    invoke-virtual {v1, v13, v6, v14, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 318
    .line 319
    .line 320
    goto :goto_1

    .line 321
    :cond_2
    sget-object v6, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_BOTTOM:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    .line 322
    .line 323
    if-ne v11, v6, :cond_3

    .line 324
    .line 325
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 326
    .line 327
    sget-object v11, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 328
    .line 329
    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 330
    .line 331
    .line 332
    aget v6, v5, v2

    .line 333
    .line 334
    add-float/2addr v6, v15

    .line 335
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 336
    .line 337
    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    .line 338
    .line 339
    .line 340
    move-result v11

    .line 341
    sub-float v11, v11, v16

    .line 342
    .line 343
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 344
    .line 345
    invoke-virtual {v1, v13, v6, v11, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 346
    .line 347
    .line 348
    goto :goto_1

    .line 349
    :cond_3
    sget-object v6, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->LEFT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    .line 350
    .line 351
    if-ne v11, v6, :cond_4

    .line 352
    .line 353
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 354
    .line 355
    sget-object v11, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 356
    .line 357
    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 358
    .line 359
    .line 360
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 361
    .line 362
    invoke-static {v6, v13}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    int-to-float v6, v6

    .line 367
    aget v11, v5, v2

    .line 368
    .line 369
    sub-float/2addr v11, v15

    .line 370
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 371
    .line 372
    invoke-virtual {v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 373
    .line 374
    .line 375
    move-result v14

    .line 376
    add-float v14, v14, v16

    .line 377
    .line 378
    add-float/2addr v14, v6

    .line 379
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 380
    .line 381
    invoke-virtual {v1, v13, v11, v14, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 382
    .line 383
    .line 384
    goto :goto_1

    .line 385
    :cond_4
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 386
    .line 387
    sget-object v11, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 388
    .line 389
    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 390
    .line 391
    .line 392
    aget v6, v5, v2

    .line 393
    .line 394
    sub-float/2addr v6, v15

    .line 395
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 396
    .line 397
    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    .line 398
    .line 399
    .line 400
    move-result v11

    .line 401
    sub-float v11, v11, v16

    .line 402
    .line 403
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 404
    .line 405
    invoke-virtual {v1, v13, v6, v11, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 406
    .line 407
    .line 408
    :cond_5
    :goto_1
    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 409
    .line 410
    .line 411
    :goto_2
    add-int/2addr v10, v3

    .line 412
    const/4 v6, 0x0

    .line 413
    goto/16 :goto_0

    .line 414
    .line 415
    :cond_6
    :goto_3
    return-void
.end method
