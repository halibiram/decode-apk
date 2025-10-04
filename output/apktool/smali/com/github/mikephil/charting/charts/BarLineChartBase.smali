.class public abstract Lcom/github/mikephil/charting/charts/BarLineChartBase;
.super Lcom/github/mikephil/charting/charts/Chart;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RtlHardcoded"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData<",
        "+",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet<",
        "+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Lcom/github/mikephil/charting/charts/Chart<",
        "TT;>;",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;"
    }
.end annotation


# instance fields
.field private drawCycles:J

.field protected mAutoScaleMinMaxEnabled:Z

.field protected mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

.field protected mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

.field protected mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

.field protected mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

.field protected mBorderPaint:Landroid/graphics/Paint;

.field protected mClipValuesToContent:Z

.field private mCustomViewPortEnabled:Z

.field protected mDoubleTapToZoomEnabled:Z

.field private mDragXEnabled:Z

.field private mDragYEnabled:Z

.field protected mDrawBorders:Z

.field protected mDrawGridBackground:Z

.field protected mDrawListener:Lcom/github/mikephil/charting/listener/OnDrawListener;

.field protected mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

.field protected mGetPositionBuffer:[F

.field protected mGridBackgroundPaint:Landroid/graphics/Paint;

.field protected mHighlightPerDragEnabled:Z

.field protected mKeepPositionOnRotation:Z

.field protected mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

.field protected mMaxVisibleCount:I

.field protected mMinOffset:F

.field private mOffsetsBuffer:Landroid/graphics/RectF;

.field protected mOnSizeChangedBuffer:[F

.field protected mPinchZoomEnabled:Z

.field protected mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

.field private mScaleXEnabled:Z

.field private mScaleYEnabled:Z

.field protected mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

.field protected mZoomMatrixBuffer:Landroid/graphics/Matrix;

.field protected posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

.field protected posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

.field private totalTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 51
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 52
    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    .line 54
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mPinchZoomEnabled:Z

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    .line 56
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    .line 57
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    .line 58
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    .line 59
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    .line 60
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    .line 61
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    .line 62
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    .line 63
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipValuesToContent:Z

    const/high16 v0, 0x41700000    # 15.0f

    .line 64
    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    .line 65
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    .line 67
    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 70
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

    .line 71
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    const/4 p1, 0x2

    .line 72
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    const-wide/16 v0, 0x0

    .line 73
    invoke-static {v0, v1, v0, v1}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v2

    iput-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 74
    invoke-static {v0, v1, v0, v1}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 75
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    .line 27
    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    .line 29
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mPinchZoomEnabled:Z

    const/4 p2, 0x1

    .line 30
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    .line 31
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    .line 32
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    .line 33
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    .line 34
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    .line 35
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    .line 36
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    .line 37
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    .line 38
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipValuesToContent:Z

    const/high16 p2, 0x41700000    # 15.0f

    .line 39
    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    .line 40
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    .line 42
    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    .line 43
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    .line 44
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 45
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

    .line 46
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    const/4 p1, 0x2

    .line 47
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    const-wide/16 v0, 0x0

    .line 48
    invoke-static {v0, v1, v0, v1}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p2

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 49
    invoke-static {v0, v1, v0, v1}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p2

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 50
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    .line 4
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mPinchZoomEnabled:Z

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    .line 6
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    .line 7
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    .line 8
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    .line 9
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    .line 10
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    .line 11
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    .line 12
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    .line 13
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipValuesToContent:Z

    const/high16 p2, 0x41700000    # 15.0f

    .line 14
    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    .line 15
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    const-wide/16 p2, 0x0

    .line 16
    iput-wide p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    .line 17
    iput-wide p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    .line 18
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    .line 19
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 20
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

    .line 21
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    const/4 p1, 0x2

    .line 22
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    const-wide/16 p2, 0x0

    .line 23
    invoke-static {p2, p3, p2, p3}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 24
    invoke-static {p2, p3, p2, p3}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p2

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 25
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    return-void
.end method


# virtual methods
.method public autoScale()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getLowestVisibleX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighestVisibleX()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 10
    .line 11
    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    .line 12
    .line 13
    invoke-virtual {v2, v0, v1}, Lcom/github/mikephil/charting/data/ChartData;->calcMinMaxY(FF)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 19
    .line 20
    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getXMin()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 27
    .line 28
    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/ChartData;->getXMax()F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/AxisBase;->calculate(FF)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 48
    .line 49
    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    .line 50
    .line 51
    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/ChartData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 58
    .line 59
    check-cast v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/ChartData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    .line 66
    .line 67
    .line 68
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 79
    .line 80
    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    .line 81
    .line 82
    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/ChartData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 89
    .line 90
    check-cast v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    .line 91
    .line 92
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/ChartData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public calcMinMax()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 4
    .line 5
    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getXMin()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 12
    .line 13
    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/ChartData;->getXMax()F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/AxisBase;->calculate(FF)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 25
    .line 26
    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    .line 27
    .line 28
    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/ChartData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 35
    .line 36
    check-cast v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/ChartData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 48
    .line 49
    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    .line 50
    .line 51
    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/ChartData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 58
    .line 59
    check-cast v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/ChartData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public calculateLegendOffsets(Landroid/graphics/RectF;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 3
    .line 4
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 5
    .line 6
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 7
    .line 8
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 9
    .line 10
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 11
    .line 12
    if-eqz v0, :cond_9

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_9

    .line 19
    .line 20
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->isDrawInsideEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_9

    .line 27
    .line 28
    sget-object v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$2;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation:[I

    .line 29
    .line 30
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getOrientation()Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    aget v0, v0, v1

    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    const/4 v2, 0x1

    .line 44
    if-eq v0, v2, :cond_3

    .line 45
    .line 46
    if-eq v0, v1, :cond_0

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_0
    sget-object v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$2;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment:[I

    .line 51
    .line 52
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    aget v0, v0, v3

    .line 63
    .line 64
    if-eq v0, v2, :cond_2

    .line 65
    .line 66
    if-eq v0, v1, :cond_1

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 71
    .line 72
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 73
    .line 74
    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 75
    .line 76
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    mul-float v3, v3, v2

    .line 89
    .line 90
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getYOffset()F

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    add-float/2addr v2, v1

    .line 101
    add-float/2addr v2, v0

    .line 102
    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_9

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->isDrawLabelsEnabled()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_9

    .line 123
    .line 124
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    .line 131
    .line 132
    int-to-float v1, v1

    .line 133
    add-float/2addr v0, v1

    .line 134
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 139
    .line 140
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 141
    .line 142
    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 143
    .line 144
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    mul-float v3, v3, v2

    .line 157
    .line 158
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 163
    .line 164
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getYOffset()F

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    add-float/2addr v2, v1

    .line 169
    add-float/2addr v2, v0

    .line 170
    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_9

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->isDrawLabelsEnabled()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_9

    .line 191
    .line 192
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    .line 199
    .line 200
    int-to-float v1, v1

    .line 201
    add-float/2addr v0, v1

    .line 202
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_3
    sget-object v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$2;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment:[I

    .line 207
    .line 208
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 209
    .line 210
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getHorizontalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    aget v0, v0, v3

    .line 219
    .line 220
    if-eq v0, v2, :cond_8

    .line 221
    .line 222
    if-eq v0, v1, :cond_7

    .line 223
    .line 224
    const/4 v3, 0x3

    .line 225
    if-eq v0, v3, :cond_4

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_4
    sget-object v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$2;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment:[I

    .line 230
    .line 231
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 232
    .line 233
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    aget v0, v0, v3

    .line 242
    .line 243
    if-eq v0, v2, :cond_6

    .line 244
    .line 245
    if-eq v0, v1, :cond_5

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 250
    .line 251
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 252
    .line 253
    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 254
    .line 255
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 256
    .line 257
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 262
    .line 263
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    mul-float v3, v3, v2

    .line 268
    .line 269
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 274
    .line 275
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getYOffset()F

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    add-float/2addr v2, v1

    .line 280
    add-float/2addr v2, v0

    .line 281
    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 282
    .line 283
    goto :goto_0

    .line 284
    :cond_6
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 285
    .line 286
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 287
    .line 288
    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 289
    .line 290
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 291
    .line 292
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 297
    .line 298
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    mul-float v3, v3, v2

    .line 303
    .line 304
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 309
    .line 310
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getYOffset()F

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    add-float/2addr v2, v1

    .line 315
    add-float/2addr v2, v0

    .line 316
    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 317
    .line 318
    goto :goto_0

    .line 319
    :cond_7
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 320
    .line 321
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 322
    .line 323
    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 324
    .line 325
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 326
    .line 327
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 332
    .line 333
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    mul-float v3, v3, v2

    .line 338
    .line 339
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 344
    .line 345
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getXOffset()F

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    add-float/2addr v2, v1

    .line 350
    add-float/2addr v2, v0

    .line 351
    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 352
    .line 353
    goto :goto_0

    .line 354
    :cond_8
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 355
    .line 356
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 357
    .line 358
    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 359
    .line 360
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 361
    .line 362
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 367
    .line 368
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    mul-float v3, v3, v2

    .line 373
    .line 374
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 379
    .line 380
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getXOffset()F

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    add-float/2addr v2, v1

    .line 385
    add-float/2addr v2, v0

    .line 386
    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 387
    .line 388
    :cond_9
    :goto_0
    return-void
.end method

.method public calculateOffsets()V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    .line 3
    .line 4
    if-nez v1, :cond_5

    .line 5
    .line 6
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateLegendOffsets(Landroid/graphics/RectF;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    .line 12
    .line 13
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    add-float/2addr v2, v3

    .line 17
    iget v4, v1, Landroid/graphics/RectF;->top:F

    .line 18
    .line 19
    add-float/2addr v4, v3

    .line 20
    iget v5, v1, Landroid/graphics/RectF;->right:F

    .line 21
    .line 22
    add-float/2addr v5, v3

    .line 23
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 24
    .line 25
    add-float/2addr v1, v3

    .line 26
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->needsOffset()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 35
    .line 36
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 37
    .line 38
    invoke-virtual {v6}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->getPaintAxisLabels()Landroid/graphics/Paint;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/YAxis;->getRequiredWidthSpace(Landroid/graphics/Paint;)F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    add-float/2addr v2, v3

    .line 47
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->needsOffset()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 56
    .line 57
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 58
    .line 59
    invoke-virtual {v6}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->getPaintAxisLabels()Landroid/graphics/Paint;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/YAxis;->getRequiredWidthSpace(Landroid/graphics/Paint;)F

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    add-float/2addr v5, v3

    .line 68
    :cond_1
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/AxisBase;->isDrawLabelsEnabled()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_4

    .line 83
    .line 84
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 85
    .line 86
    iget v6, v3, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    .line 87
    .line 88
    int-to-float v6, v6

    .line 89
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/ComponentBase;->getYOffset()F

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    add-float/2addr v3, v6

    .line 94
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 95
    .line 96
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    sget-object v7, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    .line 101
    .line 102
    if-ne v6, v7, :cond_2

    .line 103
    .line 104
    add-float/2addr v1, v3

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 107
    .line 108
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    sget-object v7, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    .line 113
    .line 114
    if-ne v6, v7, :cond_3

    .line 115
    .line 116
    :goto_0
    add-float/2addr v4, v3

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 119
    .line 120
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    sget-object v7, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    .line 125
    .line 126
    if-ne v6, v7, :cond_4

    .line 127
    .line 128
    add-float/2addr v1, v3

    .line 129
    goto :goto_0

    .line 130
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraTopOffset()F

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    add-float/2addr v3, v4

    .line 135
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraRightOffset()F

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    add-float/2addr v4, v5

    .line 140
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraBottomOffset()F

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    add-float/2addr v5, v1

    .line 145
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraLeftOffset()F

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    add-float/2addr v1, v2

    .line 150
    iget v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    .line 151
    .line 152
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 157
    .line 158
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    invoke-virtual {v6, v1, v3, v4, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->restrainViewPort(FFFF)V

    .line 175
    .line 176
    .line 177
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 178
    .line 179
    if-eqz v1, :cond_5

    .line 180
    .line 181
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 182
    .line 183
    new-array v2, v0, [J

    .line 184
    .line 185
    fill-array-data v2, :array_0

    .line 186
    .line 187
    .line 188
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 195
    .line 196
    new-array v2, v0, [J

    .line 197
    .line 198
    fill-array-data v2, :array_1

    .line 199
    .line 200
    .line 201
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 208
    .line 209
    new-array v2, v0, [J

    .line 210
    .line 211
    fill-array-data v2, :array_2

    .line 212
    .line 213
    .line 214
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 221
    .line 222
    new-array v2, v0, [J

    .line 223
    .line 224
    fill-array-data v2, :array_3

    .line 225
    .line 226
    .line 227
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 234
    .line 235
    new-array v2, v0, [J

    .line 236
    .line 237
    fill-array-data v2, :array_4

    .line 238
    .line 239
    .line 240
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 247
    .line 248
    new-array v2, v0, [J

    .line 249
    .line 250
    fill-array-data v2, :array_5

    .line 251
    .line 252
    .line 253
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 260
    .line 261
    new-array v0, v0, [J

    .line 262
    .line 263
    fill-array-data v0, :array_6

    .line 264
    .line 265
    .line 266
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 273
    .line 274
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    :cond_5
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->prepareOffsetMatrix()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->prepareValuePxMatrix()V

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    nop

    .line 289
    :array_0
    .array-data 8
        -0x11e2cc873ba834fbL    # -2.638854569813413E222
        0x4251ea3926fb51f4L    # 3.077762324292805E11
        -0x73d69cf500a66978L    # -4.43223781018323E-250
    .end array-data

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    :array_1
    .array-data 8
        0x4169f41e58816f40L    # 1.3607154765800118E7
        0x27035539d7947539L    # 9.358560733510308E-121
        -0x75b02e778a100e38L
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_2
    .array-data 8
        -0x5404df41cc952164L    # -7.937753652770105E-97
        0x3558461c06742cf8L    # 1.0137239077978417E-51
        -0x2c3dd1e960134998L    # -3.0337745480097456E95
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :array_3
    .array-data 8
        0x15434f6ffe06a6b0L
        -0x61dc6759c9b42e79L
        0x34069f4d7ea31b33L    # 4.504920658165343E-58
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    :array_4
    .array-data 8
        0x46e91f0ec14f351L
        -0x71e1be9de0d68c92L
        0x4933032053751f2dL    # 4.239864955996733E44
    .end array-data

    :array_5
    .array-data 8
        -0xeb841e8489dfe0eL    # -4.831410582173366E237
        0x520ecce0b9014c3aL    # 1.9147133582064953E87
        0x597bba9081a575eeL    # 1.1456417036589267E123
    .end array-data

    :array_6
    .array-data 8
        0x5259c9eb6b4c9e9L
        -0x20757c71469de309L    # -1.7358067987626896E152
        0x7552ee3092ada1d1L    # 1.421205117758213E257
    .end array-data
.end method

.method public centerViewTo(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    div-float/2addr v0, v1

    .line 12
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    .line 17
    .line 18
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    div-float/2addr v1, v2

    .line 25
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 26
    .line 27
    const/high16 v3, 0x40000000    # 2.0f

    .line 28
    .line 29
    div-float/2addr v1, v3

    .line 30
    sub-float/2addr p1, v1

    .line 31
    div-float/2addr v0, v3

    .line 32
    add-float/2addr v0, p2

    .line 33
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {v2, p1, v0, p2, p0}, Lcom/github/mikephil/charting/jobs/MoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;)Lcom/github/mikephil/charting/jobs/MoveViewJob;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->addViewportJob(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public centerViewToAnimated(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;J)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    move-object v9, p0

    .line 2
    move-object v0, p3

    .line 3
    iget-object v1, v9, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, v9, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0, v1, v2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointD;

    .line 16
    .line 17
    .line 18
    move-result-object v10

    .line 19
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, v9, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    div-float/2addr v1, v2

    .line 30
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget v2, v2, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    .line 35
    .line 36
    iget-object v3, v9, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    div-float/2addr v2, v3

    .line 43
    iget-object v3, v9, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 44
    .line 45
    const/high16 v4, 0x40000000    # 2.0f

    .line 46
    .line 47
    div-float/2addr v2, v4

    .line 48
    sub-float v2, p1, v2

    .line 49
    .line 50
    div-float/2addr v1, v4

    .line 51
    add-float v4, v1, p2

    .line 52
    .line 53
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget-wide v0, v10, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    .line 58
    .line 59
    double-to-float v6, v0

    .line 60
    iget-wide v0, v10, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    .line 61
    .line 62
    double-to-float v7, v0

    .line 63
    move-object v0, v3

    .line 64
    move v1, v2

    .line 65
    move v2, v4

    .line 66
    move-object v3, v5

    .line 67
    move-object v4, p0

    .line 68
    move v5, v6

    .line 69
    move v6, v7

    .line 70
    move-wide v7, p4

    .line 71
    invoke-static/range {v0 .. v8}, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;FFJ)Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->addViewportJob(Ljava/lang/Runnable;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v10}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public centerViewToY(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    div-float/2addr v0, v1

    .line 12
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 13
    .line 14
    const/high16 v2, 0x40000000    # 2.0f

    .line 15
    .line 16
    div-float/2addr v0, v2

    .line 17
    add-float/2addr v0, p1

    .line 18
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-static {v1, p2, v0, p1, p0}, Lcom/github/mikephil/charting/jobs/MoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;)Lcom/github/mikephil/charting/jobs/MoveViewJob;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->addViewportJob(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->computeScroll()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public drawGridBackground(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public fitScreen()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->fitScreen(Landroid/graphics/Matrix;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v0, p0, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public getAxis(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/components/YAxis;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 9
    .line 10
    return-object p1
.end method

.method public getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 1

    .line 1
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 6
    .line 7
    iget p1, p1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 11
    .line 12
    iget p1, p1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    .line 13
    .line 14
    return p1
.end method

.method public getAxisRight()Lcom/github/mikephil/charting/components/YAxis;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    .line 6
    .line 7
    return-object v0
.end method

.method public getDataSetByTouchPoint(FF)Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;->getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 8
    .line 9
    check-cast p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method

.method public getDrawListener()Lcom/github/mikephil/charting/listener/OnDrawListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawListener:Lcom/github/mikephil/charting/listener/OnDrawListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEntryByTouchPoint(FF)Lcom/github/mikephil/charting/data/Entry;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;->getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 8
    .line 9
    check-cast p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/data/ChartData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public getHighestVisibleX()F
    .locals 4

    .line 1
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 25
    .line 26
    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 27
    .line 28
    float-to-double v0, v0

    .line 29
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 30
    .line 31
    iget-wide v2, v2, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    double-to-float v0, v0

    .line 38
    return v0
.end method

.method public getLowestVisibleX()F
    .locals 4

    .line 1
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 25
    .line 26
    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 27
    .line 28
    float-to-double v0, v0

    .line 29
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 30
    .line 31
    iget-wide v2, v2, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    double-to-float v0, v0

    .line 38
    return v0
.end method

.method public getMaxVisibleCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public getPaint(I)Landroid/graphics/Paint;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->getPaint(I)Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x4

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    .line 14
    .line 15
    return-object p1
.end method

.method public getPixelForValues(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointD;
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p3, p1, p2}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getPosition(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    aput v1, v0, v2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v1, 0x1

    .line 21
    aput p1, v0, v1

    .line 22
    .line 23
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    .line 33
    .line 34
    aget p2, p1, v2

    .line 35
    .line 36
    aget p1, p1, v1

    .line 37
    .line 38
    invoke-static {p2, p1}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public getRendererLeftYAxis()Lcom/github/mikephil/charting/renderer/YAxisRenderer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRendererRightYAxis()Lcom/github/mikephil/charting/renderer/YAxisRenderer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRendererXAxis()Lcom/github/mikephil/charting/renderer/XAxisRenderer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 9
    .line 10
    return-object p1
.end method

.method public getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointD;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1, v0, v1}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;Lcom/github/mikephil/charting/utils/MPPointD;)V

    return-object v0
.end method

.method public getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;Lcom/github/mikephil/charting/utils/MPPointD;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    return-void
.end method

.method public getVisibleXRange()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighestVisibleX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getLowestVisibleX()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-float/2addr v0, v1

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getYChartMax()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 2
    .line 3
    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 4
    .line 5
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 6
    .line 7
    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getYChartMin()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 2
    .line 3
    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 4
    .line 5
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 6
    .line 7
    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public hasNoDragOffset()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->hasNoDragOffset()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public init()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/github/mikephil/charting/components/YAxis;

    .line 5
    .line 6
    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;-><init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 12
    .line 13
    new-instance v0, Lcom/github/mikephil/charting/components/YAxis;

    .line 14
    .line 15
    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;-><init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 21
    .line 22
    new-instance v0, Lcom/github/mikephil/charting/utils/Transformer;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 30
    .line 31
    new-instance v0, Lcom/github/mikephil/charting/utils/Transformer;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 39
    .line 40
    new-instance v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 47
    .line 48
    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 52
    .line 53
    new-instance v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 60
    .line 61
    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 65
    .line 66
    new-instance v0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 73
    .line 74
    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 78
    .line 79
    new-instance v0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;

    .line 80
    .line 81
    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setHighlighter(Lcom/github/mikephil/charting/highlight/ChartHighlighter;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getMatrixTouch()Landroid/graphics/Matrix;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const/high16 v2, 0x40400000    # 3.0f

    .line 96
    .line 97
    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;Landroid/graphics/Matrix;F)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 101
    .line 102
    new-instance v0, Landroid/graphics/Paint;

    .line 103
    .line 104
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    .line 108
    .line 109
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    .line 115
    .line 116
    const/16 v1, 0xf0

    .line 117
    .line 118
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    .line 124
    .line 125
    new-instance v0, Landroid/graphics/Paint;

    .line 126
    .line 127
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    .line 131
    .line 132
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    .line 138
    .line 139
    const/high16 v1, -0x1000000

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    .line 145
    .line 146
    const/high16 v1, 0x3f800000    # 1.0f

    .line 147
    .line 148
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public isAnyAxisInverted()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public isAutoScaleMinMaxEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isClipValuesToContentEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipValuesToContent:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDoubleTapToZoomEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDragEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public isDragXEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDragYEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDrawBordersEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFullyZoomedOut()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOut()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isHighlightPerDragEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxis(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/components/YAxis;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public isKeepPositionOnRotation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPinchZoomEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mPinchZoomEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isScaleXEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isScaleYEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public moveViewTo(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    div-float/2addr v0, v1

    .line 12
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 13
    .line 14
    const/high16 v2, 0x40000000    # 2.0f

    .line 15
    .line 16
    div-float/2addr v0, v2

    .line 17
    add-float/2addr v0, p2

    .line 18
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {v1, p1, v0, p2, p0}, Lcom/github/mikephil/charting/jobs/MoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;)Lcom/github/mikephil/charting/jobs/MoveViewJob;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->addViewportJob(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public moveViewToAnimated(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;J)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    move-object v9, p0

    .line 2
    move-object v0, p3

    .line 3
    iget-object v1, v9, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, v9, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0, v1, v2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointD;

    .line 16
    .line 17
    .line 18
    move-result-object v10

    .line 19
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, v9, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    div-float/2addr v1, v2

    .line 30
    iget-object v2, v9, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 31
    .line 32
    const/high16 v3, 0x40000000    # 2.0f

    .line 33
    .line 34
    div-float/2addr v1, v3

    .line 35
    add-float v3, v1, p2

    .line 36
    .line 37
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-wide v0, v10, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    .line 42
    .line 43
    double-to-float v5, v0

    .line 44
    iget-wide v0, v10, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    .line 45
    .line 46
    double-to-float v6, v0

    .line 47
    move-object v0, v2

    .line 48
    move v1, p1

    .line 49
    move v2, v3

    .line 50
    move-object v3, v4

    .line 51
    move-object v4, p0

    .line 52
    move-wide v7, p4

    .line 53
    invoke-static/range {v0 .. v8}, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;FFJ)Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->addViewportJob(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v10}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public moveViewToX(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, p1, v2, v1, p0}, Lcom/github/mikephil/charting/jobs/MoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;)Lcom/github/mikephil/charting/jobs/MoveViewJob;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->addViewportJob(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 3
    .line 4
    if-nez v1, :cond_1

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array v0, v0, [J

    .line 13
    .line 14
    fill-array-data v0, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    new-array v1, v1, [J

    .line 27
    .line 28
    fill-array-data v1, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :cond_1
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v2, v0, [J

    .line 45
    .line 46
    fill-array-data v2, :array_2

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v0, v0, [J

    .line 58
    .line 59
    fill-array-data v0, :array_3

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/DataRenderer;->initBuffers()V

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calcMinMax()V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 81
    .line 82
    iget v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 83
    .line 84
    iget v3, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0, v2, v3, v1}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->computeAxis(FFZ)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 96
    .line 97
    iget v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 98
    .line 99
    iget v3, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {v0, v2, v3, v1}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->computeAxis(FFZ)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 109
    .line 110
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 111
    .line 112
    iget v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 113
    .line 114
    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    invoke-virtual {v0, v2, v1, v3}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->computeAxis(FFZ)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 121
    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    .line 125
    .line 126
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computeLegend(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :array_0
    .array-data 8
        -0x79d04fb9b800f3b6L
        -0x28ec3256884ef0adL    # -2.9765792616011287E111
        0x6d74cb5c79fd22cbL    # 1.835113090679226E219
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_1
    .array-data 8
        -0x11137c33302fba7fL    # -2.110949091905094E226
        0x1abe5c793811ea4L
        0xac6d0c66d14d457L
        0x2bd7c9cfe7a616dfL    # 1.7401446195183324E-97
        0x1343c120794d4203L    # 7.163033787880672E-216
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_2
    .array-data 8
        0x17ff6e4a919e2933L    # 4.305648550318779E-193
        0x7ac9dabc1c3fd1d3L    # 3.0035920926900724E283
        -0x690c6d6432f5171cL
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :array_3
    .array-data 8
        0x7754b4f11fca199L    # 9.840672109990085E-273
        -0x3f983a1daea23d86L    # -190.18387668907582
        0x71b7256fe36c261aL    # 6.028884866864281E239
    .end array-data
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawGridBackground(Landroid/graphics/Canvas;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->autoScale()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 35
    .line 36
    iget v5, v4, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 37
    .line 38
    iget v6, v4, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {v3, v5, v6, v4}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->computeAxis(FFZ)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 56
    .line 57
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 58
    .line 59
    iget v5, v4, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 60
    .line 61
    iget v6, v4, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v3, v5, v6, v4}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->computeAxis(FFZ)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 79
    .line 80
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 81
    .line 82
    iget v5, v4, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 83
    .line 84
    iget v4, v4, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    invoke-virtual {v3, v5, v4, v6}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->computeAxis(FFZ)V

    .line 88
    .line 89
    .line 90
    :cond_4
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 91
    .line 92
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderAxisLine(Landroid/graphics/Canvas;)V

    .line 93
    .line 94
    .line 95
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 96
    .line 97
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderAxisLine(Landroid/graphics/Canvas;)V

    .line 98
    .line 99
    .line 100
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 101
    .line 102
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderAxisLine(Landroid/graphics/Canvas;)V

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 106
    .line 107
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 111
    .line 112
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    .line 113
    .line 114
    .line 115
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 116
    .line 117
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    .line 118
    .line 119
    .line 120
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_5

    .line 127
    .line 128
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/AxisBase;->isDrawLimitLinesBehindDataEnabled()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_5

    .line 135
    .line 136
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 137
    .line 138
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 139
    .line 140
    .line 141
    :cond_5
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_6

    .line 148
    .line 149
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/AxisBase;->isDrawLimitLinesBehindDataEnabled()Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_6

    .line 156
    .line 157
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 158
    .line 159
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 160
    .line 161
    .line 162
    :cond_6
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 163
    .line 164
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_7

    .line 169
    .line 170
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 171
    .line 172
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/AxisBase;->isDrawLimitLinesBehindDataEnabled()Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_7

    .line 177
    .line 178
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 179
    .line 180
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 181
    .line 182
    .line 183
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 188
    .line 189
    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 194
    .line 195
    .line 196
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 197
    .line 198
    invoke-virtual {v4, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawData(Landroid/graphics/Canvas;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->valuesToHighlight()Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_8

    .line 206
    .line 207
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 208
    .line 209
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 210
    .line 211
    invoke-virtual {v4, p1, v5}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 212
    .line 213
    .line 214
    :cond_8
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 215
    .line 216
    .line 217
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 218
    .line 219
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawExtras(Landroid/graphics/Canvas;)V

    .line 220
    .line 221
    .line 222
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 223
    .line 224
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-eqz v3, :cond_9

    .line 229
    .line 230
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 231
    .line 232
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/AxisBase;->isDrawLimitLinesBehindDataEnabled()Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-nez v3, :cond_9

    .line 237
    .line 238
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 239
    .line 240
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 241
    .line 242
    .line 243
    :cond_9
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 244
    .line 245
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_a

    .line 250
    .line 251
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 252
    .line 253
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/AxisBase;->isDrawLimitLinesBehindDataEnabled()Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-nez v3, :cond_a

    .line 258
    .line 259
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 260
    .line 261
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 262
    .line 263
    .line 264
    :cond_a
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 265
    .line 266
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_b

    .line 271
    .line 272
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 273
    .line 274
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/AxisBase;->isDrawLimitLinesBehindDataEnabled()Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-nez v3, :cond_b

    .line 279
    .line 280
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 281
    .line 282
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 283
    .line 284
    .line 285
    :cond_b
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 286
    .line 287
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderAxisLabels(Landroid/graphics/Canvas;)V

    .line 288
    .line 289
    .line 290
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 291
    .line 292
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderAxisLabels(Landroid/graphics/Canvas;)V

    .line 293
    .line 294
    .line 295
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 296
    .line 297
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderAxisLabels(Landroid/graphics/Canvas;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isClipValuesToContentEnabled()Z

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    if-eqz v3, :cond_c

    .line 305
    .line 306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 311
    .line 312
    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 317
    .line 318
    .line 319
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 320
    .line 321
    invoke-virtual {v4, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValues(Landroid/graphics/Canvas;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 325
    .line 326
    .line 327
    goto :goto_0

    .line 328
    :cond_c
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 329
    .line 330
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValues(Landroid/graphics/Canvas;)V

    .line 331
    .line 332
    .line 333
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    .line 334
    .line 335
    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->renderLegend(Landroid/graphics/Canvas;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->drawDescription(Landroid/graphics/Canvas;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->drawMarkers(Landroid/graphics/Canvas;)V

    .line 342
    .line 343
    .line 344
    iget-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 345
    .line 346
    if-eqz p1, :cond_d

    .line 347
    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 349
    .line 350
    .line 351
    move-result-wide v3

    .line 352
    sub-long/2addr v3, v1

    .line 353
    iget-wide v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    .line 354
    .line 355
    add-long/2addr v1, v3

    .line 356
    iput-wide v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    .line 357
    .line 358
    iget-wide v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    .line 359
    .line 360
    const-wide/16 v5, 0x1

    .line 361
    .line 362
    add-long/2addr v3, v5

    .line 363
    iput-wide v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    .line 364
    .line 365
    div-long/2addr v1, v3

    .line 366
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 367
    .line 368
    new-array v1, v0, [J

    .line 369
    .line 370
    fill-array-data v1, :array_0

    .line 371
    .line 372
    .line 373
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 380
    .line 381
    new-array v1, v0, [J

    .line 382
    .line 383
    fill-array-data v1, :array_1

    .line 384
    .line 385
    .line 386
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 393
    .line 394
    new-array v1, v0, [J

    .line 395
    .line 396
    fill-array-data v1, :array_2

    .line 397
    .line 398
    .line 399
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 406
    .line 407
    new-array v0, v0, [J

    .line 408
    .line 409
    fill-array-data v0, :array_3

    .line 410
    .line 411
    .line 412
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    :cond_d
    return-void

    .line 419
    :array_0
    .array-data 8
        0xac0f4101d928acbL    # 7.05683187675019E-257
        0x1d869d1d6f1f79cbL
        0x3b6f50299dbc7367L    # 2.072129456024995E-22
    .end array-data

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_1
    .array-data 8
        0x7cd4f1b158bfaa3L
        -0x4278e6240ae12064L    # -2.62628106328645E-12
        0x53c44c4f6cf5ce8cL    # 3.387222699642156E95
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    :array_2
    .array-data 8
        0x27463ba0650077f4L
        -0x1234eb4b6644819bL    # -7.647678523854662E220
        0x404ad73e14a7bcbcL    # 53.68158205213828
    .end array-data

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    :array_3
    .array-data 8
        0x5bfe65e358a7fb1aL
        0x60976507b9bc3de3L    # 2.0074941577797478E157
        0x53cecbbefd46c548L    # 5.139031787711955E95
    .end array-data
.end method

.method public onSizeChanged(IIII)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    aput v2, v0, v1

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    aput v2, v0, v3

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    aput v2, v0, v3

    .line 21
    .line 22
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    .line 23
    .line 24
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    aput v2, v0, v1

    .line 31
    .line 32
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/charts/Chart;->onSizeChanged(IIII)V

    .line 44
    .line 45
    .line 46
    iget-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    sget-object p1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 62
    .line 63
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    .line 64
    .line 65
    invoke-virtual {p1, p2, p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->centerViewPort([FLandroid/view/View;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getMatrixTouch()Landroid/graphics/Matrix;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2, p0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_2
    :goto_0
    return v1
.end method

.method public prepareOffsetMatrix()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixOffset(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixOffset(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public prepareValuePxMatrix()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    new-array v2, v0, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v2, 0x6

    .line 22
    new-array v2, v2, [J

    .line 23
    .line 24
    fill-array-data v2, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 34
    .line 35
    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 36
    .line 37
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    new-array v2, v2, [J

    .line 41
    .line 42
    fill-array-data v2, :array_2

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 52
    .line 53
    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 54
    .line 55
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v0, v0, [J

    .line 58
    .line 59
    fill-array-data v0, :array_3

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 69
    .line 70
    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    .line 71
    .line 72
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 75
    .line 76
    iget v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 77
    .line 78
    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    .line 79
    .line 80
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 81
    .line 82
    iget v4, v3, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    .line 83
    .line 84
    iget v3, v3, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 85
    .line 86
    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixValuePx(FFFF)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 92
    .line 93
    iget v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 94
    .line 95
    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    .line 96
    .line 97
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 98
    .line 99
    iget v4, v3, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    .line 100
    .line 101
    iget v3, v3, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 102
    .line 103
    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixValuePx(FFFF)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :array_0
    .array-data 8
        -0x6e1bddec4f0b516aL    # -1.740540540588377E-222
        -0x339a2ed0213226b0L    # -1.0955870927866932E60
        -0x435567aa60854202L    # -1.8454027544125678E-16
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_1
    .array-data 8
        0x6f734320347891eaL    # 7.301008244428586E228
        -0x6f980a936015dbf2L
        0x3b21447c419d4c48L    # 7.141679299344371E-24
        0x762d8c61ff8ef418L
        0x575f75af67d9fb06L    # 7.565769035888803E112
        -0x15e2904dd1c52dc7L    # -1.4420506037628056E203
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_2
    .array-data 8
        0x7a87def597de72d6L
        0x2d6e9aec6aedf5f0L    # 7.51218198973286E-90
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :array_3
    .array-data 8
        0x7ad9a73826d0a6b3L    # 5.960428591088057E283
        0x5fff48f3da2a0a81L    # 2.6216430048634932E154
        0x4595673ddbc083c5L    # 1.655999170933277E27
    .end array-data
.end method

.method public resetTracking()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    .line 6
    .line 7
    return-void
.end method

.method public resetViewPortOffsets()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public resetZoom()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->resetZoom(Landroid/graphics/Matrix;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, p0, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setAutoScaleMinMaxEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setClipValuesToContent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipValuesToContent:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDoubleTapToZoomEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    .line 4
    .line 5
    return-void
.end method

.method public setDragOffsetX(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setDragOffsetX(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDragOffsetY(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setDragOffsetY(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDragXEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDragYEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDrawBorders(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDrawGridBackground(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGridBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHighlightPerDragEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setKeepPositionOnRotation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMaxVisibleValueCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setMinOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    .line 2
    .line 3
    return-void
.end method

.method public setOnDrawListener(Lcom/github/mikephil/charting/listener/OnDrawListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawListener:Lcom/github/mikephil/charting/listener/OnDrawListener;

    .line 2
    .line 3
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;->setPaint(Landroid/graphics/Paint;I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p2, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public setPinchZoom(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mPinchZoomEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRendererLeftYAxis(Lcom/github/mikephil/charting/renderer/YAxisRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 2
    .line 3
    return-void
.end method

.method public setRendererRightYAxis(Lcom/github/mikephil/charting/renderer/YAxisRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 2
    .line 3
    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    .line 4
    .line 5
    return-void
.end method

.method public setScaleMinima(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinimumScaleX(F)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinimumScaleY(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setScaleXEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setScaleYEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setViewPortOffsets(FFFF)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    .line 3
    .line 4
    new-instance v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$1;

    .line 5
    .line 6
    move-object v1, v0

    .line 7
    move-object v2, p0

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    move v5, p3

    .line 11
    move v6, p4

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/github/mikephil/charting/charts/BarLineChartBase$1;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;FFFF)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setVisibleXRange(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 2
    .line 3
    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    .line 4
    .line 5
    div-float p1, v0, p1

    .line 6
    .line 7
    div-float/2addr v0, p2

    .line 8
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 9
    .line 10
    invoke-virtual {p2, p1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinMaxScaleX(FF)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setVisibleXRangeMaximum(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 2
    .line 3
    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    .line 4
    .line 5
    div-float/2addr v0, p1

    .line 6
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinimumScaleX(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setVisibleXRangeMinimum(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 2
    .line 3
    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    .line 4
    .line 5
    div-float/2addr v0, p1

    .line 6
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMaximumScaleX(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setVisibleYRange(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-float/2addr v0, p1

    .line 6
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    div-float/2addr p1, p2

    .line 11
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 12
    .line 13
    invoke-virtual {p2, v0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinMaxScaleY(FF)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setVisibleYRangeMaximum(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    div-float/2addr p2, p1

    .line 6
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinimumScaleY(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setVisibleYRangeMinimum(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    div-float/2addr p2, p1

    .line 6
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMaximumScaleY(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 2
    .line 3
    return-void
.end method

.method public zoom(FFFF)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    neg-float v4, p4

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoom(FFFFLandroid/graphics/Matrix;)V

    .line 2
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public zoom(FFFFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 8

    .line 5
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p0, p5}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lcom/github/mikephil/charting/jobs/ZoomJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFFFLcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/YAxis$AxisDependency;Landroid/view/View;)Lcom/github/mikephil/charting/jobs/ZoomJob;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->addViewportJob(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zoomAndCenterAnimated(FFFFLcom/github/mikephil/charting/components/YAxis$AxisDependency;J)V
    .locals 17
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v0, p5

    .line 4
    .line 5
    iget-object v1, v15, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, v15, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v15, v1, v2, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointD;

    .line 18
    .line 19
    .line 20
    move-result-object v13

    .line 21
    iget-object v1, v15, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 22
    .line 23
    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxis(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/components/YAxis;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v0, v15, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 32
    .line 33
    iget v4, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    .line 34
    .line 35
    iget-object v0, v15, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    iget-object v0, v15, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    iget-wide v5, v13, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    .line 48
    .line 49
    double-to-float v11, v5

    .line 50
    iget-wide v5, v13, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    .line 51
    .line 52
    double-to-float v12, v5

    .line 53
    move-object v0, v1

    .line 54
    move-object/from16 v1, p0

    .line 55
    .line 56
    move/from16 v5, p1

    .line 57
    .line 58
    move/from16 v6, p2

    .line 59
    .line 60
    move/from16 v9, p3

    .line 61
    .line 62
    move/from16 v10, p4

    .line 63
    .line 64
    move-object/from16 v16, v13

    .line 65
    .line 66
    move-wide/from16 v13, p6

    .line 67
    .line 68
    invoke-static/range {v0 .. v14}, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;Landroid/view/View;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/YAxis;FFFFFFFFFJ)Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/charts/Chart;->addViewportJob(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    invoke-static/range {v16 .. v16}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public zoomIn()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentCenter()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 8
    .line 9
    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 10
    .line 11
    iget v3, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 12
    .line 13
    neg-float v3, v3

    .line 14
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoomIn(FFLandroid/graphics/Matrix;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v1, v2, p0, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public zoomOut()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentCenter()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 8
    .line 9
    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 10
    .line 11
    iget v3, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 12
    .line 13
    neg-float v3, v3

    .line 14
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoomOut(FFLandroid/graphics/Matrix;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v1, v2, p0, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public zoomToCenter(FF)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 8
    .line 9
    iget v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 10
    .line 11
    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 12
    .line 13
    neg-float v5, v0

    .line 14
    move v2, p1

    .line 15
    move v3, p2

    .line 16
    move-object v6, v7

    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoom(FFFFLandroid/graphics/Matrix;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p1, v7, p0, p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 24
    .line 25
    .line 26
    return-void
.end method
