.class public Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;
.source "SourceFile"


# instance fields
.field protected mBarBorderPaint:Landroid/graphics/Paint;

.field protected mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

.field protected mBarRect:Landroid/graphics/RectF;

.field private mBarShadowRectBuffer:Landroid/graphics/RectF;

.field protected mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

.field protected mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    .line 10
    .line 11
    new-instance p2, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 19
    .line 20
    new-instance p1, Landroid/graphics/Paint;

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 27
    .line 28
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 29
    .line 30
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 44
    .line 45
    const/16 v0, 0x78

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    .line 56
    .line 57
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Landroid/graphics/Paint;

    .line 61
    .line 62
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    .line 66
    .line 67
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isVisible()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p1, v2, v1}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 8
    .line 9
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    .line 18
    .line 19
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderColor()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderWidth()F

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    .line 38
    .line 39
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderWidth()F

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x1

    .line 46
    cmpl-float v4, v4, v5

    .line 47
    .line 48
    if-lez v4, :cond_0

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v4, 0x0

    .line 53
    :goto_0
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 54
    .line 55
    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 60
    .line 61
    invoke-virtual {v8}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 66
    .line 67
    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawBarShadowEnabled()Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_2

    .line 72
    .line 73
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    .line 74
    .line 75
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarShadowColor()I

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    .line 81
    .line 82
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 83
    .line 84
    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    const/high16 v10, 0x40000000    # 2.0f

    .line 93
    .line 94
    div-float/2addr v9, v10

    .line 95
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    int-to-float v10, v10

    .line 100
    mul-float v10, v10, v5

    .line 101
    .line 102
    float-to-double v10, v10

    .line 103
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 104
    .line 105
    .line 106
    move-result-wide v10

    .line 107
    double-to-int v10, v10

    .line 108
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    const/4 v11, 0x0

    .line 117
    :goto_1
    if-ge v11, v10, :cond_2

    .line 118
    .line 119
    invoke-interface {v1, v11}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    check-cast v12, Lcom/github/mikephil/charting/data/BarEntry;

    .line 124
    .line 125
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 130
    .line 131
    sub-float v14, v12, v9

    .line 132
    .line 133
    iput v14, v13, Landroid/graphics/RectF;->left:F

    .line 134
    .line 135
    add-float/2addr v12, v9

    .line 136
    iput v12, v13, Landroid/graphics/RectF;->right:F

    .line 137
    .line 138
    invoke-virtual {v3, v13}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixel(Landroid/graphics/RectF;)V

    .line 139
    .line 140
    .line 141
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 142
    .line 143
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 144
    .line 145
    iget v13, v13, Landroid/graphics/RectF;->right:F

    .line 146
    .line 147
    invoke-virtual {v12, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    .line 148
    .line 149
    .line 150
    move-result v12

    .line 151
    if-nez v12, :cond_1

    .line 152
    .line 153
    move-object/from16 v15, p1

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_1
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 157
    .line 158
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 159
    .line 160
    iget v13, v13, Landroid/graphics/RectF;->left:F

    .line 161
    .line 162
    invoke-virtual {v12, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    if-nez v12, :cond_3

    .line 167
    .line 168
    :cond_2
    move-object/from16 v15, p1

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_3
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 172
    .line 173
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 174
    .line 175
    invoke-virtual {v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 176
    .line 177
    .line 178
    move-result v13

    .line 179
    iput v13, v12, Landroid/graphics/RectF;->top:F

    .line 180
    .line 181
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 182
    .line 183
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 184
    .line 185
    invoke-virtual {v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    iput v13, v12, Landroid/graphics/RectF;->bottom:F

    .line 190
    .line 191
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 192
    .line 193
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    .line 194
    .line 195
    move-object/from16 v15, p1

    .line 196
    .line 197
    invoke-virtual {v15, v12, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 198
    .line 199
    .line 200
    :goto_2
    add-int/lit8 v11, v11, 0x1

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :goto_3
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 204
    .line 205
    aget-object v9, v9, v2

    .line 206
    .line 207
    invoke-virtual {v9, v5, v8}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->setPhases(FF)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v9, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setDataSet(I)V

    .line 211
    .line 212
    .line 213
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 214
    .line 215
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-interface {v2, v5}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    invoke-virtual {v9, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setInverted(Z)V

    .line 224
    .line 225
    .line 226
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 227
    .line 228
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    invoke-virtual {v9, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setBarWidth(F)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v9, v1}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    .line 240
    .line 241
    .line 242
    iget-object v2, v9, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 243
    .line 244
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 245
    .line 246
    .line 247
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColors()Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-ne v2, v7, :cond_4

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_4
    const/4 v7, 0x0

    .line 259
    :goto_4
    if-eqz v7, :cond_5

    .line 260
    .line 261
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 262
    .line 263
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColor()I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    .line 269
    .line 270
    :cond_5
    :goto_5
    invoke-virtual {v9}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->size()I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-ge v6, v2, :cond_a

    .line 275
    .line 276
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 277
    .line 278
    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 279
    .line 280
    add-int/lit8 v5, v6, 0x2

    .line 281
    .line 282
    aget v3, v3, v5

    .line 283
    .line 284
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-nez v2, :cond_6

    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_6
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 292
    .line 293
    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 294
    .line 295
    aget v3, v3, v6

    .line 296
    .line 297
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    if-nez v2, :cond_7

    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_7
    if-nez v7, :cond_8

    .line 305
    .line 306
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 307
    .line 308
    div-int/lit8 v3, v6, 0x4

    .line 309
    .line 310
    invoke-interface {v1, v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColor(I)I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    .line 316
    .line 317
    :cond_8
    iget-object v2, v9, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 318
    .line 319
    aget v3, v2, v6

    .line 320
    .line 321
    add-int/lit8 v8, v6, 0x1

    .line 322
    .line 323
    aget v16, v2, v8

    .line 324
    .line 325
    aget v17, v2, v5

    .line 326
    .line 327
    add-int/lit8 v10, v6, 0x3

    .line 328
    .line 329
    aget v18, v2, v10

    .line 330
    .line 331
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 332
    .line 333
    move-object/from16 v14, p1

    .line 334
    .line 335
    move v15, v3

    .line 336
    move-object/from16 v19, v2

    .line 337
    .line 338
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 339
    .line 340
    .line 341
    if-eqz v4, :cond_9

    .line 342
    .line 343
    iget-object v2, v9, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 344
    .line 345
    aget v15, v2, v6

    .line 346
    .line 347
    aget v16, v2, v8

    .line 348
    .line 349
    aget v17, v2, v5

    .line 350
    .line 351
    aget v18, v2, v10

    .line 352
    .line 353
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    .line 354
    .line 355
    move-object/from16 v14, p1

    .line 356
    .line 357
    move-object/from16 v19, v2

    .line 358
    .line 359
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 360
    .line 361
    .line 362
    :cond_9
    :goto_6
    add-int/lit8 v6, v6, 0x4

    .line 363
    .line 364
    move-object/from16 v15, p1

    .line 365
    .line 366
    goto :goto_5

    .line 367
    :cond_a
    :goto_7
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    .line 4
    .line 5
    .line 6
    move-result-object v6

    .line 7
    array-length v7, p2

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v8, 0x0

    .line 10
    :goto_0
    if-ge v8, v7, :cond_5

    .line 11
    .line 12
    aget-object v9, p2, v8

    .line 13
    .line 14
    invoke-virtual {v9}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isHighlightEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_0
    invoke-virtual {v9}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v9}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-interface {v0, v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/github/mikephil/charting/data/BarEntry;

    .line 47
    .line 48
    invoke-virtual {p0, v1, v0}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 57
    .line 58
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 67
    .line 68
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;->getHighLightColor()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 76
    .line 77
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getHighLightAlpha()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v9}, Lcom/github/mikephil/charting/highlight/Highlight;->getStackIndex()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-ltz v0, :cond_3

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->isStacked()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 97
    .line 98
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isHighlightFullBarEnabled()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->getPositiveSum()F

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    neg-float v2, v2

    .line 113
    move v3, v2

    .line 114
    move v2, v0

    .line 115
    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->getRanges()[Lcom/github/mikephil/charting/highlight/Range;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v9}, Lcom/github/mikephil/charting/highlight/Highlight;->getStackIndex()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    aget-object v0, v0, v2

    .line 125
    .line 126
    iget v2, v0, Lcom/github/mikephil/charting/highlight/Range;->from:F

    .line 127
    .line 128
    iget v0, v0, Lcom/github/mikephil/charting/highlight/Range;->to:F

    .line 129
    .line 130
    move v3, v0

    .line 131
    goto :goto_1

    .line 132
    :cond_3
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    const/4 v2, 0x0

    .line 137
    move v2, v0

    .line 138
    const/4 v3, 0x0

    .line 139
    :goto_1
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    const/high16 v4, 0x40000000    # 2.0f

    .line 148
    .line 149
    div-float v4, v0, v4

    .line 150
    .line 151
    move-object v0, p0

    .line 152
    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    .line 156
    .line 157
    invoke-virtual {p0, v9, v0}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->setHighlightDrawPos(Lcom/github/mikephil/charting/highlight/Highlight;Landroid/graphics/RectF;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    .line 161
    .line 162
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 163
    .line 164
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 165
    .line 166
    .line 167
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_5
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 36

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    const/4 v10, 0x2

    .line 4
    const/4 v11, 0x1

    .line 5
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 6
    .line 7
    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/renderer/DataRenderer;->isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_24

    .line 12
    .line 13
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v12

    .line 23
    const/high16 v0, 0x40900000    # 4.5f

    .line 24
    .line 25
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 26
    .line 27
    .line 28
    move-result v13

    .line 29
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawValueAboveBarEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v14

    .line 35
    const/4 v8, 0x0

    .line 36
    :goto_0
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-ge v8, v0, :cond_24

    .line 47
    .line 48
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v7, v0

    .line 53
    check-cast v7, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 54
    .line 55
    invoke-virtual {v9, v7}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->shouldDrawValues(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    move/from16 v23, v8

    .line 62
    .line 63
    move-object/from16 v26, v12

    .line 64
    .line 65
    const/4 v0, 0x2

    .line 66
    const/4 v1, 0x1

    .line 67
    goto/16 :goto_1e

    .line 68
    .line 69
    :cond_0
    invoke-virtual {v9, v7}, Lcom/github/mikephil/charting/renderer/DataRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 73
    .line 74
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 83
    .line 84
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v3, v10, [J

    .line 87
    .line 88
    fill-array-data v3, :array_0

    .line 89
    .line 90
    .line 91
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v1, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    int-to-float v1, v1

    .line 103
    if-eqz v14, :cond_1

    .line 104
    .line 105
    neg-float v2, v13

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    add-float v2, v1, v13

    .line 108
    .line 109
    :goto_1
    if-eqz v14, :cond_2

    .line 110
    .line 111
    add-float v3, v1, v13

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    neg-float v3, v13

    .line 115
    :goto_2
    if-eqz v0, :cond_3

    .line 116
    .line 117
    neg-float v0, v2

    .line 118
    sub-float v2, v0, v1

    .line 119
    .line 120
    neg-float v0, v3

    .line 121
    sub-float v3, v0, v1

    .line 122
    .line 123
    :cond_3
    move/from16 v16, v2

    .line 124
    .line 125
    move/from16 v17, v3

    .line 126
    .line 127
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 128
    .line 129
    aget-object v6, v0, v8

    .line 130
    .line 131
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 134
    .line 135
    .line 136
    move-result v18

    .line 137
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getIconsOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(Lcom/github/mikephil/charting/utils/MPPointF;)Lcom/github/mikephil/charting/utils/MPPointF;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    iget v0, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 146
    .line 147
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iput v0, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 152
    .line 153
    iget v0, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 154
    .line 155
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iput v0, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 160
    .line 161
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    const/high16 v19, 0x40000000    # 2.0f

    .line 166
    .line 167
    const/16 v20, 0x0

    .line 168
    .line 169
    if-nez v0, :cond_d

    .line 170
    .line 171
    const/4 v4, 0x0

    .line 172
    :goto_3
    int-to-float v0, v4

    .line 173
    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 174
    .line 175
    array-length v1, v1

    .line 176
    int-to-float v1, v1

    .line 177
    iget-object v2, v9, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 178
    .line 179
    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    mul-float v2, v2, v1

    .line 184
    .line 185
    cmpg-float v0, v0, v2

    .line 186
    .line 187
    if-gez v0, :cond_4

    .line 188
    .line 189
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 190
    .line 191
    aget v1, v0, v4

    .line 192
    .line 193
    add-int/lit8 v2, v4, 0x2

    .line 194
    .line 195
    aget v0, v0, v2

    .line 196
    .line 197
    add-float/2addr v1, v0

    .line 198
    div-float v3, v1, v19

    .line 199
    .line 200
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 201
    .line 202
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_5

    .line 207
    .line 208
    :cond_4
    move-object v15, v5

    .line 209
    move/from16 v23, v8

    .line 210
    .line 211
    goto/16 :goto_9

    .line 212
    .line 213
    :cond_5
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 214
    .line 215
    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 216
    .line 217
    add-int/lit8 v18, v4, 0x1

    .line 218
    .line 219
    aget v1, v1, v18

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_6

    .line 226
    .line 227
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 228
    .line 229
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-nez v0, :cond_7

    .line 234
    .line 235
    :cond_6
    move/from16 v26, v4

    .line 236
    .line 237
    move-object v15, v5

    .line 238
    move-object v11, v6

    .line 239
    move-object/from16 v27, v7

    .line 240
    .line 241
    move/from16 v23, v8

    .line 242
    .line 243
    goto/16 :goto_8

    .line 244
    .line 245
    :cond_7
    div-int/lit8 v0, v4, 0x4

    .line 246
    .line 247
    invoke-interface {v7, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    move-object/from16 v21, v1

    .line 252
    .line 253
    check-cast v21, Lcom/github/mikephil/charting/data/BarEntry;

    .line 254
    .line 255
    invoke-virtual/range {v21 .. v21}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    .line 256
    .line 257
    .line 258
    move-result v22

    .line 259
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawValuesEnabled()Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_9

    .line 264
    .line 265
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    cmpl-float v1, v22, v20

    .line 270
    .line 271
    if-ltz v1, :cond_8

    .line 272
    .line 273
    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 274
    .line 275
    aget v1, v1, v18

    .line 276
    .line 277
    add-float v1, v1, v16

    .line 278
    .line 279
    :goto_4
    move/from16 v23, v1

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_8
    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 283
    .line 284
    add-int/lit8 v23, v4, 0x3

    .line 285
    .line 286
    aget v1, v1, v23

    .line 287
    .line 288
    add-float v1, v1, v17

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :goto_5
    invoke-interface {v7, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueTextColor(I)I

    .line 292
    .line 293
    .line 294
    move-result v24

    .line 295
    move-object/from16 v0, p0

    .line 296
    .line 297
    move-object/from16 v1, p1

    .line 298
    .line 299
    move/from16 v25, v3

    .line 300
    .line 301
    move/from16 v3, v22

    .line 302
    .line 303
    move/from16 v26, v4

    .line 304
    .line 305
    move-object/from16 v4, v21

    .line 306
    .line 307
    move-object v15, v5

    .line 308
    move v5, v8

    .line 309
    move-object v11, v6

    .line 310
    move/from16 v6, v25

    .line 311
    .line 312
    move-object/from16 v27, v7

    .line 313
    .line 314
    move/from16 v7, v23

    .line 315
    .line 316
    move/from16 v23, v8

    .line 317
    .line 318
    move/from16 v8, v24

    .line 319
    .line 320
    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 321
    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_9
    move/from16 v25, v3

    .line 325
    .line 326
    move/from16 v26, v4

    .line 327
    .line 328
    move-object v15, v5

    .line 329
    move-object v11, v6

    .line 330
    move-object/from16 v27, v7

    .line 331
    .line 332
    move/from16 v23, v8

    .line 333
    .line 334
    :goto_6
    invoke-virtual/range {v21 .. v21}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    if-eqz v0, :cond_b

    .line 339
    .line 340
    invoke-interface/range {v27 .. v27}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawIconsEnabled()Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-eqz v0, :cond_b

    .line 345
    .line 346
    invoke-virtual/range {v21 .. v21}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    cmpl-float v0, v22, v20

    .line 351
    .line 352
    if-ltz v0, :cond_a

    .line 353
    .line 354
    iget-object v0, v11, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 355
    .line 356
    aget v0, v0, v18

    .line 357
    .line 358
    add-float v0, v0, v16

    .line 359
    .line 360
    goto :goto_7

    .line 361
    :cond_a
    iget-object v0, v11, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 362
    .line 363
    add-int/lit8 v4, v26, 0x3

    .line 364
    .line 365
    aget v0, v0, v4

    .line 366
    .line 367
    add-float v0, v0, v17

    .line 368
    .line 369
    :goto_7
    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 370
    .line 371
    add-float v3, v25, v1

    .line 372
    .line 373
    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 374
    .line 375
    add-float/2addr v0, v1

    .line 376
    float-to-int v3, v3

    .line 377
    float-to-int v4, v0

    .line 378
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 383
    .line 384
    .line 385
    move-result v6

    .line 386
    move-object/from16 v1, p1

    .line 387
    .line 388
    invoke-static/range {v1 .. v6}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 389
    .line 390
    .line 391
    :cond_b
    :goto_8
    add-int/lit8 v4, v26, 0x4

    .line 392
    .line 393
    move-object v6, v11

    .line 394
    move-object v5, v15

    .line 395
    move/from16 v8, v23

    .line 396
    .line 397
    move-object/from16 v7, v27

    .line 398
    .line 399
    const/4 v11, 0x1

    .line 400
    goto/16 :goto_3

    .line 401
    .line 402
    :cond_c
    :goto_9
    move-object/from16 v26, v12

    .line 403
    .line 404
    const/4 v0, 0x2

    .line 405
    const/4 v1, 0x1

    .line 406
    goto/16 :goto_1d

    .line 407
    .line 408
    :cond_d
    move-object v15, v5

    .line 409
    move-object v11, v6

    .line 410
    move-object/from16 v27, v7

    .line 411
    .line 412
    move/from16 v23, v8

    .line 413
    .line 414
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 415
    .line 416
    invoke-interface/range {v27 .. v27}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 421
    .line 422
    .line 423
    move-result-object v8

    .line 424
    const/4 v7, 0x0

    .line 425
    const/16 v21, 0x0

    .line 426
    .line 427
    :goto_a
    int-to-float v0, v7

    .line 428
    invoke-interface/range {v27 .. v27}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    int-to-float v1, v1

    .line 433
    iget-object v2, v9, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 434
    .line 435
    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    mul-float v2, v2, v1

    .line 440
    .line 441
    cmpg-float v0, v0, v2

    .line 442
    .line 443
    if-gez v0, :cond_c

    .line 444
    .line 445
    move-object/from16 v6, v27

    .line 446
    .line 447
    invoke-interface {v6, v7}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    move-object/from16 v22, v0

    .line 452
    .line 453
    check-cast v22, Lcom/github/mikephil/charting/data/BarEntry;

    .line 454
    .line 455
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    iget-object v0, v11, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 460
    .line 461
    aget v1, v0, v21

    .line 462
    .line 463
    add-int/lit8 v2, v21, 0x2

    .line 464
    .line 465
    aget v0, v0, v2

    .line 466
    .line 467
    add-float/2addr v1, v0

    .line 468
    div-float v4, v1, v19

    .line 469
    .line 470
    invoke-interface {v6, v7}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueTextColor(I)I

    .line 471
    .line 472
    .line 473
    move-result v24

    .line 474
    if-nez v5, :cond_15

    .line 475
    .line 476
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 477
    .line 478
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-nez v0, :cond_e

    .line 483
    .line 484
    goto :goto_9

    .line 485
    :cond_e
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 486
    .line 487
    iget-object v1, v11, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 488
    .line 489
    const/4 v2, 0x1

    .line 490
    add-int/lit8 v25, v21, 0x1

    .line 491
    .line 492
    aget v1, v1, v25

    .line 493
    .line 494
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    if-eqz v0, :cond_f

    .line 499
    .line 500
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 501
    .line 502
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    if-nez v0, :cond_10

    .line 507
    .line 508
    :cond_f
    move-object/from16 v28, v6

    .line 509
    .line 510
    move/from16 v29, v7

    .line 511
    .line 512
    move-object/from16 v26, v12

    .line 513
    .line 514
    move-object v12, v8

    .line 515
    goto/16 :goto_f

    .line 516
    .line 517
    :cond_10
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawValuesEnabled()Z

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    if-eqz v0, :cond_12

    .line 522
    .line 523
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    iget-object v0, v11, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 532
    .line 533
    aget v0, v0, v25

    .line 534
    .line 535
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    cmpl-float v1, v1, v20

    .line 540
    .line 541
    if-ltz v1, :cond_11

    .line 542
    .line 543
    move/from16 v1, v16

    .line 544
    .line 545
    goto :goto_b

    .line 546
    :cond_11
    move/from16 v1, v17

    .line 547
    .line 548
    :goto_b
    add-float v26, v0, v1

    .line 549
    .line 550
    move-object/from16 v0, p0

    .line 551
    .line 552
    move-object/from16 v1, p1

    .line 553
    .line 554
    move/from16 v27, v4

    .line 555
    .line 556
    move-object/from16 v4, v22

    .line 557
    .line 558
    move-object v10, v5

    .line 559
    move/from16 v5, v23

    .line 560
    .line 561
    move-object/from16 v28, v6

    .line 562
    .line 563
    move/from16 v6, v27

    .line 564
    .line 565
    move/from16 v29, v7

    .line 566
    .line 567
    move/from16 v7, v26

    .line 568
    .line 569
    move-object/from16 v26, v12

    .line 570
    .line 571
    move-object v12, v8

    .line 572
    move/from16 v8, v24

    .line 573
    .line 574
    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 575
    .line 576
    .line 577
    goto :goto_c

    .line 578
    :cond_12
    move/from16 v27, v4

    .line 579
    .line 580
    move-object v10, v5

    .line 581
    move-object/from16 v28, v6

    .line 582
    .line 583
    move/from16 v29, v7

    .line 584
    .line 585
    move-object/from16 v26, v12

    .line 586
    .line 587
    move-object v12, v8

    .line 588
    :goto_c
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    if-eqz v0, :cond_14

    .line 593
    .line 594
    invoke-interface/range {v28 .. v28}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawIconsEnabled()Z

    .line 595
    .line 596
    .line 597
    move-result v0

    .line 598
    if-eqz v0, :cond_14

    .line 599
    .line 600
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    iget-object v0, v11, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 605
    .line 606
    aget v0, v0, v25

    .line 607
    .line 608
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    .line 609
    .line 610
    .line 611
    move-result v1

    .line 612
    cmpl-float v1, v1, v20

    .line 613
    .line 614
    if-ltz v1, :cond_13

    .line 615
    .line 616
    move/from16 v1, v16

    .line 617
    .line 618
    goto :goto_d

    .line 619
    :cond_13
    move/from16 v1, v17

    .line 620
    .line 621
    :goto_d
    add-float/2addr v0, v1

    .line 622
    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 623
    .line 624
    move/from16 v8, v27

    .line 625
    .line 626
    add-float v4, v8, v1

    .line 627
    .line 628
    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 629
    .line 630
    add-float/2addr v0, v1

    .line 631
    float-to-int v3, v4

    .line 632
    float-to-int v4, v0

    .line 633
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 634
    .line 635
    .line 636
    move-result v5

    .line 637
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 638
    .line 639
    .line 640
    move-result v6

    .line 641
    move-object/from16 v1, p1

    .line 642
    .line 643
    invoke-static/range {v1 .. v6}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 644
    .line 645
    .line 646
    :cond_14
    :goto_e
    const/4 v0, 0x2

    .line 647
    goto/16 :goto_1a

    .line 648
    .line 649
    :goto_f
    move-object v8, v12

    .line 650
    move-object/from16 v12, v26

    .line 651
    .line 652
    move-object/from16 v27, v28

    .line 653
    .line 654
    move/from16 v7, v29

    .line 655
    .line 656
    :goto_10
    const/4 v10, 0x2

    .line 657
    goto/16 :goto_a

    .line 658
    .line 659
    :cond_15
    move-object v10, v5

    .line 660
    move-object/from16 v28, v6

    .line 661
    .line 662
    move/from16 v29, v7

    .line 663
    .line 664
    move-object/from16 v26, v12

    .line 665
    .line 666
    move-object v12, v8

    .line 667
    move v8, v4

    .line 668
    array-length v0, v10

    .line 669
    const/4 v1, 0x2

    .line 670
    mul-int/lit8 v7, v0, 0x2

    .line 671
    .line 672
    new-array v6, v7, [F

    .line 673
    .line 674
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    .line 675
    .line 676
    .line 677
    move-result v0

    .line 678
    neg-float v0, v0

    .line 679
    move/from16 v25, v0

    .line 680
    .line 681
    const/4 v0, 0x0

    .line 682
    const/4 v1, 0x0

    .line 683
    const/16 v27, 0x0

    .line 684
    .line 685
    :goto_11
    if-ge v0, v7, :cond_19

    .line 686
    .line 687
    aget v2, v10, v1

    .line 688
    .line 689
    cmpl-float v3, v2, v20

    .line 690
    .line 691
    if-nez v3, :cond_17

    .line 692
    .line 693
    cmpl-float v4, v27, v20

    .line 694
    .line 695
    if-eqz v4, :cond_16

    .line 696
    .line 697
    cmpl-float v4, v25, v20

    .line 698
    .line 699
    if-nez v4, :cond_17

    .line 700
    .line 701
    :cond_16
    const/4 v3, 0x1

    .line 702
    move/from16 v35, v25

    .line 703
    .line 704
    move/from16 v25, v2

    .line 705
    .line 706
    move/from16 v2, v35

    .line 707
    .line 708
    goto :goto_13

    .line 709
    :cond_17
    if-ltz v3, :cond_18

    .line 710
    .line 711
    add-float v27, v27, v2

    .line 712
    .line 713
    move/from16 v2, v25

    .line 714
    .line 715
    move/from16 v25, v27

    .line 716
    .line 717
    :goto_12
    const/4 v3, 0x1

    .line 718
    goto :goto_13

    .line 719
    :cond_18
    sub-float v2, v25, v2

    .line 720
    .line 721
    goto :goto_12

    .line 722
    :goto_13
    add-int/lit8 v4, v0, 0x1

    .line 723
    .line 724
    mul-float v25, v25, v18

    .line 725
    .line 726
    aput v25, v6, v4

    .line 727
    .line 728
    const/4 v4, 0x2

    .line 729
    add-int/2addr v0, v4

    .line 730
    add-int/2addr v1, v3

    .line 731
    move/from16 v25, v2

    .line 732
    .line 733
    goto :goto_11

    .line 734
    :cond_19
    const/4 v4, 0x2

    .line 735
    invoke-virtual {v12, v6}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 736
    .line 737
    .line 738
    const/4 v5, 0x0

    .line 739
    :goto_14
    if-ge v5, v7, :cond_14

    .line 740
    .line 741
    div-int/lit8 v0, v5, 0x2

    .line 742
    .line 743
    aget v1, v10, v0

    .line 744
    .line 745
    cmpl-float v2, v1, v20

    .line 746
    .line 747
    if-nez v2, :cond_1a

    .line 748
    .line 749
    cmpl-float v2, v25, v20

    .line 750
    .line 751
    if-nez v2, :cond_1a

    .line 752
    .line 753
    cmpl-float v2, v27, v20

    .line 754
    .line 755
    if-gtz v2, :cond_1b

    .line 756
    .line 757
    :cond_1a
    cmpg-float v1, v1, v20

    .line 758
    .line 759
    if-gez v1, :cond_1c

    .line 760
    .line 761
    :cond_1b
    const/4 v1, 0x1

    .line 762
    const/4 v2, 0x1

    .line 763
    goto :goto_15

    .line 764
    :cond_1c
    const/4 v1, 0x1

    .line 765
    const/4 v2, 0x0

    .line 766
    :goto_15
    add-int/lit8 v3, v5, 0x1

    .line 767
    .line 768
    aget v1, v6, v3

    .line 769
    .line 770
    if-eqz v2, :cond_1d

    .line 771
    .line 772
    move/from16 v2, v17

    .line 773
    .line 774
    goto :goto_16

    .line 775
    :cond_1d
    move/from16 v2, v16

    .line 776
    .line 777
    :goto_16
    add-float v4, v1, v2

    .line 778
    .line 779
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 780
    .line 781
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    .line 782
    .line 783
    .line 784
    move-result v1

    .line 785
    if-nez v1, :cond_1e

    .line 786
    .line 787
    goto/16 :goto_e

    .line 788
    .line 789
    :cond_1e
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 790
    .line 791
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    .line 792
    .line 793
    .line 794
    move-result v1

    .line 795
    if-eqz v1, :cond_1f

    .line 796
    .line 797
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 798
    .line 799
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    .line 800
    .line 801
    .line 802
    move-result v1

    .line 803
    if-nez v1, :cond_21

    .line 804
    .line 805
    :cond_1f
    move/from16 v31, v5

    .line 806
    .line 807
    move-object/from16 v32, v6

    .line 808
    .line 809
    move/from16 v33, v7

    .line 810
    .line 811
    move/from16 v34, v8

    .line 812
    .line 813
    :cond_20
    :goto_17
    const/4 v0, 0x2

    .line 814
    goto :goto_19

    .line 815
    :cond_21
    invoke-interface/range {v28 .. v28}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawValuesEnabled()Z

    .line 816
    .line 817
    .line 818
    move-result v1

    .line 819
    if-eqz v1, :cond_22

    .line 820
    .line 821
    invoke-interface/range {v28 .. v28}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    .line 822
    .line 823
    .line 824
    move-result-object v2

    .line 825
    aget v3, v10, v0

    .line 826
    .line 827
    move-object/from16 v0, p0

    .line 828
    .line 829
    move-object/from16 v1, p1

    .line 830
    .line 831
    move/from16 v30, v4

    .line 832
    .line 833
    move-object/from16 v4, v22

    .line 834
    .line 835
    move/from16 v31, v5

    .line 836
    .line 837
    move/from16 v5, v23

    .line 838
    .line 839
    move-object/from16 v32, v6

    .line 840
    .line 841
    move v6, v8

    .line 842
    move/from16 v33, v7

    .line 843
    .line 844
    move/from16 v7, v30

    .line 845
    .line 846
    move/from16 v34, v8

    .line 847
    .line 848
    move/from16 v8, v24

    .line 849
    .line 850
    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 851
    .line 852
    .line 853
    goto :goto_18

    .line 854
    :cond_22
    move/from16 v30, v4

    .line 855
    .line 856
    move/from16 v31, v5

    .line 857
    .line 858
    move-object/from16 v32, v6

    .line 859
    .line 860
    move/from16 v33, v7

    .line 861
    .line 862
    move/from16 v34, v8

    .line 863
    .line 864
    :goto_18
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    if-eqz v0, :cond_20

    .line 869
    .line 870
    invoke-interface/range {v28 .. v28}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawIconsEnabled()Z

    .line 871
    .line 872
    .line 873
    move-result v0

    .line 874
    if-eqz v0, :cond_20

    .line 875
    .line 876
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 877
    .line 878
    .line 879
    move-result-object v2

    .line 880
    iget v0, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 881
    .line 882
    add-float v4, v34, v0

    .line 883
    .line 884
    float-to-int v3, v4

    .line 885
    iget v0, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 886
    .line 887
    add-float v4, v30, v0

    .line 888
    .line 889
    float-to-int v4, v4

    .line 890
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 891
    .line 892
    .line 893
    move-result v5

    .line 894
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 895
    .line 896
    .line 897
    move-result v6

    .line 898
    move-object/from16 v1, p1

    .line 899
    .line 900
    invoke-static/range {v1 .. v6}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 901
    .line 902
    .line 903
    goto :goto_17

    .line 904
    :goto_19
    add-int/lit8 v5, v31, 0x2

    .line 905
    .line 906
    move-object/from16 v6, v32

    .line 907
    .line 908
    move/from16 v7, v33

    .line 909
    .line 910
    move/from16 v8, v34

    .line 911
    .line 912
    const/4 v4, 0x2

    .line 913
    goto/16 :goto_14

    .line 914
    .line 915
    :goto_1a
    if-nez v10, :cond_23

    .line 916
    .line 917
    add-int/lit8 v21, v21, 0x4

    .line 918
    .line 919
    :goto_1b
    const/4 v1, 0x1

    .line 920
    goto :goto_1c

    .line 921
    :cond_23
    array-length v1, v10

    .line 922
    mul-int/lit8 v1, v1, 0x4

    .line 923
    .line 924
    add-int v1, v1, v21

    .line 925
    .line 926
    move/from16 v21, v1

    .line 927
    .line 928
    goto :goto_1b

    .line 929
    :goto_1c
    add-int/lit8 v7, v29, 0x1

    .line 930
    .line 931
    move-object v8, v12

    .line 932
    move-object/from16 v12, v26

    .line 933
    .line 934
    move-object/from16 v27, v28

    .line 935
    .line 936
    goto/16 :goto_10

    .line 937
    .line 938
    :goto_1d
    invoke-static {v15}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 939
    .line 940
    .line 941
    :goto_1e
    add-int/lit8 v8, v23, 0x1

    .line 942
    .line 943
    move-object/from16 v12, v26

    .line 944
    .line 945
    const/4 v10, 0x2

    .line 946
    const/4 v11, 0x1

    .line 947
    goto/16 :goto_0

    .line 948
    .line 949
    :cond_24
    return-void

    .line 950
    nop

    .line 951
    :array_0
    .array-data 8
        -0x3d935b029221ab2aL    # -9.842172515706511E11
        0x5645c78e2a50912cL    # 3.996102637501396E107
    .end array-data
.end method

.method public initBuffers()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v1, v1, [Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 17
    .line 18
    array-length v2, v2

    .line 19
    if-ge v1, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 28
    .line 29
    new-instance v4, Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 30
    .line 31
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    mul-int/lit8 v5, v5, 0x4

    .line 36
    .line 37
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_0

    .line 42
    .line 43
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getStackSize()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const/4 v6, 0x1

    .line 49
    :goto_1
    mul-int v5, v5, v6

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-direct {v4, v5, v6, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;-><init>(IIZ)V

    .line 60
    .line 61
    .line 62
    aput-object v4, v3, v1

    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method

.method public prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V
    .locals 1

    .line 1
    sub-float v0, p1, p4

    .line 2
    .line 3
    add-float/2addr p1, p4

    .line 4
    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-virtual {p4, v0, p2, p1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-virtual {p5, p1, p2}, Lcom/github/mikephil/charting/utils/Transformer;->rectToPixelPhase(Landroid/graphics/RectF;F)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setHighlightDrawPos(Lcom/github/mikephil/charting/highlight/Highlight;Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 6
    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/github/mikephil/charting/highlight/Highlight;->setDraw(FF)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
