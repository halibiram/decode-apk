.class public Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;
.super Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;
.source "SourceFile"


# instance fields
.field protected mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

.field mPixelBuffer:[F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x2

    .line 5
    new-array p2, p2, [F

    .line 6
    .line 7
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mPixelBuffer:[F

    .line 8
    .line 9
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;

    .line 26
    .line 27
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isVisible()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    const/4 v9, 0x1

    .line 6
    const/4 v10, 0x2

    .line 7
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    .line 10
    .line 11
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 16
    .line 17
    .line 18
    move-result-object v12

    .line 19
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 22
    .line 23
    .line 24
    move-result v13

    .line 25
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getShapeRenderer()Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;

    .line 26
    .line 27
    .line 28
    move-result-object v14

    .line 29
    if-nez v14, :cond_0

    .line 30
    .line 31
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v2, v10, [J

    .line 34
    .line 35
    fill-array-data v2, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/16 v2, 0x8

    .line 47
    .line 48
    new-array v2, v2, [J

    .line 49
    .line 50
    fill-array-data v2, :array_1

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    int-to-float v1, v1

    .line 65
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    mul-float v2, v2, v1

    .line 72
    .line 73
    float-to-double v1, v2

    .line 74
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    int-to-float v3, v3

    .line 83
    float-to-double v3, v3

    .line 84
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    .line 85
    .line 86
    .line 87
    move-result-wide v1

    .line 88
    double-to-int v15, v1

    .line 89
    const/16 v16, 0x0

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    :goto_0
    if-ge v7, v15, :cond_4

    .line 93
    .line 94
    invoke-interface {v8, v7}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mPixelBuffer:[F

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    aput v3, v2, v16

    .line 105
    .line 106
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mPixelBuffer:[F

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    mul-float v1, v1, v13

    .line 113
    .line 114
    aput v1, v2, v9

    .line 115
    .line 116
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mPixelBuffer:[F

    .line 117
    .line 118
    invoke-virtual {v12, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mPixelBuffer:[F

    .line 122
    .line 123
    aget v1, v1, v16

    .line 124
    .line 125
    invoke-virtual {v11, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_1
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mPixelBuffer:[F

    .line 133
    .line 134
    aget v1, v1, v16

    .line 135
    .line 136
    invoke-virtual {v11, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_2

    .line 141
    .line 142
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mPixelBuffer:[F

    .line 143
    .line 144
    aget v1, v1, v9

    .line 145
    .line 146
    invoke-virtual {v11, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_3

    .line 151
    .line 152
    :cond_2
    move/from16 v18, v7

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_3
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 156
    .line 157
    div-int/lit8 v2, v7, 0x2

    .line 158
    .line 159
    invoke-interface {v8, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColor(I)I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    .line 165
    .line 166
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 167
    .line 168
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mPixelBuffer:[F

    .line 169
    .line 170
    aget v5, v1, v16

    .line 171
    .line 172
    aget v6, v1, v9

    .line 173
    .line 174
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 175
    .line 176
    move-object v1, v14

    .line 177
    move-object/from16 v2, p1

    .line 178
    .line 179
    move-object/from16 v17, v3

    .line 180
    .line 181
    move-object/from16 v3, p2

    .line 182
    .line 183
    move/from16 v18, v7

    .line 184
    .line 185
    move-object/from16 v7, v17

    .line 186
    .line 187
    invoke-interface/range {v1 .. v7}, Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;->renderShape(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLandroid/graphics/Paint;)V

    .line 188
    .line 189
    .line 190
    :goto_1
    add-int/lit8 v7, v18, 0x1

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_4
    :goto_2
    return-void

    .line 194
    nop

    .line 195
    :array_0
    .array-data 8
        -0x5860c247d4a8fb82L
        -0x29f0e0168f216e81L    # -3.569217747201505E106
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_1
    .array-data 8
        -0x20225c507d3e3f96L    # -6.209364685627155E153
        -0x4299374c7bdfc366L    # -6.475599206669641E-13
        0xfcdd0ce17ba717aL
        0x581b23a75747b47aL    # 2.673354425527097E116
        -0x4881356e2881d684L    # -2.209166561541873E-41
        0x13b0e9ce599f5370L    # 7.850034499081567E-214
        -0x3df95beaf35b2a59L    # -1.2155265428604322E10
        -0x1f6a34fcc333fce5L    # -1.87005825005384E157
    .end array-data
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, p2

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_3

    .line 10
    .line 11
    aget-object v3, p2, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isHighlightEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-nez v5, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v3}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {v3}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-interface {v4, v5, v6}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {p0, v5, v4}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-nez v6, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    .line 52
    .line 53
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-interface {v6, v7}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 70
    .line 71
    invoke-virtual {v8}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    mul-float v8, v8, v5

    .line 76
    .line 77
    invoke-virtual {v6, v7, v8}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    iget-wide v6, v5, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    .line 82
    .line 83
    double-to-float v6, v6

    .line 84
    iget-wide v7, v5, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    .line 85
    .line 86
    double-to-float v7, v7

    .line 87
    invoke-virtual {v3, v6, v7}, Lcom/github/mikephil/charting/highlight/Highlight;->setDraw(FF)V

    .line 88
    .line 89
    .line 90
    iget-wide v6, v5, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    .line 91
    .line 92
    double-to-float v3, v6

    .line 93
    iget-wide v5, v5, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    .line 94
    .line 95
    double-to-float v5, v5

    .line 96
    invoke-virtual {p0, p1, v3, v5, v4}, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;->drawHighlightLines(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/interfaces/datasets/ILineScatterCandleRadarDataSet;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 21

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    .line 4
    .line 5
    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/renderer/DataRenderer;->isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v10

    .line 21
    const/4 v12, 0x0

    .line 22
    :goto_0
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ge v12, v0, :cond_7

    .line 33
    .line 34
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v13, v0

    .line 39
    check-cast v13, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;

    .line 40
    .line 41
    invoke-virtual {v9, v13}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->shouldDrawValues(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_0
    invoke-virtual {v9, v13}, Lcom/github/mikephil/charting/renderer/DataRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 53
    .line 54
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    .line 55
    .line 56
    invoke-virtual {v0, v1, v13}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    .line 60
    .line 61
    invoke-interface {v13}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 82
    .line 83
    iget v5, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 84
    .line 85
    iget v6, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->max:I

    .line 86
    .line 87
    move-object v2, v13

    .line 88
    invoke-virtual/range {v1 .. v6}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesScatter(Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;FFII)[F

    .line 89
    .line 90
    .line 91
    move-result-object v14

    .line 92
    invoke-interface {v13}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeSize()F

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 97
    .line 98
    .line 99
    move-result v15

    .line 100
    invoke-interface {v13}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getIconsOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(Lcom/github/mikephil/charting/utils/MPPointF;)Lcom/github/mikephil/charting/utils/MPPointF;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    iget v0, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 109
    .line 110
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    iput v0, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 115
    .line 116
    iget v0, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 117
    .line 118
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iput v0, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 123
    .line 124
    const/4 v7, 0x0

    .line 125
    :goto_1
    array-length v0, v14

    .line 126
    if-ge v7, v0, :cond_1

    .line 127
    .line 128
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 129
    .line 130
    aget v1, v14, v7

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_2

    .line 137
    .line 138
    :cond_1
    move-object v11, v8

    .line 139
    goto/16 :goto_4

    .line 140
    .line 141
    :cond_2
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 142
    .line 143
    aget v1, v14, v7

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_3

    .line 150
    .line 151
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 152
    .line 153
    add-int/lit8 v16, v7, 0x1

    .line 154
    .line 155
    aget v1, v14, v16

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_4

    .line 162
    .line 163
    :cond_3
    move/from16 v20, v7

    .line 164
    .line 165
    move-object v11, v8

    .line 166
    goto :goto_3

    .line 167
    :cond_4
    div-int/lit8 v0, v7, 0x2

    .line 168
    .line 169
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 170
    .line 171
    iget v1, v1, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 172
    .line 173
    add-int/2addr v1, v0

    .line 174
    invoke-interface {v13, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 175
    .line 176
    .line 177
    move-result-object v17

    .line 178
    invoke-interface {v13}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawValuesEnabled()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_5

    .line 183
    .line 184
    invoke-interface {v13}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    aget v6, v14, v7

    .line 193
    .line 194
    aget v1, v14, v16

    .line 195
    .line 196
    sub-float v18, v1, v15

    .line 197
    .line 198
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 199
    .line 200
    iget v1, v1, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 201
    .line 202
    add-int/2addr v0, v1

    .line 203
    invoke-interface {v13, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueTextColor(I)I

    .line 204
    .line 205
    .line 206
    move-result v19

    .line 207
    move-object/from16 v0, p0

    .line 208
    .line 209
    move-object/from16 v1, p1

    .line 210
    .line 211
    move-object/from16 v4, v17

    .line 212
    .line 213
    move v5, v12

    .line 214
    move/from16 v20, v7

    .line 215
    .line 216
    move/from16 v7, v18

    .line 217
    .line 218
    move-object v11, v8

    .line 219
    move/from16 v8, v19

    .line 220
    .line 221
    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_5
    move/from16 v20, v7

    .line 226
    .line 227
    move-object v11, v8

    .line 228
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-eqz v0, :cond_6

    .line 233
    .line 234
    invoke-interface {v13}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawIconsEnabled()Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_6

    .line 239
    .line 240
    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    aget v0, v14, v20

    .line 245
    .line 246
    iget v1, v11, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 247
    .line 248
    add-float/2addr v0, v1

    .line 249
    float-to-int v3, v0

    .line 250
    aget v0, v14, v16

    .line 251
    .line 252
    iget v1, v11, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 253
    .line 254
    add-float/2addr v0, v1

    .line 255
    float-to-int v4, v0

    .line 256
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    move-object/from16 v1, p1

    .line 265
    .line 266
    invoke-static/range {v1 .. v6}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 267
    .line 268
    .line 269
    :cond_6
    :goto_3
    add-int/lit8 v7, v20, 0x2

    .line 270
    .line 271
    move-object v8, v11

    .line 272
    goto/16 :goto_1

    .line 273
    .line 274
    :goto_4
    invoke-static {v11}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 275
    .line 276
    .line 277
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_7
    return-void
.end method

.method public initBuffers()V
    .locals 0

    return-void
.end method
