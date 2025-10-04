.class public Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;
.source "SourceFile"


# instance fields
.field private _hsvBuffer:[F

.field protected mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

.field private pointBuffer:[F

.field private sizeBuffer:[F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x4

    .line 5
    new-array p2, p2, [F

    .line 6
    .line 7
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    .line 8
    .line 9
    const/4 p2, 0x2

    .line 10
    new-array p2, p2, [F

    .line 11
    .line 12
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 13
    .line 14
    const/4 p2, 0x3

    .line 15
    new-array p2, p2, [F

    .line 16
    .line 17
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    .line 18
    .line 19
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 22
    .line 23
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 29
    .line 30
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 36
    .line 37
    const/high16 p2, 0x3fc00000    # 1.5f

    .line 38
    .line 39
    invoke-static {p2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

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
    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;

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
    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    .line 2
    .line 3
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    .line 20
    .line 21
    invoke-virtual {v2, v3, p2}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    aput v3, v2, v4

    .line 29
    .line 30
    const/high16 v3, 0x3f800000    # 1.0f

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    aput v3, v2, v5

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->isNormalizeSizeEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    .line 43
    .line 44
    aget v5, v3, v5

    .line 45
    .line 46
    aget v3, v3, v4

    .line 47
    .line 48
    sub-float/2addr v5, v3

    .line 49
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 54
    .line 55
    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    sub-float/2addr v5, v6

    .line 66
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 75
    .line 76
    iget v5, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 77
    .line 78
    :goto_0
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 79
    .line 80
    iget v7, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    .line 81
    .line 82
    iget v6, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 83
    .line 84
    add-int/2addr v7, v6

    .line 85
    if-gt v5, v7, :cond_4

    .line 86
    .line 87
    invoke-interface {p2, v5}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 92
    .line 93
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 94
    .line 95
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    aput v8, v7, v4

    .line 100
    .line 101
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 102
    .line 103
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    mul-float v8, v8, v1

    .line 108
    .line 109
    const/4 v9, 0x1

    .line 110
    aput v8, v7, v9

    .line 111
    .line 112
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 113
    .line 114
    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getMaxSize()F

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    invoke-virtual {p0, v7, v8, v3, v2}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->getShapeSize(FFFZ)F

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    const/high16 v8, 0x40000000    # 2.0f

    .line 130
    .line 131
    div-float/2addr v7, v8

    .line 132
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 133
    .line 134
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 135
    .line 136
    aget v10, v10, v9

    .line 137
    .line 138
    add-float/2addr v10, v7

    .line 139
    invoke-virtual {v8, v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-eqz v8, :cond_3

    .line 144
    .line 145
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 146
    .line 147
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 148
    .line 149
    aget v10, v10, v9

    .line 150
    .line 151
    sub-float/2addr v10, v7

    .line 152
    invoke-virtual {v8, v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    if-nez v8, :cond_0

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_0
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 160
    .line 161
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 162
    .line 163
    aget v10, v10, v4

    .line 164
    .line 165
    add-float/2addr v10, v7

    .line 166
    invoke-virtual {v8, v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    if-nez v8, :cond_1

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_1
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 174
    .line 175
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 176
    .line 177
    aget v10, v10, v4

    .line 178
    .line 179
    sub-float/2addr v10, v7

    .line 180
    invoke-virtual {v8, v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-nez v8, :cond_2

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_2
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    float-to-int v6, v6

    .line 192
    invoke-interface {p2, v6}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColor(I)I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 197
    .line 198
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    .line 200
    .line 201
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 202
    .line 203
    aget v8, v6, v4

    .line 204
    .line 205
    aget v6, v6, v9

    .line 206
    .line 207
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 208
    .line 209
    invoke-virtual {p1, v8, v6, v7, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 210
    .line 211
    .line 212
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :cond_4
    :goto_2
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    .line 6
    .line 7
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    array-length v4, v1

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    :goto_0
    if-ge v6, v4, :cond_7

    .line 21
    .line 22
    aget-object v7, v1, v6

    .line 23
    .line 24
    invoke-virtual {v7}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    check-cast v8, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;

    .line 33
    .line 34
    if-eqz v8, :cond_0

    .line 35
    .line 36
    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isHighlightEnabled()Z

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    if-nez v9, :cond_1

    .line 41
    .line 42
    :cond_0
    :goto_1
    move-object/from16 v11, p1

    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_1
    invoke-virtual {v7}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    invoke-virtual {v7}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    invoke-interface {v8, v9, v10}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    check-cast v9, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 59
    .line 60
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    invoke-virtual {v7}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    cmpl-float v10, v10, v11

    .line 69
    .line 70
    if-eqz v10, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v0, v9, v8}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)Z

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    if-nez v10, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    .line 81
    .line 82
    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    invoke-interface {v10, v11}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    .line 91
    .line 92
    const/4 v12, 0x0

    .line 93
    aput v12, v11, v5

    .line 94
    .line 95
    const/high16 v12, 0x3f800000    # 1.0f

    .line 96
    .line 97
    const/4 v13, 0x2

    .line 98
    aput v12, v11, v13

    .line 99
    .line 100
    invoke-virtual {v10, v11}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->isNormalizeSizeEnabled()Z

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    .line 108
    .line 109
    aget v14, v12, v13

    .line 110
    .line 111
    aget v12, v12, v5

    .line 112
    .line 113
    sub-float/2addr v14, v12

    .line 114
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 119
    .line 120
    invoke-virtual {v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 125
    .line 126
    invoke-virtual {v15}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    sub-float/2addr v14, v15

    .line 131
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    invoke-static {v14, v12}, Ljava/lang/Math;->min(FF)F

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 140
    .line 141
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    aput v15, v14, v5

    .line 146
    .line 147
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 148
    .line 149
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 150
    .line 151
    .line 152
    move-result v15

    .line 153
    mul-float v15, v15, v3

    .line 154
    .line 155
    const/16 v16, 0x1

    .line 156
    .line 157
    aput v15, v14, v16

    .line 158
    .line 159
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 160
    .line 161
    invoke-virtual {v10, v14}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 162
    .line 163
    .line 164
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 165
    .line 166
    aget v14, v10, v5

    .line 167
    .line 168
    aget v10, v10, v16

    .line 169
    .line 170
    invoke-virtual {v7, v14, v10}, Lcom/github/mikephil/charting/highlight/Highlight;->setDraw(FF)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getMaxSize()F

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    invoke-virtual {v0, v7, v10, v12, v11}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->getShapeSize(FFFZ)F

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    const/high16 v10, 0x40000000    # 2.0f

    .line 186
    .line 187
    div-float/2addr v7, v10

    .line 188
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 189
    .line 190
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 191
    .line 192
    aget v11, v11, v16

    .line 193
    .line 194
    add-float/2addr v11, v7

    .line 195
    invoke-virtual {v10, v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    if-eqz v10, :cond_0

    .line 200
    .line 201
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 202
    .line 203
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 204
    .line 205
    aget v11, v11, v16

    .line 206
    .line 207
    sub-float/2addr v11, v7

    .line 208
    invoke-virtual {v10, v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    .line 209
    .line 210
    .line 211
    move-result v10

    .line 212
    if-nez v10, :cond_4

    .line 213
    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    :cond_4
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 217
    .line 218
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 219
    .line 220
    aget v11, v11, v5

    .line 221
    .line 222
    add-float/2addr v11, v7

    .line 223
    invoke-virtual {v10, v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    if-nez v10, :cond_5

    .line 228
    .line 229
    goto/16 :goto_1

    .line 230
    .line 231
    :cond_5
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 232
    .line 233
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 234
    .line 235
    aget v11, v11, v5

    .line 236
    .line 237
    sub-float/2addr v11, v7

    .line 238
    invoke-virtual {v10, v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    if-nez v10, :cond_6

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_6
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    float-to-int v9, v9

    .line 250
    invoke-interface {v8, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColor(I)I

    .line 251
    .line 252
    .line 253
    move-result v9

    .line 254
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    .line 255
    .line 256
    .line 257
    move-result v10

    .line 258
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    .line 259
    .line 260
    .line 261
    move-result v11

    .line 262
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    .line 263
    .line 264
    .line 265
    move-result v12

    .line 266
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    .line 267
    .line 268
    invoke-static {v10, v11, v12, v14}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 269
    .line 270
    .line 271
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    .line 272
    .line 273
    aget v11, v10, v13

    .line 274
    .line 275
    const/high16 v12, 0x3f000000    # 0.5f

    .line 276
    .line 277
    mul-float v11, v11, v12

    .line 278
    .line 279
    aput v11, v10, v13

    .line 280
    .line 281
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    .line 286
    .line 287
    invoke-static {v9, v10}, Landroid/graphics/Color;->HSVToColor(I[F)I

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 292
    .line 293
    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    .line 295
    .line 296
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 297
    .line 298
    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getHighlightCircleWidth()F

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 303
    .line 304
    .line 305
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 306
    .line 307
    aget v9, v8, v5

    .line 308
    .line 309
    aget v8, v8, v16

    .line 310
    .line 311
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 312
    .line 313
    move-object/from16 v11, p1

    .line 314
    .line 315
    invoke-virtual {v11, v9, v8, v7, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 316
    .line 317
    .line 318
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :cond_7
    :goto_3
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 23

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    const/4 v10, 0x2

    .line 4
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    .line 14
    .line 15
    invoke-virtual {v9, v1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_9

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v11

    .line 25
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 26
    .line 27
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v2, v10, [J

    .line 30
    .line 31
    fill-array-data v2, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    int-to-float v12, v0

    .line 46
    const/4 v14, 0x0

    .line 47
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ge v14, v0, :cond_9

    .line 52
    .line 53
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    move-object v15, v0

    .line 58
    check-cast v15, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;

    .line 59
    .line 60
    invoke-virtual {v9, v15}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->shouldDrawValues(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    goto/16 :goto_6

    .line 67
    .line 68
    :cond_1
    invoke-virtual {v9, v15}, Lcom/github/mikephil/charting/renderer/DataRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/high16 v1, 0x3f800000    # 1.0f

    .line 78
    .line 79
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget-object v2, v9, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    iget-object v3, v9, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 95
    .line 96
    iget-object v4, v9, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    .line 97
    .line 98
    invoke-virtual {v3, v4, v15}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 99
    .line 100
    .line 101
    iget-object v3, v9, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    .line 102
    .line 103
    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iget-object v4, v9, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 112
    .line 113
    iget v5, v4, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 114
    .line 115
    iget v4, v4, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->max:I

    .line 116
    .line 117
    invoke-virtual {v3, v15, v2, v5, v4}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesBubble(Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;FII)[F

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    cmpl-float v1, v0, v1

    .line 122
    .line 123
    if-nez v1, :cond_2

    .line 124
    .line 125
    move/from16 v16, v2

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    move/from16 v16, v0

    .line 129
    .line 130
    :goto_1
    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getIconsOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(Lcom/github/mikephil/charting/utils/MPPointF;)Lcom/github/mikephil/charting/utils/MPPointF;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    iget v0, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 139
    .line 140
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    iput v0, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 145
    .line 146
    iget v0, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 147
    .line 148
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    iput v0, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 153
    .line 154
    const/4 v6, 0x0

    .line 155
    :goto_2
    array-length v0, v8

    .line 156
    if-ge v6, v0, :cond_3

    .line 157
    .line 158
    div-int/lit8 v0, v6, 0x2

    .line 159
    .line 160
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 161
    .line 162
    iget v1, v1, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 163
    .line 164
    add-int/2addr v1, v0

    .line 165
    invoke-interface {v15, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueTextColor(I)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    const/high16 v2, 0x437f0000    # 255.0f

    .line 170
    .line 171
    mul-float v2, v2, v16

    .line 172
    .line 173
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 190
    .line 191
    .line 192
    move-result v17

    .line 193
    aget v5, v8, v6

    .line 194
    .line 195
    add-int/lit8 v1, v6, 0x1

    .line 196
    .line 197
    aget v4, v8, v1

    .line 198
    .line 199
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 200
    .line 201
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-nez v1, :cond_4

    .line 206
    .line 207
    :cond_3
    move-object v13, v7

    .line 208
    goto/16 :goto_5

    .line 209
    .line 210
    :cond_4
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 211
    .line 212
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_5

    .line 217
    .line 218
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 219
    .line 220
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-nez v1, :cond_6

    .line 225
    .line 226
    :cond_5
    move/from16 v22, v6

    .line 227
    .line 228
    move-object v13, v7

    .line 229
    move-object/from16 v19, v8

    .line 230
    .line 231
    goto/16 :goto_4

    .line 232
    .line 233
    :cond_6
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 234
    .line 235
    iget v1, v1, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 236
    .line 237
    add-int/2addr v0, v1

    .line 238
    invoke-interface {v15, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    move-object/from16 v18, v0

    .line 243
    .line 244
    check-cast v18, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 245
    .line 246
    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawValuesEnabled()Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_7

    .line 251
    .line 252
    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    const/high16 v0, 0x3f000000    # 0.5f

    .line 261
    .line 262
    mul-float v0, v0, v12

    .line 263
    .line 264
    add-float v19, v0, v4

    .line 265
    .line 266
    move-object/from16 v0, p0

    .line 267
    .line 268
    move-object/from16 v1, p1

    .line 269
    .line 270
    move/from16 v20, v4

    .line 271
    .line 272
    move-object/from16 v4, v18

    .line 273
    .line 274
    move/from16 v21, v5

    .line 275
    .line 276
    move v5, v14

    .line 277
    move/from16 v22, v6

    .line 278
    .line 279
    move/from16 v6, v21

    .line 280
    .line 281
    move-object v13, v7

    .line 282
    move/from16 v7, v19

    .line 283
    .line 284
    move-object/from16 v19, v8

    .line 285
    .line 286
    move/from16 v8, v17

    .line 287
    .line 288
    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_7
    move/from16 v20, v4

    .line 293
    .line 294
    move/from16 v21, v5

    .line 295
    .line 296
    move/from16 v22, v6

    .line 297
    .line 298
    move-object v13, v7

    .line 299
    move-object/from16 v19, v8

    .line 300
    .line 301
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    if-eqz v0, :cond_8

    .line 306
    .line 307
    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawIconsEnabled()Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_8

    .line 312
    .line 313
    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    iget v0, v13, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 318
    .line 319
    add-float v5, v21, v0

    .line 320
    .line 321
    float-to-int v3, v5

    .line 322
    iget v0, v13, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 323
    .line 324
    add-float v4, v20, v0

    .line 325
    .line 326
    float-to-int v4, v4

    .line 327
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 328
    .line 329
    .line 330
    move-result v5

    .line 331
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    move-object/from16 v1, p1

    .line 336
    .line 337
    invoke-static/range {v1 .. v6}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 338
    .line 339
    .line 340
    :cond_8
    :goto_4
    add-int/lit8 v6, v22, 0x2

    .line 341
    .line 342
    move-object v7, v13

    .line 343
    move-object/from16 v8, v19

    .line 344
    .line 345
    goto/16 :goto_2

    .line 346
    .line 347
    :goto_5
    invoke-static {v13}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 348
    .line 349
    .line 350
    :goto_6
    add-int/lit8 v14, v14, 0x1

    .line 351
    .line 352
    goto/16 :goto_0

    .line 353
    .line 354
    :cond_9
    return-void

    .line 355
    :array_0
    .array-data 8
        -0x53732399868313c5L    # -4.323762367823792E-94
        -0xb98231b7c4bb928L    # -5.467249662872692E252
    .end array-data
.end method

.method public getShapeSize(FFFZ)F
    .locals 0

    .line 1
    if-eqz p4, :cond_1

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    cmpl-float p4, p2, p4

    .line 5
    .line 6
    if-nez p4, :cond_0

    .line 7
    .line 8
    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    div-float/2addr p1, p2

    .line 12
    float-to-double p1, p1

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    double-to-float p1, p1

    .line 18
    :cond_1
    :goto_0
    mul-float p3, p3, p1

    .line 19
    .line 20
    return p3
.end method

.method public initBuffers()V
    .locals 0

    return-void
.end method
