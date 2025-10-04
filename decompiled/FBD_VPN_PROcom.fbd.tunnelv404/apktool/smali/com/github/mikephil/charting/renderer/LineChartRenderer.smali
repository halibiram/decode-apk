.class public Lcom/github/mikephil/charting/renderer/LineChartRenderer;
.super Lcom/github/mikephil/charting/renderer/LineRadarRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;
    }
.end annotation


# instance fields
.field protected cubicFillPath:Landroid/graphics/Path;

.field protected cubicPath:Landroid/graphics/Path;

.field protected mBitmapCanvas:Landroid/graphics/Canvas;

.field protected mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field protected mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

.field protected mCirclePaintInner:Landroid/graphics/Paint;

.field private mCirclesBuffer:[F

.field protected mDrawBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mGenerateFilledPathBuffer:Landroid/graphics/Path;

.field private mImageCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;",
            "Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;",
            ">;"
        }
    .end annotation
.end field

.field private mLineBuffer:[F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 2
    .line 3
    .line 4
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 7
    .line 8
    new-instance p2, Landroid/graphics/Path;

    .line 9
    .line 10
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 14
    .line 15
    new-instance p2, Landroid/graphics/Path;

    .line 16
    .line 17
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    .line 21
    .line 22
    const/4 p2, 0x4

    .line 23
    new-array p2, p2, [F

    .line 24
    .line 25
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 26
    .line 27
    new-instance p2, Landroid/graphics/Path;

    .line 28
    .line 29
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mGenerateFilledPathBuffer:Landroid/graphics/Path;

    .line 33
    .line 34
    new-instance p2, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mImageCaches:Ljava/util/HashMap;

    .line 40
    .line 41
    const/4 p2, 0x2

    .line 42
    new-array p2, p2, [F

    .line 43
    .line 44
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclesBuffer:[F

    .line 45
    .line 46
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 47
    .line 48
    new-instance p1, Landroid/graphics/Paint;

    .line 49
    .line 50
    const/4 p2, 0x1

    .line 51
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    .line 55
    .line 56
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    .line 62
    .line 63
    const/4 p2, -0x1

    .line 64
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private generateFilledPath(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;IILandroid/graphics/Path;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillFormatter()Lcom/github/mikephil/charting/formatter/IFillFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 6
    .line 7
    invoke-interface {v0, p1, v1}, Lcom/github/mikephil/charting/formatter/IFillFormatter;->getFillLinePosition(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;)F

    .line 8
    .line 9
    .line 10
    move-result v0

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
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getMode()Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->STEPPED:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-ne v2, v3, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    :goto_0
    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-virtual {p4, v5, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    mul-float v3, v3, v1

    .line 52
    .line 53
    invoke-virtual {p4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 54
    .line 55
    .line 56
    add-int/2addr p2, v4

    .line 57
    const/4 v3, 0x0

    .line 58
    :goto_1
    move-object v4, v3

    .line 59
    if-gt p2, p3, :cond_2

    .line 60
    .line 61
    invoke-interface {p1, p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    mul-float v4, v4, v1

    .line 78
    .line 79
    invoke-virtual {p4, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    mul-float v5, v5, v1

    .line 91
    .line 92
    invoke-virtual {p4, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 p2, p2, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    if-eqz v3, :cond_3

    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {p4, p1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 105
    .line 106
    .line 107
    :cond_3
    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    .line 108
    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public drawCircles(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 4
    .line 5
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclesBuffer:[F

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    aput v4, v2, v3

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    aput v4, v2, v5

    .line 24
    .line 25
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 26
    .line 27
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v6, 0x0

    .line 36
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-ge v6, v7, :cond_a

    .line 41
    .line 42
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    check-cast v7, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 47
    .line 48
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isVisible()Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-eqz v8, :cond_0

    .line 53
    .line 54
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawCirclesEnabled()Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_0

    .line 59
    .line 60
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-nez v8, :cond_1

    .line 65
    .line 66
    :cond_0
    :goto_1
    move-object/from16 v4, p1

    .line 67
    .line 68
    goto/16 :goto_7

    .line 69
    .line 70
    :cond_1
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    .line 71
    .line 72
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleHoleColor()I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    .line 78
    .line 79
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 80
    .line 81
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-interface {v8, v9}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 90
    .line 91
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 92
    .line 93
    invoke-virtual {v9, v10, v7}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleRadius()F

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleHoleRadius()F

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawCircleHoleEnabled()Z

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    if-eqz v11, :cond_2

    .line 109
    .line 110
    cmpg-float v11, v10, v9

    .line 111
    .line 112
    if-gez v11, :cond_2

    .line 113
    .line 114
    cmpl-float v10, v10, v4

    .line 115
    .line 116
    if-lez v10, :cond_2

    .line 117
    .line 118
    const/4 v10, 0x1

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    const/4 v10, 0x0

    .line 121
    :goto_2
    if-eqz v10, :cond_3

    .line 122
    .line 123
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleHoleColor()I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    const v12, 0x112233

    .line 128
    .line 129
    .line 130
    if-ne v11, v12, :cond_3

    .line 131
    .line 132
    const/4 v11, 0x1

    .line 133
    goto :goto_3

    .line 134
    :cond_3
    const/4 v11, 0x0

    .line 135
    :goto_3
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mImageCaches:Ljava/util/HashMap;

    .line 136
    .line 137
    invoke-virtual {v12, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    const/4 v13, 0x0

    .line 142
    if-eqz v12, :cond_4

    .line 143
    .line 144
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mImageCaches:Ljava/util/HashMap;

    .line 145
    .line 146
    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    check-cast v12, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_4
    new-instance v12, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;

    .line 154
    .line 155
    invoke-direct {v12, v0, v13}, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;-><init>(Lcom/github/mikephil/charting/renderer/LineChartRenderer;Lcom/github/mikephil/charting/renderer/LineChartRenderer$1;)V

    .line 156
    .line 157
    .line 158
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mImageCaches:Ljava/util/HashMap;

    .line 159
    .line 160
    invoke-virtual {v14, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    :goto_4
    invoke-virtual {v12, v7}, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->init(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)Z

    .line 164
    .line 165
    .line 166
    move-result v14

    .line 167
    if-eqz v14, :cond_5

    .line 168
    .line 169
    invoke-virtual {v12, v7, v10, v11}, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->fill(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;ZZ)V

    .line 170
    .line 171
    .line 172
    :cond_5
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 173
    .line 174
    iget v11, v10, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    .line 175
    .line 176
    iget v10, v10, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 177
    .line 178
    add-int/2addr v11, v10

    .line 179
    :goto_5
    if-gt v10, v11, :cond_0

    .line 180
    .line 181
    invoke-interface {v7, v10}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 182
    .line 183
    .line 184
    move-result-object v14

    .line 185
    if-nez v14, :cond_6

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_6
    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclesBuffer:[F

    .line 189
    .line 190
    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 191
    .line 192
    .line 193
    move-result v16

    .line 194
    aput v16, v15, v3

    .line 195
    .line 196
    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclesBuffer:[F

    .line 197
    .line 198
    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 199
    .line 200
    .line 201
    move-result v14

    .line 202
    mul-float v14, v14, v1

    .line 203
    .line 204
    aput v14, v15, v5

    .line 205
    .line 206
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclesBuffer:[F

    .line 207
    .line 208
    invoke-virtual {v8, v14}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 209
    .line 210
    .line 211
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 212
    .line 213
    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclesBuffer:[F

    .line 214
    .line 215
    aget v15, v15, v3

    .line 216
    .line 217
    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    .line 218
    .line 219
    .line 220
    move-result v14

    .line 221
    if-nez v14, :cond_7

    .line 222
    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :cond_7
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 226
    .line 227
    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclesBuffer:[F

    .line 228
    .line 229
    aget v15, v15, v3

    .line 230
    .line 231
    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    .line 232
    .line 233
    .line 234
    move-result v14

    .line 235
    if-eqz v14, :cond_8

    .line 236
    .line 237
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 238
    .line 239
    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclesBuffer:[F

    .line 240
    .line 241
    aget v15, v15, v5

    .line 242
    .line 243
    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    .line 244
    .line 245
    .line 246
    move-result v14

    .line 247
    if-nez v14, :cond_9

    .line 248
    .line 249
    :cond_8
    move-object/from16 v4, p1

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_9
    invoke-virtual {v12, v10}, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->getBitmap(I)Landroid/graphics/Bitmap;

    .line 253
    .line 254
    .line 255
    move-result-object v14

    .line 256
    if-eqz v14, :cond_8

    .line 257
    .line 258
    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclesBuffer:[F

    .line 259
    .line 260
    aget v16, v15, v3

    .line 261
    .line 262
    sub-float v3, v16, v9

    .line 263
    .line 264
    aget v15, v15, v5

    .line 265
    .line 266
    sub-float/2addr v15, v9

    .line 267
    move-object/from16 v4, p1

    .line 268
    .line 269
    invoke-virtual {v4, v14, v3, v15, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 270
    .line 271
    .line 272
    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 273
    .line 274
    const/4 v3, 0x0

    .line 275
    const/4 v4, 0x0

    .line 276
    goto :goto_5

    .line 277
    :goto_7
    add-int/lit8 v6, v6, 0x1

    .line 278
    .line 279
    const/4 v3, 0x0

    .line 280
    const/4 v4, 0x0

    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :cond_a
    return-void
.end method

.method public drawCubicBezier(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 22

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 19
    .line 20
    .line 21
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 28
    .line 29
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 38
    .line 39
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 40
    .line 41
    invoke-virtual {v1, v2, v7}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 42
    .line 43
    .line 44
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCubicIntensity()F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 51
    .line 52
    .line 53
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 54
    .line 55
    iget v3, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    .line 56
    .line 57
    const/4 v4, 0x1

    .line 58
    if-lt v3, v4, :cond_3

    .line 59
    .line 60
    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 61
    .line 62
    add-int/lit8 v3, v2, -0x1

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-interface {v7, v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-interface {v7, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-nez v2, :cond_0

    .line 82
    .line 83
    return-void

    .line 84
    :cond_0
    iget-object v5, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    mul-float v10, v10, v0

    .line 95
    .line 96
    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 97
    .line 98
    .line 99
    iget-object v5, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 100
    .line 101
    iget v5, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 102
    .line 103
    add-int/2addr v5, v4

    .line 104
    const/4 v4, -0x1

    .line 105
    move-object v4, v2

    .line 106
    move v9, v5

    .line 107
    const/4 v5, -0x1

    .line 108
    :goto_0
    iget-object v10, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 109
    .line 110
    iget v11, v10, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    .line 111
    .line 112
    iget v10, v10, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 113
    .line 114
    add-int/2addr v11, v10

    .line 115
    if-gt v9, v11, :cond_3

    .line 116
    .line 117
    if-ne v5, v9, :cond_1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    invoke-interface {v7, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    :goto_1
    add-int/lit8 v5, v9, 0x1

    .line 125
    .line 126
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    if-ge v5, v10, :cond_2

    .line 131
    .line 132
    move v9, v5

    .line 133
    :cond_2
    invoke-interface {v7, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    sub-float/2addr v11, v12

    .line 146
    mul-float v11, v11, v1

    .line 147
    .line 148
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 149
    .line 150
    .line 151
    move-result v12

    .line 152
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    sub-float/2addr v12, v3

    .line 157
    mul-float v12, v12, v1

    .line 158
    .line 159
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    sub-float/2addr v3, v13

    .line 168
    mul-float v3, v3, v1

    .line 169
    .line 170
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 171
    .line 172
    .line 173
    move-result v13

    .line 174
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 175
    .line 176
    .line 177
    move-result v14

    .line 178
    sub-float/2addr v13, v14

    .line 179
    mul-float v13, v13, v1

    .line 180
    .line 181
    iget-object v14, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 182
    .line 183
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 184
    .line 185
    .line 186
    move-result v15

    .line 187
    add-float/2addr v15, v11

    .line 188
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 189
    .line 190
    .line 191
    move-result v11

    .line 192
    add-float/2addr v11, v12

    .line 193
    mul-float v16, v11, v0

    .line 194
    .line 195
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    sub-float v17, v11, v3

    .line 200
    .line 201
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    sub-float/2addr v3, v13

    .line 206
    mul-float v18, v3, v0

    .line 207
    .line 208
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 209
    .line 210
    .line 211
    move-result v19

    .line 212
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    mul-float v20, v3, v0

    .line 217
    .line 218
    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 219
    .line 220
    .line 221
    move-object v3, v4

    .line 222
    move-object v4, v2

    .line 223
    move-object v2, v10

    .line 224
    move/from16 v21, v9

    .line 225
    .line 226
    move v9, v5

    .line 227
    move/from16 v5, v21

    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet;->isDrawFilledEnabled()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_4

    .line 235
    .line 236
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    .line 237
    .line 238
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 239
    .line 240
    .line 241
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    .line 242
    .line 243
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 246
    .line 247
    .line 248
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 249
    .line 250
    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    .line 251
    .line 252
    iget-object v5, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 253
    .line 254
    move-object/from16 v0, p0

    .line 255
    .line 256
    move-object/from16 v2, p1

    .line 257
    .line 258
    move-object v4, v8

    .line 259
    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCubicFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;)V

    .line 260
    .line 261
    .line 262
    :cond_4
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 263
    .line 264
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColor()I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    .line 270
    .line 271
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 272
    .line 273
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 276
    .line 277
    .line 278
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 279
    .line 280
    invoke-virtual {v8, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 281
    .line 282
    .line 283
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 284
    .line 285
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 286
    .line 287
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 288
    .line 289
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 290
    .line 291
    .line 292
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 293
    .line 294
    const/4 v1, 0x0

    .line 295
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 296
    .line 297
    .line 298
    return-void
.end method

.method public drawCubicFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillFormatter()Lcom/github/mikephil/charting/formatter/IFillFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 6
    .line 7
    invoke-interface {v0, p2, v1}, Lcom/github/mikephil/charting/formatter/IFillFormatter;->getFillLinePosition(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 12
    .line 13
    iget v2, p5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    .line 14
    .line 15
    add-int/2addr v1, v2

    .line 16
    invoke-interface {p2, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 25
    .line 26
    .line 27
    iget p5, p5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 28
    .line 29
    invoke-interface {p2, p5}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 30
    .line 31
    .line 32
    move-result-object p5

    .line 33
    invoke-virtual {p5}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 34
    .line 35
    .line 36
    move-result p5

    .line 37
    invoke-virtual {p3, p5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4, p3}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet;->getFillDrawable()Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    move-result-object p4

    .line 50
    if-eqz p4, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0, p1, p3, p4}, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet;->getFillColor()I

    .line 57
    .line 58
    .line 59
    move-result p4

    .line 60
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet;->getFillAlpha()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    float-to-int v1, v1

    .line 15
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/graphics/Bitmap;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ne v2, v0, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/graphics/Bitmap;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eq v2, v1, :cond_1

    .line 44
    .line 45
    :cond_0
    if-lez v0, :cond_4

    .line 46
    .line 47
    if-lez v1, :cond_4

    .line 48
    .line 49
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 52
    .line 53
    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    new-instance v0, Landroid/graphics/Canvas;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroid/graphics/Bitmap;

    .line 71
    .line 72
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 76
    .line 77
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/graphics/Bitmap;

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 90
    .line 91
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 114
    .line 115
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isVisible()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_2

    .line 120
    .line 121
    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Landroid/graphics/Bitmap;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    return-void
.end method

.method public drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 2

    .line 1
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 10
    .line 11
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet;->getLineWidth()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 19
    .line 20
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$1;->$SwitchMap$com$github$mikephil$charting$data$LineDataSet$Mode:[I

    .line 28
    .line 29
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getMode()Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    aget v0, v0, v1

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    if-eq v0, v1, :cond_2

    .line 41
    .line 42
    const/4 v1, 0x4

    .line 43
    if-eq v0, v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawLinear(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawHorizontalBezier(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCubicBezier(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCircles(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

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
    check-cast v4, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

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
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

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

.method public drawHorizontalBezier(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 20
    .line 21
    invoke-virtual {v2, v3, p1}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 30
    .line 31
    iget v3, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-lt v3, v4, :cond_0

    .line 35
    .line 36
    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 37
    .line 38
    invoke-interface {p1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    mul-float v6, v6, v0

    .line 53
    .line 54
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 58
    .line 59
    iget v3, v3, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 60
    .line 61
    add-int/2addr v3, v4

    .line 62
    :goto_0
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 63
    .line 64
    iget v5, v4, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    .line 65
    .line 66
    iget v4, v4, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 67
    .line 68
    add-int/2addr v5, v4

    .line 69
    if-gt v3, v5, :cond_0

    .line 70
    .line 71
    invoke-interface {p1, v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    sub-float/2addr v6, v7

    .line 88
    const/high16 v7, 0x40000000    # 2.0f

    .line 89
    .line 90
    div-float/2addr v6, v7

    .line 91
    add-float v10, v6, v5

    .line 92
    .line 93
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    mul-float v9, v2, v0

    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    mul-float v11, v2, v0

    .line 106
    .line 107
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    mul-float v13, v2, v0

    .line 116
    .line 117
    move v8, v10

    .line 118
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 119
    .line 120
    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    move-object v2, v4

    .line 124
    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet;->isDrawFilledEnabled()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_1

    .line 130
    .line 131
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    .line 137
    .line 138
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 141
    .line 142
    .line 143
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 144
    .line 145
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    .line 146
    .line 147
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 148
    .line 149
    move-object v3, p0

    .line 150
    move-object v5, p1

    .line 151
    move-object v7, v1

    .line 152
    invoke-virtual/range {v3 .. v8}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCubicFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;)V

    .line 153
    .line 154
    .line 155
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 156
    .line 157
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColor()I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 165
    .line 166
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 172
    .line 173
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 177
    .line 178
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 179
    .line 180
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 181
    .line 182
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 186
    .line 187
    const/4 v0, 0x0

    .line 188
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method public drawLinear(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawSteppedEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x4

    .line 14
    const/4 v5, 0x2

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    const/4 v6, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v6, 0x2

    .line 20
    :goto_0
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 21
    .line 22
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    invoke-interface {v7, v8}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 31
    .line 32
    invoke-virtual {v8}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 37
    .line 38
    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 39
    .line 40
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    .line 42
    .line 43
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDashedLineEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-eqz v9, :cond_1

    .line 48
    .line 49
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move-object/from16 v9, p1

    .line 53
    .line 54
    :goto_1
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 55
    .line 56
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 57
    .line 58
    invoke-virtual {v10, v11, v1}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 59
    .line 60
    .line 61
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet;->isDrawFilledEnabled()Z

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    if-eqz v10, :cond_2

    .line 66
    .line 67
    if-lez v2, :cond_2

    .line 68
    .line 69
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 70
    .line 71
    move-object/from16 v11, p1

    .line 72
    .line 73
    invoke-virtual {v0, v11, v1, v7, v10}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawLinearFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColors()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    const/4 v11, 0x0

    .line 85
    const/4 v12, 0x1

    .line 86
    if-le v10, v12, :cond_b

    .line 87
    .line 88
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 89
    .line 90
    array-length v2, v2

    .line 91
    mul-int/lit8 v10, v6, 0x2

    .line 92
    .line 93
    if-gt v2, v10, :cond_3

    .line 94
    .line 95
    mul-int/lit8 v6, v6, 0x4

    .line 96
    .line 97
    new-array v2, v6, [F

    .line 98
    .line 99
    iput-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 100
    .line 101
    :cond_3
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 102
    .line 103
    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 104
    .line 105
    :goto_2
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 106
    .line 107
    iget v13, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    .line 108
    .line 109
    iget v6, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 110
    .line 111
    add-int/2addr v13, v6

    .line 112
    if-gt v2, v13, :cond_12

    .line 113
    .line 114
    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    if-nez v6, :cond_4

    .line 119
    .line 120
    goto/16 :goto_4

    .line 121
    .line 122
    :cond_4
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 123
    .line 124
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 125
    .line 126
    .line 127
    move-result v14

    .line 128
    aput v14, v13, v11

    .line 129
    .line 130
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 131
    .line 132
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    mul-float v6, v6, v8

    .line 137
    .line 138
    aput v6, v13, v12

    .line 139
    .line 140
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 141
    .line 142
    iget v6, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->max:I

    .line 143
    .line 144
    const/4 v13, 0x3

    .line 145
    if-ge v2, v6, :cond_7

    .line 146
    .line 147
    add-int/lit8 v6, v2, 0x1

    .line 148
    .line 149
    invoke-interface {v1, v6}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    if-nez v6, :cond_5

    .line 154
    .line 155
    goto/16 :goto_8

    .line 156
    .line 157
    :cond_5
    if-eqz v3, :cond_6

    .line 158
    .line 159
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 160
    .line 161
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 162
    .line 163
    .line 164
    move-result v15

    .line 165
    aput v15, v14, v5

    .line 166
    .line 167
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 168
    .line 169
    aget v15, v14, v12

    .line 170
    .line 171
    aput v15, v14, v13

    .line 172
    .line 173
    aget v16, v14, v5

    .line 174
    .line 175
    aput v16, v14, v4

    .line 176
    .line 177
    const/16 v16, 0x5

    .line 178
    .line 179
    aput v15, v14, v16

    .line 180
    .line 181
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 182
    .line 183
    .line 184
    move-result v15

    .line 185
    const/16 v16, 0x6

    .line 186
    .line 187
    aput v15, v14, v16

    .line 188
    .line 189
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 190
    .line 191
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    mul-float v6, v6, v8

    .line 196
    .line 197
    const/4 v15, 0x7

    .line 198
    aput v6, v14, v15

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_6
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 202
    .line 203
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 204
    .line 205
    .line 206
    move-result v15

    .line 207
    aput v15, v14, v5

    .line 208
    .line 209
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 210
    .line 211
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    mul-float v6, v6, v8

    .line 216
    .line 217
    aput v6, v14, v13

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_7
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 221
    .line 222
    aget v14, v6, v11

    .line 223
    .line 224
    aput v14, v6, v5

    .line 225
    .line 226
    aget v14, v6, v12

    .line 227
    .line 228
    aput v14, v6, v13

    .line 229
    .line 230
    :goto_3
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 231
    .line 232
    invoke-virtual {v7, v6}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 233
    .line 234
    .line 235
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 236
    .line 237
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 238
    .line 239
    aget v14, v14, v11

    .line 240
    .line 241
    invoke-virtual {v6, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    if-nez v6, :cond_8

    .line 246
    .line 247
    goto/16 :goto_8

    .line 248
    .line 249
    :cond_8
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 250
    .line 251
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 252
    .line 253
    aget v14, v14, v5

    .line 254
    .line 255
    invoke-virtual {v6, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    if-eqz v6, :cond_a

    .line 260
    .line 261
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 262
    .line 263
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 264
    .line 265
    aget v14, v14, v12

    .line 266
    .line 267
    invoke-virtual {v6, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    if-nez v6, :cond_9

    .line 272
    .line 273
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 274
    .line 275
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 276
    .line 277
    aget v13, v14, v13

    .line 278
    .line 279
    invoke-virtual {v6, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    if-nez v6, :cond_9

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_9
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 287
    .line 288
    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColor(I)I

    .line 289
    .line 290
    .line 291
    move-result v13

    .line 292
    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 293
    .line 294
    .line 295
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 296
    .line 297
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 298
    .line 299
    invoke-virtual {v9, v6, v11, v10, v13}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 300
    .line 301
    .line 302
    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 303
    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :cond_b
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 307
    .line 308
    array-length v10, v10

    .line 309
    mul-int v2, v2, v6

    .line 310
    .line 311
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 312
    .line 313
    .line 314
    move-result v13

    .line 315
    mul-int/lit8 v13, v13, 0x2

    .line 316
    .line 317
    if-ge v10, v13, :cond_c

    .line 318
    .line 319
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    mul-int/lit8 v2, v2, 0x4

    .line 324
    .line 325
    new-array v2, v2, [F

    .line 326
    .line 327
    iput-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 328
    .line 329
    :cond_c
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 330
    .line 331
    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 332
    .line 333
    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    if-eqz v2, :cond_12

    .line 338
    .line 339
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 340
    .line 341
    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 342
    .line 343
    const/4 v4, 0x0

    .line 344
    :goto_5
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 345
    .line 346
    iget v13, v10, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    .line 347
    .line 348
    iget v10, v10, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 349
    .line 350
    add-int/2addr v13, v10

    .line 351
    if-gt v2, v13, :cond_11

    .line 352
    .line 353
    if-nez v2, :cond_d

    .line 354
    .line 355
    const/4 v10, 0x0

    .line 356
    goto :goto_6

    .line 357
    :cond_d
    add-int/lit8 v10, v2, -0x1

    .line 358
    .line 359
    :goto_6
    invoke-interface {v1, v10}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 360
    .line 361
    .line 362
    move-result-object v10

    .line 363
    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 364
    .line 365
    .line 366
    move-result-object v13

    .line 367
    if-eqz v10, :cond_10

    .line 368
    .line 369
    if-nez v13, :cond_e

    .line 370
    .line 371
    goto :goto_7

    .line 372
    :cond_e
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 373
    .line 374
    add-int/lit8 v15, v4, 0x1

    .line 375
    .line 376
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 377
    .line 378
    .line 379
    move-result v16

    .line 380
    aput v16, v14, v4

    .line 381
    .line 382
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 383
    .line 384
    add-int/lit8 v16, v4, 0x2

    .line 385
    .line 386
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 387
    .line 388
    .line 389
    move-result v17

    .line 390
    mul-float v17, v17, v8

    .line 391
    .line 392
    aput v17, v14, v15

    .line 393
    .line 394
    if-eqz v3, :cond_f

    .line 395
    .line 396
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 397
    .line 398
    add-int/lit8 v15, v4, 0x3

    .line 399
    .line 400
    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 401
    .line 402
    .line 403
    move-result v17

    .line 404
    aput v17, v14, v16

    .line 405
    .line 406
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 407
    .line 408
    add-int/lit8 v16, v4, 0x4

    .line 409
    .line 410
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 411
    .line 412
    .line 413
    move-result v17

    .line 414
    mul-float v17, v17, v8

    .line 415
    .line 416
    aput v17, v14, v15

    .line 417
    .line 418
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 419
    .line 420
    add-int/lit8 v15, v4, 0x5

    .line 421
    .line 422
    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 423
    .line 424
    .line 425
    move-result v17

    .line 426
    aput v17, v14, v16

    .line 427
    .line 428
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 429
    .line 430
    add-int/lit8 v16, v4, 0x6

    .line 431
    .line 432
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    mul-float v4, v4, v8

    .line 437
    .line 438
    aput v4, v14, v15

    .line 439
    .line 440
    :cond_f
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 441
    .line 442
    add-int/lit8 v10, v16, 0x1

    .line 443
    .line 444
    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 445
    .line 446
    .line 447
    move-result v14

    .line 448
    aput v14, v4, v16

    .line 449
    .line 450
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 451
    .line 452
    add-int/lit8 v14, v16, 0x2

    .line 453
    .line 454
    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 455
    .line 456
    .line 457
    move-result v13

    .line 458
    mul-float v13, v13, v8

    .line 459
    .line 460
    aput v13, v4, v10

    .line 461
    .line 462
    move v4, v14

    .line 463
    :cond_10
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 464
    .line 465
    goto :goto_5

    .line 466
    :cond_11
    if-lez v4, :cond_12

    .line 467
    .line 468
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 469
    .line 470
    invoke-virtual {v7, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 471
    .line 472
    .line 473
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 474
    .line 475
    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    .line 476
    .line 477
    add-int/2addr v2, v12

    .line 478
    mul-int v2, v2, v6

    .line 479
    .line 480
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    mul-int/lit8 v2, v2, 0x2

    .line 485
    .line 486
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 487
    .line 488
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColor()I

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    .line 494
    .line 495
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffer:[F

    .line 496
    .line 497
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 498
    .line 499
    invoke-virtual {v9, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 500
    .line 501
    .line 502
    :cond_12
    :goto_8
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 503
    .line 504
    const/4 v2, 0x0

    .line 505
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 506
    .line 507
    .line 508
    return-void
.end method

.method public drawLinearFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mGenerateFilledPathBuffer:Landroid/graphics/Path;

    .line 2
    .line 3
    iget v1, p4, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 4
    .line 5
    iget p4, p4, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    .line 6
    .line 7
    add-int/2addr p4, v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :cond_0
    mul-int/lit16 v3, v2, 0x80

    .line 10
    .line 11
    add-int/2addr v3, v1

    .line 12
    add-int/lit16 v4, v3, 0x80

    .line 13
    .line 14
    if-le v4, p4, :cond_1

    .line 15
    .line 16
    move v4, p4

    .line 17
    :cond_1
    if-gt v3, v4, :cond_3

    .line 18
    .line 19
    invoke-direct {p0, p2, v3, v4, v0}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->generateFilledPath(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;IILandroid/graphics/Path;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet;->getFillDrawable()Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    if-eqz v5, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0, v5}, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet;->getFillColor()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet;->getFillAlpha()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    invoke-virtual {p0, p1, v0, v5, v6}, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    if-le v3, v4, :cond_0

    .line 49
    .line 50
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 22

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 4
    .line 5
    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/renderer/DataRenderer;->isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_8

    .line 10
    .line 11
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

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
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ge v12, v0, :cond_8

    .line 27
    .line 28
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-object v13, v0

    .line 33
    check-cast v13, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 34
    .line 35
    invoke-virtual {v9, v13}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->shouldDrawValues(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    goto/16 :goto_5

    .line 42
    .line 43
    :cond_0
    invoke-virtual {v9, v13}, Lcom/github/mikephil/charting/renderer/DataRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 47
    .line 48
    invoke-interface {v13}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v13}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleRadius()F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/high16 v2, 0x3fe00000    # 1.75f

    .line 61
    .line 62
    mul-float v0, v0, v2

    .line 63
    .line 64
    float-to-int v0, v0

    .line 65
    invoke-interface {v13}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawCirclesEnabled()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_1

    .line 70
    .line 71
    div-int/lit8 v0, v0, 0x2

    .line 72
    .line 73
    :cond_1
    move v14, v0

    .line 74
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 75
    .line 76
    iget-object v2, v9, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 77
    .line 78
    invoke-virtual {v0, v2, v13}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 94
    .line 95
    iget v5, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 96
    .line 97
    iget v6, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->max:I

    .line 98
    .line 99
    move-object v2, v13

    .line 100
    invoke-virtual/range {v1 .. v6}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesLine(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;FFII)[F

    .line 101
    .line 102
    .line 103
    move-result-object v15

    .line 104
    invoke-interface {v13}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getIconsOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(Lcom/github/mikephil/charting/utils/MPPointF;)Lcom/github/mikephil/charting/utils/MPPointF;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    iget v0, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 113
    .line 114
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput v0, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 119
    .line 120
    iget v0, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 121
    .line 122
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iput v0, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 127
    .line 128
    const/4 v7, 0x0

    .line 129
    :goto_1
    array-length v0, v15

    .line 130
    if-ge v7, v0, :cond_2

    .line 131
    .line 132
    aget v6, v15, v7

    .line 133
    .line 134
    add-int/lit8 v0, v7, 0x1

    .line 135
    .line 136
    aget v5, v15, v0

    .line 137
    .line 138
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 139
    .line 140
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_3

    .line 145
    .line 146
    :cond_2
    move-object v11, v8

    .line 147
    goto/16 :goto_4

    .line 148
    .line 149
    :cond_3
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 150
    .line 151
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_4

    .line 156
    .line 157
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 158
    .line 159
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_5

    .line 164
    .line 165
    :cond_4
    move/from16 v21, v7

    .line 166
    .line 167
    move-object v11, v8

    .line 168
    goto :goto_3

    .line 169
    :cond_5
    div-int/lit8 v0, v7, 0x2

    .line 170
    .line 171
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    .line 172
    .line 173
    iget v1, v1, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 174
    .line 175
    add-int/2addr v1, v0

    .line 176
    invoke-interface {v13, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 177
    .line 178
    .line 179
    move-result-object v16

    .line 180
    invoke-interface {v13}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawValuesEnabled()Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_6

    .line 185
    .line 186
    invoke-interface {v13}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual/range {v16 .. v16}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    int-to-float v1, v14

    .line 195
    sub-float v17, v5, v1

    .line 196
    .line 197
    invoke-interface {v13, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueTextColor(I)I

    .line 198
    .line 199
    .line 200
    move-result v18

    .line 201
    move-object/from16 v0, p0

    .line 202
    .line 203
    move-object/from16 v1, p1

    .line 204
    .line 205
    move-object/from16 v4, v16

    .line 206
    .line 207
    move/from16 v19, v5

    .line 208
    .line 209
    move v5, v12

    .line 210
    move/from16 v20, v6

    .line 211
    .line 212
    move/from16 v21, v7

    .line 213
    .line 214
    move/from16 v7, v17

    .line 215
    .line 216
    move-object v11, v8

    .line 217
    move/from16 v8, v18

    .line 218
    .line 219
    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_6
    move/from16 v19, v5

    .line 224
    .line 225
    move/from16 v20, v6

    .line 226
    .line 227
    move/from16 v21, v7

    .line 228
    .line 229
    move-object v11, v8

    .line 230
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-eqz v0, :cond_7

    .line 235
    .line 236
    invoke-interface {v13}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawIconsEnabled()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_7

    .line 241
    .line 242
    invoke-virtual/range {v16 .. v16}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    iget v0, v11, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 247
    .line 248
    add-float v6, v20, v0

    .line 249
    .line 250
    float-to-int v3, v6

    .line 251
    iget v0, v11, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 252
    .line 253
    add-float v5, v19, v0

    .line 254
    .line 255
    float-to-int v4, v5

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
    :cond_7
    :goto_3
    add-int/lit8 v7, v21, 0x2

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
    :cond_8
    return-void
.end method

.method public getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-object v0
.end method

.method public initBuffers()V
    .locals 0

    return-void
.end method

.method public releaseBitmap()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/graphics/Bitmap;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public setBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->releaseBitmap()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
