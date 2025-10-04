.class public Lcom/github/mikephil/charting/charts/BarChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase<",
        "Lcom/github/mikephil/charting/data/BarData;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;"
    }
.end annotation


# instance fields
.field private mDrawBarShadow:Z

.field private mDrawValueAboveBar:Z

.field private mFitBars:Z

.field protected mHighlightFullBarEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mHighlightFullBarEnabled:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    .line 4
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    .line 5
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mFitBars:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mHighlightFullBarEnabled:Z

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    .line 9
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    .line 10
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mFitBars:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mHighlightFullBarEnabled:Z

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    .line 14
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    .line 15
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mFitBars:Z

    return-void
.end method


# virtual methods
.method public calcMinMax()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mFitBars:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 8
    .line 9
    check-cast v1, Lcom/github/mikephil/charting/data/BarData;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getXMin()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 16
    .line 17
    check-cast v2, Lcom/github/mikephil/charting/data/BarData;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/high16 v3, 0x40000000    # 2.0f

    .line 24
    .line 25
    div-float/2addr v2, v3

    .line 26
    sub-float/2addr v1, v2

    .line 27
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 28
    .line 29
    check-cast v2, Lcom/github/mikephil/charting/data/BarData;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/ChartData;->getXMax()F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 36
    .line 37
    check-cast v4, Lcom/github/mikephil/charting/data/BarData;

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    div-float/2addr v4, v3

    .line 44
    add-float/2addr v4, v2

    .line 45
    invoke-virtual {v0, v1, v4}, Lcom/github/mikephil/charting/components/AxisBase;->calculate(FF)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 52
    .line 53
    check-cast v1, Lcom/github/mikephil/charting/data/BarData;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getXMin()F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 60
    .line 61
    check-cast v2, Lcom/github/mikephil/charting/data/BarData;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/ChartData;->getXMax()F

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/AxisBase;->calculate(FF)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 73
    .line 74
    check-cast v1, Lcom/github/mikephil/charting/data/BarData;

    .line 75
    .line 76
    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/ChartData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 83
    .line 84
    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    .line 85
    .line 86
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/ChartData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 96
    .line 97
    check-cast v1, Lcom/github/mikephil/charting/data/BarData;

    .line 98
    .line 99
    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/ChartData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 106
    .line 107
    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    .line 108
    .line 109
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/ChartData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;)Landroid/graphics/RectF;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/charts/BarChart;->getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;Landroid/graphics/RectF;)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetForEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v1

    .line 6
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p1

    .line 7
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v3, p1, v2

    add-float/2addr p1, v2

    const/4 v2, 0x0

    cmpl-float v4, v1, v2

    if-ltz v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    cmpg-float v5, v1, v2

    if-gtz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 8
    :goto_1
    invoke-virtual {p2, v3, v4, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixel(Landroid/graphics/RectF;)V

    return-void
.end method

.method public getBarData()Lcom/github/mikephil/charting/data/BarData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 2
    .line 3
    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    .line 4
    .line 5
    return-object v0
.end method

.method public getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 p2, 0x3

    .line 8
    new-array p2, p2, [J

    .line 9
    .line 10
    fill-array-data p2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 p2, 0x6

    .line 22
    new-array p2, p2, [J

    .line 23
    .line 24
    fill-array-data p2, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    return-object p1

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHighlighter()Lcom/github/mikephil/charting/highlight/IHighlighter;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0, p1, p2}, Lcom/github/mikephil/charting/highlight/IHighlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->isHighlightFullBarEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-nez p2, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance p2, Lcom/github/mikephil/charting/highlight/Highlight;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getXPx()F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getYPx()F

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    const/4 v6, -0x1

    .line 75
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getAxis()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    move-object v0, p2

    .line 80
    invoke-direct/range {v0 .. v7}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFFFIILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 81
    .line 82
    .line 83
    return-object p2

    .line 84
    :cond_2
    :goto_0
    return-object p1

    .line 85
    :array_0
    .array-data 8
        0x65e4729a03d6e476L    # 6.787831538619281E182
        -0x2e3727e16facf4a0L    # -9.652817257220243E85
        -0x7115a071d03d2992L    # -8.100228917303501E-237
    .end array-data

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_1
    .array-data 8
        0x70c36ef5e0feb152L    # 1.544743225892228E235
        -0x725627cf24de5a01L    # -7.570099127497065E-243
        0x7aea4fa83cdccc5cL    # 1.222660658498381E284
        0x34fbd0a8ff1b5d54L    # 1.8150185720215657E-53
        0x5ec0b4c2d0aa462cL    # 2.6701944881601684E148
        0x21d734d8aeaf8d40L
    .end array-data
.end method

.method public groupBars(FFF)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lcom/github/mikephil/charting/data/BarData;->groupBars(FFF)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->notifyDataSetChanged()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/16 p3, 0x8

    .line 23
    .line 24
    new-array p3, p3, [J

    .line 25
    .line 26
    fill-array-data p3, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x30efa6dc2c4c986aL    # -7.221193588537047E72
        -0x4e7b67450f7d9529L    # -3.73032444169426E-70
        0x66f22e54609bb85cL    # 7.910692099798817E187
        0x7728832da767dfcfL    # 9.879894246547642E265
        -0x688ddd95b9877634L
        0x5bfbc2335f3b24a3L    # 1.2610014235652898E135
        -0x75614708d4a5d635L
        0x782ace6fed3dbcd8L    # 7.080836035728107E270
    .end array-data
.end method

.method public highlightValue(FII)V
    .locals 1

    .line 1
    new-instance v0, Lcom/github/mikephil/charting/highlight/Highlight;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FII)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/github/mikephil/charting/charts/Chart;->highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->init()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 9
    .line 10
    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 14
    .line 15
    new-instance v0, Lcom/github/mikephil/charting/highlight/BarHighlighter;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/highlight/BarHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setHighlighter(Lcom/github/mikephil/charting/highlight/ChartHighlighter;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/high16 v1, 0x3f000000    # 0.5f

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setSpaceMin(F)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setSpaceMax(F)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public isDrawBarShadowEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDrawValueAboveBarEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHighlightFullBarEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mHighlightFullBarEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public setDrawBarShadow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDrawValueAboveBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFitBars(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mFitBars:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHighlightFullBarEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mHighlightFullBarEnabled:Z

    .line 2
    .line 3
    return-void
.end method
