.class public Lcom/github/mikephil/charting/renderer/PieChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "SourceFile"


# instance fields
.field protected mBitmapCanvas:Landroid/graphics/Canvas;

.field private mCenterTextLastBounds:Landroid/graphics/RectF;

.field private mCenterTextLastValue:Ljava/lang/CharSequence;

.field private mCenterTextLayout:Landroid/text/StaticLayout;

.field private mCenterTextPaint:Landroid/text/TextPaint;

.field protected mChart:Lcom/github/mikephil/charting/charts/PieChart;

.field protected mDrawBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mDrawCenterTextPathBuffer:Landroid/graphics/Path;

.field protected mDrawHighlightedRectF:Landroid/graphics/RectF;

.field private mEntryLabelsPaint:Landroid/graphics/Paint;

.field private mHoleCirclePath:Landroid/graphics/Path;

.field protected mHolePaint:Landroid/graphics/Paint;

.field private mInnerRectBuffer:Landroid/graphics/RectF;

.field private mPathBuffer:Landroid/graphics/Path;

.field private mRectBuffer:[Landroid/graphics/RectF;

.field protected mTransparentCirclePaint:Landroid/graphics/Paint;

.field protected mValueLinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 3

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

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
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    .line 10
    .line 11
    new-instance p2, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance p3, Landroid/graphics/RectF;

    .line 17
    .line 18
    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/graphics/RectF;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    new-array v1, v1, [Landroid/graphics/RectF;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object p2, v1, v2

    .line 31
    .line 32
    const/4 p2, 0x1

    .line 33
    aput-object p3, v1, p2

    .line 34
    .line 35
    const/4 p3, 0x2

    .line 36
    aput-object v0, v1, p3

    .line 37
    .line 38
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    .line 39
    .line 40
    new-instance p3, Landroid/graphics/Path;

    .line 41
    .line 42
    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 46
    .line 47
    new-instance p3, Landroid/graphics/RectF;

    .line 48
    .line 49
    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    .line 53
    .line 54
    new-instance p3, Landroid/graphics/Path;

    .line 55
    .line 56
    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    .line 60
    .line 61
    new-instance p3, Landroid/graphics/Path;

    .line 62
    .line 63
    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawCenterTextPathBuffer:Landroid/graphics/Path;

    .line 67
    .line 68
    new-instance p3, Landroid/graphics/RectF;

    .line 69
    .line 70
    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawHighlightedRectF:Landroid/graphics/RectF;

    .line 74
    .line 75
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 76
    .line 77
    new-instance p1, Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    .line 83
    .line 84
    const/4 p3, -0x1

    .line 85
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    .line 89
    .line 90
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    .line 94
    .line 95
    new-instance p1, Landroid/graphics/Paint;

    .line 96
    .line 97
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 101
    .line 102
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 111
    .line 112
    const/16 v0, 0x69

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    .line 116
    .line 117
    new-instance p1, Landroid/text/TextPaint;

    .line 118
    .line 119
    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    .line 120
    .line 121
    .line 122
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    .line 123
    .line 124
    const/high16 v0, -0x1000000

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    .line 130
    .line 131
    const/high16 v0, 0x41400000    # 12.0f

    .line 132
    .line 133
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 141
    .line 142
    const/high16 v0, 0x41500000    # 13.0f

    .line 143
    .line 144
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 152
    .line 153
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 157
    .line 158
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 159
    .line 160
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 161
    .line 162
    .line 163
    new-instance p1, Landroid/graphics/Paint;

    .line 164
    .line 165
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 166
    .line 167
    .line 168
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    .line 169
    .line 170
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    .line 174
    .line 175
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    .line 179
    .line 180
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 181
    .line 182
    .line 183
    move-result p3

    .line 184
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 185
    .line 186
    .line 187
    new-instance p1, Landroid/graphics/Paint;

    .line 188
    .line 189
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 190
    .line 191
    .line 192
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    .line 193
    .line 194
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 195
    .line 196
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method


# virtual methods
.method public calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F
    .locals 15

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    div-float v2, p7, v1

    .line 6
    .line 7
    add-float v2, v2, p6

    .line 8
    .line 9
    iget v3, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 10
    .line 11
    add-float v4, p6, p7

    .line 12
    .line 13
    const v5, 0x3c8efa35

    .line 14
    .line 15
    .line 16
    mul-float v4, v4, v5

    .line 17
    .line 18
    float-to-double v6, v4

    .line 19
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v8

    .line 23
    double-to-float v4, v8

    .line 24
    mul-float v4, v4, p2

    .line 25
    .line 26
    add-float/2addr v4, v3

    .line 27
    iget v3, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 28
    .line 29
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    double-to-float v6, v6

    .line 34
    mul-float v6, v6, p2

    .line 35
    .line 36
    add-float/2addr v6, v3

    .line 37
    iget v3, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 38
    .line 39
    mul-float v2, v2, v5

    .line 40
    .line 41
    float-to-double v7, v2

    .line 42
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide v9

    .line 46
    double-to-float v2, v9

    .line 47
    mul-float v2, v2, p2

    .line 48
    .line 49
    add-float/2addr v2, v3

    .line 50
    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 51
    .line 52
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    double-to-float v3, v7

    .line 57
    mul-float v3, v3, p2

    .line 58
    .line 59
    add-float/2addr v3, v0

    .line 60
    sub-float v0, v4, p4

    .line 61
    .line 62
    float-to-double v7, v0

    .line 63
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 64
    .line 65
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 66
    .line 67
    .line 68
    move-result-wide v7

    .line 69
    sub-float v0, v6, p5

    .line 70
    .line 71
    float-to-double v11, v0

    .line 72
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 73
    .line 74
    .line 75
    move-result-wide v11

    .line 76
    add-double/2addr v11, v7

    .line 77
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v7

    .line 81
    div-double/2addr v7, v9

    .line 82
    const-wide v11, 0x4066800000000000L    # 180.0

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    move/from16 v0, p3

    .line 88
    .line 89
    float-to-double v13, v0

    .line 90
    sub-double/2addr v11, v13

    .line 91
    div-double/2addr v11, v9

    .line 92
    const-wide v13, 0x3f91df46a2529d39L    # 0.017453292519943295

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    mul-double v11, v11, v13

    .line 98
    .line 99
    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    .line 100
    .line 101
    .line 102
    move-result-wide v11

    .line 103
    mul-double v11, v11, v7

    .line 104
    .line 105
    double-to-float v0, v11

    .line 106
    sub-float v0, p2, v0

    .line 107
    .line 108
    float-to-double v7, v0

    .line 109
    add-float v4, v4, p4

    .line 110
    .line 111
    div-float/2addr v4, v1

    .line 112
    sub-float/2addr v2, v4

    .line 113
    float-to-double v4, v2

    .line 114
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 115
    .line 116
    .line 117
    move-result-wide v4

    .line 118
    add-float v6, v6, p5

    .line 119
    .line 120
    div-float/2addr v6, v1

    .line 121
    sub-float/2addr v3, v6

    .line 122
    float-to-double v0, v3

    .line 123
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 124
    .line 125
    .line 126
    move-result-wide v0

    .line 127
    add-double/2addr v0, v4

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 129
    .line 130
    .line 131
    move-result-wide v0

    .line 132
    sub-double/2addr v7, v0

    .line 133
    double-to-float v0, v7

    .line 134
    return v0
.end method

.method public drawCenterText(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterText()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawCenterTextEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    if-eqz v4, :cond_4

    .line 20
    .line 21
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 30
    .line 31
    .line 32
    move-result-object v13

    .line 33
    iget v3, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 34
    .line 35
    iget v5, v13, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 36
    .line 37
    add-float/2addr v3, v5

    .line 38
    iget v5, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 39
    .line 40
    iget v6, v13, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 41
    .line 42
    add-float/2addr v5, v6

    .line 43
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 44
    .line 45
    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    const/high16 v7, 0x42c80000    # 100.0f

    .line 50
    .line 51
    if-eqz v6, :cond_0

    .line 52
    .line 53
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 54
    .line 55
    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-nez v6, :cond_0

    .line 60
    .line 61
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 62
    .line 63
    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 68
    .line 69
    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    div-float/2addr v8, v7

    .line 74
    mul-float v8, v8, v6

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 78
    .line 79
    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    :goto_0
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    .line 84
    .line 85
    const/4 v9, 0x0

    .line 86
    aget-object v14, v6, v9

    .line 87
    .line 88
    sub-float v9, v3, v8

    .line 89
    .line 90
    iput v9, v14, Landroid/graphics/RectF;->left:F

    .line 91
    .line 92
    sub-float v9, v5, v8

    .line 93
    .line 94
    iput v9, v14, Landroid/graphics/RectF;->top:F

    .line 95
    .line 96
    add-float/2addr v3, v8

    .line 97
    iput v3, v14, Landroid/graphics/RectF;->right:F

    .line 98
    .line 99
    add-float/2addr v5, v8

    .line 100
    iput v5, v14, Landroid/graphics/RectF;->bottom:F

    .line 101
    .line 102
    const/4 v3, 0x1

    .line 103
    aget-object v15, v6, v3

    .line 104
    .line 105
    invoke-virtual {v15, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 106
    .line 107
    .line 108
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextRadiusPercent()F

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    div-float/2addr v3, v7

    .line 115
    float-to-double v5, v3

    .line 116
    const-wide/16 v7, 0x0

    .line 117
    .line 118
    const/high16 v16, 0x40000000    # 2.0f

    .line 119
    .line 120
    cmpl-double v9, v5, v7

    .line 121
    .line 122
    if-lez v9, :cond_1

    .line 123
    .line 124
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    mul-float v6, v6, v3

    .line 133
    .line 134
    sub-float/2addr v5, v6

    .line 135
    div-float v5, v5, v16

    .line 136
    .line 137
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    mul-float v7, v7, v3

    .line 146
    .line 147
    sub-float/2addr v6, v7

    .line 148
    div-float v6, v6, v16

    .line 149
    .line 150
    invoke-virtual {v15, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 151
    .line 152
    .line 153
    :cond_1
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastValue:Ljava/lang/CharSequence;

    .line 154
    .line 155
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_3

    .line 160
    .line 161
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    .line 162
    .line 163
    invoke-virtual {v15, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-nez v3, :cond_2

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_2
    move-object/from16 v18, v13

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    .line 174
    .line 175
    invoke-virtual {v3, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 176
    .line 177
    .line 178
    iput-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastValue:Ljava/lang/CharSequence;

    .line 179
    .line 180
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    .line 181
    .line 182
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    new-instance v12, Landroid/text/StaticLayout;

    .line 187
    .line 188
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    .line 193
    .line 194
    float-to-double v8, v3

    .line 195
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 196
    .line 197
    .line 198
    move-result-wide v8

    .line 199
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 200
    .line 201
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    .line 202
    .line 203
    .line 204
    move-result-wide v8

    .line 205
    double-to-int v8, v8

    .line 206
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 207
    .line 208
    const/4 v11, 0x0

    .line 209
    const/16 v17, 0x0

    .line 210
    .line 211
    const/4 v5, 0x0

    .line 212
    const/high16 v10, 0x3f800000    # 1.0f

    .line 213
    .line 214
    move-object v3, v12

    .line 215
    move-object/from16 v18, v13

    .line 216
    .line 217
    move-object v13, v12

    .line 218
    move/from16 v12, v17

    .line 219
    .line 220
    invoke-direct/range {v3 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 221
    .line 222
    .line 223
    iput-object v13, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    .line 224
    .line 225
    :goto_2
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    .line 226
    .line 227
    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    int-to-float v3, v3

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 233
    .line 234
    .line 235
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawCenterTextPathBuffer:Landroid/graphics/Path;

    .line 236
    .line 237
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 238
    .line 239
    .line 240
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 241
    .line 242
    invoke-virtual {v4, v14, v5}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 246
    .line 247
    .line 248
    iget v4, v15, Landroid/graphics/RectF;->left:F

    .line 249
    .line 250
    iget v5, v15, Landroid/graphics/RectF;->top:F

    .line 251
    .line 252
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    sub-float/2addr v6, v3

    .line 257
    div-float v6, v6, v16

    .line 258
    .line 259
    add-float/2addr v6, v5

    .line 260
    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 261
    .line 262
    .line 263
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    .line 264
    .line 265
    invoke-virtual {v3, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 269
    .line 270
    .line 271
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 272
    .line 273
    .line 274
    invoke-static/range {v18 .. v18}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 275
    .line 276
    .line 277
    :cond_4
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
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

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
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

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
    if-lez v0, :cond_3

    .line 46
    .line 47
    if-lez v1, :cond_3

    .line 48
    .line 49
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

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
    iput-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    new-instance v0, Landroid/graphics/Canvas;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

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
    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 76
    .line 77
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

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
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lcom/github/mikephil/charting/data/PieData;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 116
    .line 117
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isVisible()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_2

    .line 122
    .line 123
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-lez v2, :cond_2

    .line 128
    .line 129
    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    return-void
.end method

.method public drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V
    .locals 33

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    .line 8
    .line 9
    .line 10
    move-result v10

    .line 11
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    .line 14
    .line 15
    .line 16
    move-result v11

    .line 17
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 20
    .line 21
    .line 22
    move-result v12

    .line 23
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    .line 26
    .line 27
    .line 28
    move-result-object v13

    .line 29
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 30
    .line 31
    .line 32
    move-result v14

    .line 33
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    .line 36
    .line 37
    .line 38
    move-result-object v15

    .line 39
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/16 v16, 0x0

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_0

    .line 69
    .line 70
    const/16 v17, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const/16 v17, 0x0

    .line 74
    .line 75
    :goto_0
    const/16 v18, 0x0

    .line 76
    .line 77
    if-eqz v17, :cond_1

    .line 78
    .line 79
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/high16 v1, 0x42c80000    # 100.0f

    .line 86
    .line 87
    div-float/2addr v0, v1

    .line 88
    mul-float v0, v0, v6

    .line 89
    .line 90
    move v4, v0

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    const/4 v4, 0x0

    .line 93
    :goto_1
    const/4 v0, 0x0

    .line 94
    const/4 v3, 0x0

    .line 95
    :goto_2
    if-ge v0, v14, :cond_3

    .line 96
    .line 97
    invoke-interface {v9, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lcom/github/mikephil/charting/data/PieEntry;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    sget v2, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    .line 112
    .line 113
    cmpl-float v1, v1, v2

    .line 114
    .line 115
    if-lez v1, :cond_2

    .line 116
    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    if-gt v3, v5, :cond_4

    .line 123
    .line 124
    const/16 v19, 0x0

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_4
    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    move/from16 v19, v0

    .line 132
    .line 133
    :goto_3
    const/4 v2, 0x0

    .line 134
    const/16 v20, 0x0

    .line 135
    .line 136
    :goto_4
    if-ge v2, v14, :cond_15

    .line 137
    .line 138
    aget v21, v15, v2

    .line 139
    .line 140
    invoke-interface {v9, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    sget v22, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    .line 153
    .line 154
    cmpl-float v0, v0, v22

    .line 155
    .line 156
    if-lez v0, :cond_14

    .line 157
    .line 158
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->needsHighlight(I)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_14

    .line 165
    .line 166
    cmpl-float v0, v19, v18

    .line 167
    .line 168
    if-lez v0, :cond_5

    .line 169
    .line 170
    const/high16 v0, 0x43340000    # 180.0f

    .line 171
    .line 172
    cmpg-float v0, v21, v0

    .line 173
    .line 174
    if-gtz v0, :cond_5

    .line 175
    .line 176
    const/4 v0, 0x1

    .line 177
    goto :goto_5

    .line 178
    :cond_5
    const/4 v0, 0x0

    .line 179
    :goto_5
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 180
    .line 181
    invoke-interface {v9, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColor(I)I

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    .line 187
    .line 188
    const v23, 0x3c8efa35

    .line 189
    .line 190
    .line 191
    const/4 v5, 0x1

    .line 192
    if-ne v3, v5, :cond_6

    .line 193
    .line 194
    const/4 v1, 0x0

    .line 195
    goto :goto_6

    .line 196
    :cond_6
    mul-float v1, v6, v23

    .line 197
    .line 198
    div-float v1, v19, v1

    .line 199
    .line 200
    :goto_6
    const/high16 v24, 0x40000000    # 2.0f

    .line 201
    .line 202
    div-float v25, v1, v24

    .line 203
    .line 204
    add-float v25, v25, v20

    .line 205
    .line 206
    mul-float v25, v25, v12

    .line 207
    .line 208
    add-float v9, v25, v10

    .line 209
    .line 210
    sub-float v1, v21, v1

    .line 211
    .line 212
    mul-float v1, v1, v12

    .line 213
    .line 214
    cmpg-float v25, v1, v18

    .line 215
    .line 216
    if-gez v25, :cond_7

    .line 217
    .line 218
    const/4 v1, 0x0

    .line 219
    :cond_7
    iget-object v5, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 220
    .line 221
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 222
    .line 223
    .line 224
    iget v5, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 225
    .line 226
    move/from16 v25, v2

    .line 227
    .line 228
    mul-float v2, v9, v23

    .line 229
    .line 230
    move/from16 v26, v3

    .line 231
    .line 232
    float-to-double v2, v2

    .line 233
    move/from16 v27, v14

    .line 234
    .line 235
    move-object/from16 v28, v15

    .line 236
    .line 237
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 238
    .line 239
    .line 240
    move-result-wide v14

    .line 241
    double-to-float v14, v14

    .line 242
    mul-float v14, v14, v6

    .line 243
    .line 244
    add-float/2addr v5, v14

    .line 245
    iget v14, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 246
    .line 247
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 248
    .line 249
    .line 250
    move-result-wide v2

    .line 251
    double-to-float v2, v2

    .line 252
    mul-float v2, v2, v6

    .line 253
    .line 254
    add-float/2addr v14, v2

    .line 255
    const/high16 v15, 0x43b40000    # 360.0f

    .line 256
    .line 257
    cmpl-float v29, v1, v15

    .line 258
    .line 259
    if-ltz v29, :cond_8

    .line 260
    .line 261
    rem-float v2, v1, v15

    .line 262
    .line 263
    cmpg-float v2, v2, v22

    .line 264
    .line 265
    if-gtz v2, :cond_8

    .line 266
    .line 267
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 268
    .line 269
    iget v3, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 270
    .line 271
    iget v15, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 272
    .line 273
    move/from16 v30, v11

    .line 274
    .line 275
    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 276
    .line 277
    invoke-virtual {v2, v3, v15, v6, v11}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 278
    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_8
    move/from16 v30, v11

    .line 282
    .line 283
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 284
    .line 285
    invoke-virtual {v2, v5, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 286
    .line 287
    .line 288
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 289
    .line 290
    invoke-virtual {v2, v13, v9, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 291
    .line 292
    .line 293
    :goto_7
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    .line 294
    .line 295
    iget v3, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 296
    .line 297
    sub-float v11, v3, v4

    .line 298
    .line 299
    iget v15, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 300
    .line 301
    move/from16 v31, v1

    .line 302
    .line 303
    sub-float v1, v15, v4

    .line 304
    .line 305
    add-float/2addr v3, v4

    .line 306
    add-float/2addr v15, v4

    .line 307
    invoke-virtual {v2, v11, v1, v3, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 308
    .line 309
    .line 310
    if-eqz v17, :cond_11

    .line 311
    .line 312
    cmpl-float v1, v4, v18

    .line 313
    .line 314
    if-gtz v1, :cond_a

    .line 315
    .line 316
    if-eqz v0, :cond_9

    .line 317
    .line 318
    goto :goto_8

    .line 319
    :cond_9
    move v15, v4

    .line 320
    move/from16 p1, v10

    .line 321
    .line 322
    move/from16 v11, v31

    .line 323
    .line 324
    const/high16 v1, 0x43b40000    # 360.0f

    .line 325
    .line 326
    const/16 v29, 0x1

    .line 327
    .line 328
    move/from16 v31, v6

    .line 329
    .line 330
    move-object v10, v7

    .line 331
    move/from16 v32, v25

    .line 332
    .line 333
    move-object/from16 v25, v13

    .line 334
    .line 335
    move/from16 v13, v26

    .line 336
    .line 337
    move/from16 v26, v32

    .line 338
    .line 339
    goto/16 :goto_d

    .line 340
    .line 341
    :cond_a
    :goto_8
    if-eqz v0, :cond_c

    .line 342
    .line 343
    mul-float v3, v21, v12

    .line 344
    .line 345
    move-object/from16 v0, p0

    .line 346
    .line 347
    move/from16 v11, v31

    .line 348
    .line 349
    move-object v1, v7

    .line 350
    move/from16 v15, v25

    .line 351
    .line 352
    move v2, v6

    .line 353
    move-object/from16 v25, v13

    .line 354
    .line 355
    move/from16 v13, v26

    .line 356
    .line 357
    move/from16 v26, v15

    .line 358
    .line 359
    move v15, v4

    .line 360
    move v4, v5

    .line 361
    const/4 v8, 0x1

    .line 362
    move v5, v14

    .line 363
    move/from16 v31, v6

    .line 364
    .line 365
    move v6, v9

    .line 366
    move-object v9, v7

    .line 367
    move v7, v11

    .line 368
    invoke-virtual/range {v0 .. v7}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    cmpg-float v1, v0, v18

    .line 373
    .line 374
    if-gez v1, :cond_b

    .line 375
    .line 376
    neg-float v0, v0

    .line 377
    :cond_b
    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    goto :goto_9

    .line 382
    :cond_c
    move v15, v4

    .line 383
    move-object v9, v7

    .line 384
    move/from16 v11, v31

    .line 385
    .line 386
    const/4 v8, 0x1

    .line 387
    move/from16 v31, v6

    .line 388
    .line 389
    move/from16 v32, v25

    .line 390
    .line 391
    move-object/from16 v25, v13

    .line 392
    .line 393
    move/from16 v13, v26

    .line 394
    .line 395
    move/from16 v26, v32

    .line 396
    .line 397
    :goto_9
    if-eq v13, v8, :cond_e

    .line 398
    .line 399
    cmpl-float v0, v4, v18

    .line 400
    .line 401
    if-nez v0, :cond_d

    .line 402
    .line 403
    goto :goto_a

    .line 404
    :cond_d
    mul-float v0, v4, v23

    .line 405
    .line 406
    div-float v0, v19, v0

    .line 407
    .line 408
    goto :goto_b

    .line 409
    :cond_e
    :goto_a
    const/4 v0, 0x0

    .line 410
    :goto_b
    div-float v1, v0, v24

    .line 411
    .line 412
    add-float v1, v1, v20

    .line 413
    .line 414
    mul-float v1, v1, v12

    .line 415
    .line 416
    add-float/2addr v1, v10

    .line 417
    sub-float v0, v21, v0

    .line 418
    .line 419
    mul-float v0, v0, v12

    .line 420
    .line 421
    cmpg-float v2, v0, v18

    .line 422
    .line 423
    if-gez v2, :cond_f

    .line 424
    .line 425
    const/4 v0, 0x0

    .line 426
    :cond_f
    add-float/2addr v1, v0

    .line 427
    if-ltz v29, :cond_10

    .line 428
    .line 429
    const/high16 v2, 0x43b40000    # 360.0f

    .line 430
    .line 431
    rem-float v2, v11, v2

    .line 432
    .line 433
    cmpg-float v2, v2, v22

    .line 434
    .line 435
    if-gtz v2, :cond_10

    .line 436
    .line 437
    const/16 v29, 0x1

    .line 438
    .line 439
    move-object/from16 v8, p0

    .line 440
    .line 441
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 442
    .line 443
    iget v1, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 444
    .line 445
    iget v2, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 446
    .line 447
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 448
    .line 449
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 450
    .line 451
    .line 452
    move/from16 p1, v10

    .line 453
    .line 454
    goto :goto_c

    .line 455
    :cond_10
    const/16 v29, 0x1

    .line 456
    .line 457
    move-object/from16 v8, p0

    .line 458
    .line 459
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 460
    .line 461
    iget v3, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 462
    .line 463
    mul-float v5, v1, v23

    .line 464
    .line 465
    float-to-double v5, v5

    .line 466
    move/from16 p1, v10

    .line 467
    .line 468
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    .line 469
    .line 470
    .line 471
    move-result-wide v10

    .line 472
    double-to-float v7, v10

    .line 473
    mul-float v7, v7, v4

    .line 474
    .line 475
    add-float/2addr v7, v3

    .line 476
    iget v3, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 477
    .line 478
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    .line 479
    .line 480
    .line 481
    move-result-wide v5

    .line 482
    double-to-float v5, v5

    .line 483
    mul-float v4, v4, v5

    .line 484
    .line 485
    add-float/2addr v4, v3

    .line 486
    invoke-virtual {v2, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 487
    .line 488
    .line 489
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 490
    .line 491
    iget-object v3, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    .line 492
    .line 493
    neg-float v0, v0

    .line 494
    invoke-virtual {v2, v3, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 495
    .line 496
    .line 497
    :goto_c
    move-object v10, v9

    .line 498
    goto :goto_e

    .line 499
    :cond_11
    move v15, v4

    .line 500
    move/from16 p1, v10

    .line 501
    .line 502
    move/from16 v11, v31

    .line 503
    .line 504
    const/16 v29, 0x1

    .line 505
    .line 506
    move/from16 v31, v6

    .line 507
    .line 508
    move-object v10, v7

    .line 509
    move/from16 v32, v25

    .line 510
    .line 511
    move-object/from16 v25, v13

    .line 512
    .line 513
    move/from16 v13, v26

    .line 514
    .line 515
    move/from16 v26, v32

    .line 516
    .line 517
    const/high16 v1, 0x43b40000    # 360.0f

    .line 518
    .line 519
    :goto_d
    rem-float v1, v11, v1

    .line 520
    .line 521
    cmpl-float v1, v1, v22

    .line 522
    .line 523
    if-lez v1, :cond_13

    .line 524
    .line 525
    if-eqz v0, :cond_12

    .line 526
    .line 527
    div-float v1, v11, v24

    .line 528
    .line 529
    add-float v22, v1, v9

    .line 530
    .line 531
    mul-float v3, v21, v12

    .line 532
    .line 533
    move-object/from16 v0, p0

    .line 534
    .line 535
    move-object v1, v10

    .line 536
    move/from16 v2, v31

    .line 537
    .line 538
    move v4, v5

    .line 539
    move v5, v14

    .line 540
    move v6, v9

    .line 541
    move v7, v11

    .line 542
    invoke-virtual/range {v0 .. v7}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    iget v1, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 547
    .line 548
    mul-float v2, v22, v23

    .line 549
    .line 550
    float-to-double v2, v2

    .line 551
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 552
    .line 553
    .line 554
    move-result-wide v4

    .line 555
    double-to-float v4, v4

    .line 556
    mul-float v4, v4, v0

    .line 557
    .line 558
    add-float/2addr v4, v1

    .line 559
    iget v1, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 560
    .line 561
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 562
    .line 563
    .line 564
    move-result-wide v2

    .line 565
    double-to-float v2, v2

    .line 566
    mul-float v0, v0, v2

    .line 567
    .line 568
    add-float/2addr v0, v1

    .line 569
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 570
    .line 571
    invoke-virtual {v1, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 572
    .line 573
    .line 574
    goto :goto_e

    .line 575
    :cond_12
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 576
    .line 577
    iget v1, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 578
    .line 579
    iget v2, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 580
    .line 581
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 582
    .line 583
    .line 584
    :cond_13
    :goto_e
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 585
    .line 586
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 587
    .line 588
    .line 589
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 590
    .line 591
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 592
    .line 593
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 594
    .line 595
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 596
    .line 597
    .line 598
    goto :goto_f

    .line 599
    :cond_14
    move/from16 v26, v2

    .line 600
    .line 601
    move/from16 v31, v6

    .line 602
    .line 603
    move/from16 p1, v10

    .line 604
    .line 605
    move/from16 v30, v11

    .line 606
    .line 607
    move-object/from16 v25, v13

    .line 608
    .line 609
    move/from16 v27, v14

    .line 610
    .line 611
    move-object/from16 v28, v15

    .line 612
    .line 613
    const/16 v29, 0x1

    .line 614
    .line 615
    move v13, v3

    .line 616
    move v15, v4

    .line 617
    move-object v10, v7

    .line 618
    :goto_f
    mul-float v21, v21, v30

    .line 619
    .line 620
    add-float v20, v21, v20

    .line 621
    .line 622
    add-int/lit8 v2, v26, 0x1

    .line 623
    .line 624
    move-object/from16 v9, p2

    .line 625
    .line 626
    move-object v7, v10

    .line 627
    move v3, v13

    .line 628
    move v4, v15

    .line 629
    move-object/from16 v13, v25

    .line 630
    .line 631
    move/from16 v14, v27

    .line 632
    .line 633
    move-object/from16 v15, v28

    .line 634
    .line 635
    move/from16 v11, v30

    .line 636
    .line 637
    move/from16 v6, v31

    .line 638
    .line 639
    const/4 v5, 0x1

    .line 640
    move/from16 v10, p1

    .line 641
    .line 642
    goto/16 :goto_4

    .line 643
    .line 644
    :cond_15
    move-object v10, v7

    .line 645
    invoke-static {v10}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 646
    .line 647
    .line 648
    return-void
.end method

.method public drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawHole(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/graphics/Bitmap;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawCenterText(Landroid/graphics/Canvas;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 35

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    .line 8
    .line 9
    .line 10
    move-result v10

    .line 11
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 14
    .line 15
    .line 16
    move-result v11

    .line 17
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    .line 20
    .line 21
    .line 22
    move-result v12

    .line 23
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    .line 26
    .line 27
    .line 28
    move-result-object v13

    .line 29
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    .line 32
    .line 33
    .line 34
    move-result-object v14

    .line 35
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 38
    .line 39
    .line 40
    move-result-object v15

    .line 41
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    .line 44
    .line 45
    .line 46
    move-result v16

    .line 47
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/16 v17, 0x0

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    .line 65
    const/16 v18, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/16 v18, 0x0

    .line 69
    .line 70
    :goto_0
    const/4 v6, 0x0

    .line 71
    if-eqz v18, :cond_1

    .line 72
    .line 73
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/high16 v1, 0x42c80000    # 100.0f

    .line 80
    .line 81
    div-float/2addr v0, v1

    .line 82
    mul-float v0, v0, v16

    .line 83
    .line 84
    move v5, v0

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const/4 v5, 0x0

    .line 87
    :goto_1
    iget-object v4, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawHighlightedRectF:Landroid/graphics/RectF;

    .line 88
    .line 89
    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 90
    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    :goto_2
    array-length v0, v9

    .line 94
    if-ge v3, v0, :cond_1a

    .line 95
    .line 96
    aget-object v0, v9, v3

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    float-to-int v0, v0

    .line 103
    array-length v1, v13

    .line 104
    if-lt v0, v1, :cond_3

    .line 105
    .line 106
    :cond_2
    :goto_3
    move v7, v3

    .line 107
    move-object/from16 p1, v4

    .line 108
    .line 109
    move/from16 v32, v10

    .line 110
    .line 111
    move-object/from16 v33, v13

    .line 112
    .line 113
    move-object/from16 v34, v14

    .line 114
    .line 115
    const/16 v23, 0x0

    .line 116
    .line 117
    move v14, v5

    .line 118
    goto/16 :goto_13

    .line 119
    .line 120
    :cond_3
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lcom/github/mikephil/charting/data/PieData;

    .line 127
    .line 128
    aget-object v2, v9, v3

    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/PieData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    if-eqz v1, :cond_2

    .line 139
    .line 140
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isHighlightEnabled()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_4

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_4
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    const/4 v6, 0x0

    .line 152
    const/4 v7, 0x0

    .line 153
    :goto_4
    if-ge v6, v2, :cond_6

    .line 154
    .line 155
    invoke-interface {v1, v6}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 156
    .line 157
    .line 158
    move-result-object v20

    .line 159
    check-cast v20, Lcom/github/mikephil/charting/data/PieEntry;

    .line 160
    .line 161
    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 162
    .line 163
    .line 164
    move-result v20

    .line 165
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    .line 166
    .line 167
    .line 168
    move-result v20

    .line 169
    sget v21, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    .line 170
    .line 171
    cmpl-float v20, v20, v21

    .line 172
    .line 173
    if-lez v20, :cond_5

    .line 174
    .line 175
    add-int/lit8 v7, v7, 0x1

    .line 176
    .line 177
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_6
    if-nez v0, :cond_7

    .line 181
    .line 182
    const/4 v2, 0x1

    .line 183
    const/16 v20, 0x0

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_7
    add-int/lit8 v2, v0, -0x1

    .line 187
    .line 188
    aget v2, v14, v2

    .line 189
    .line 190
    mul-float v2, v2, v10

    .line 191
    .line 192
    move/from16 v20, v2

    .line 193
    .line 194
    const/4 v2, 0x1

    .line 195
    :goto_5
    if-gt v7, v2, :cond_8

    .line 196
    .line 197
    const/16 v21, 0x0

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_8
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    move/from16 v21, v2

    .line 205
    .line 206
    :goto_6
    aget v22, v13, v0

    .line 207
    .line 208
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSelectionShift()F

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    add-float v6, v16, v2

    .line 213
    .line 214
    move/from16 v23, v3

    .line 215
    .line 216
    iget-object v3, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 217
    .line 218
    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 223
    .line 224
    .line 225
    neg-float v2, v2

    .line 226
    invoke-virtual {v4, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 227
    .line 228
    .line 229
    const/4 v2, 0x0

    .line 230
    cmpl-float v3, v21, v2

    .line 231
    .line 232
    if-lez v3, :cond_9

    .line 233
    .line 234
    const/high16 v2, 0x43340000    # 180.0f

    .line 235
    .line 236
    cmpg-float v2, v22, v2

    .line 237
    .line 238
    if-gtz v2, :cond_9

    .line 239
    .line 240
    const/16 v24, 0x1

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_9
    const/16 v24, 0x0

    .line 244
    .line 245
    :goto_7
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 246
    .line 247
    invoke-interface {v1, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColor(I)I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    .line 253
    .line 254
    const v25, 0x3c8efa35

    .line 255
    .line 256
    .line 257
    const/4 v3, 0x1

    .line 258
    if-ne v7, v3, :cond_a

    .line 259
    .line 260
    const/4 v2, 0x0

    .line 261
    goto :goto_8

    .line 262
    :cond_a
    mul-float v0, v16, v25

    .line 263
    .line 264
    div-float v2, v21, v0

    .line 265
    .line 266
    :goto_8
    if-ne v7, v3, :cond_b

    .line 267
    .line 268
    const/4 v0, 0x0

    .line 269
    goto :goto_9

    .line 270
    :cond_b
    mul-float v0, v6, v25

    .line 271
    .line 272
    div-float v0, v21, v0

    .line 273
    .line 274
    :goto_9
    const/high16 v19, 0x40000000    # 2.0f

    .line 275
    .line 276
    div-float v1, v2, v19

    .line 277
    .line 278
    add-float v1, v1, v20

    .line 279
    .line 280
    mul-float v1, v1, v11

    .line 281
    .line 282
    add-float v26, v1, v12

    .line 283
    .line 284
    sub-float v1, v22, v2

    .line 285
    .line 286
    mul-float v2, v1, v11

    .line 287
    .line 288
    const/16 v27, 0x0

    .line 289
    .line 290
    cmpg-float v1, v2, v27

    .line 291
    .line 292
    if-gez v1, :cond_c

    .line 293
    .line 294
    const/16 v28, 0x0

    .line 295
    .line 296
    goto :goto_a

    .line 297
    :cond_c
    move/from16 v28, v2

    .line 298
    .line 299
    :goto_a
    div-float v1, v0, v19

    .line 300
    .line 301
    add-float v1, v1, v20

    .line 302
    .line 303
    mul-float v1, v1, v11

    .line 304
    .line 305
    add-float/2addr v1, v12

    .line 306
    sub-float v0, v22, v0

    .line 307
    .line 308
    mul-float v2, v0, v11

    .line 309
    .line 310
    cmpg-float v0, v2, v27

    .line 311
    .line 312
    if-gez v0, :cond_d

    .line 313
    .line 314
    const/4 v2, 0x0

    .line 315
    :cond_d
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 316
    .line 317
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 318
    .line 319
    .line 320
    const/high16 v29, 0x43b40000    # 360.0f

    .line 321
    .line 322
    cmpl-float v30, v28, v29

    .line 323
    .line 324
    if-ltz v30, :cond_e

    .line 325
    .line 326
    rem-float v0, v28, v29

    .line 327
    .line 328
    sget v31, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    .line 329
    .line 330
    cmpg-float v0, v0, v31

    .line 331
    .line 332
    if-gtz v0, :cond_e

    .line 333
    .line 334
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 335
    .line 336
    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 337
    .line 338
    iget v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 339
    .line 340
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 341
    .line 342
    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 343
    .line 344
    .line 345
    move/from16 p1, v5

    .line 346
    .line 347
    move/from16 v32, v10

    .line 348
    .line 349
    move-object/from16 v33, v13

    .line 350
    .line 351
    move-object/from16 v34, v14

    .line 352
    .line 353
    goto :goto_b

    .line 354
    :cond_e
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 355
    .line 356
    iget v3, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 357
    .line 358
    move/from16 p1, v5

    .line 359
    .line 360
    mul-float v5, v1, v25

    .line 361
    .line 362
    move/from16 v32, v10

    .line 363
    .line 364
    float-to-double v9, v5

    .line 365
    move-object/from16 v33, v13

    .line 366
    .line 367
    move-object/from16 v34, v14

    .line 368
    .line 369
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 370
    .line 371
    .line 372
    move-result-wide v13

    .line 373
    double-to-float v5, v13

    .line 374
    mul-float v5, v5, v6

    .line 375
    .line 376
    add-float/2addr v5, v3

    .line 377
    iget v3, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 378
    .line 379
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 380
    .line 381
    .line 382
    move-result-wide v9

    .line 383
    double-to-float v9, v9

    .line 384
    mul-float v6, v6, v9

    .line 385
    .line 386
    add-float/2addr v6, v3

    .line 387
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 388
    .line 389
    .line 390
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 391
    .line 392
    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 393
    .line 394
    .line 395
    :goto_b
    if-eqz v24, :cond_f

    .line 396
    .line 397
    mul-float v3, v22, v11

    .line 398
    .line 399
    iget v0, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 400
    .line 401
    mul-float v1, v26, v25

    .line 402
    .line 403
    float-to-double v1, v1

    .line 404
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 405
    .line 406
    .line 407
    move-result-wide v5

    .line 408
    double-to-float v5, v5

    .line 409
    mul-float v5, v5, v16

    .line 410
    .line 411
    add-float/2addr v5, v0

    .line 412
    iget v0, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 413
    .line 414
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 415
    .line 416
    .line 417
    move-result-wide v1

    .line 418
    double-to-float v1, v1

    .line 419
    mul-float v1, v1, v16

    .line 420
    .line 421
    add-float v6, v1, v0

    .line 422
    .line 423
    move-object/from16 v0, p0

    .line 424
    .line 425
    move-object v1, v15

    .line 426
    move/from16 v2, v16

    .line 427
    .line 428
    move/from16 v10, v23

    .line 429
    .line 430
    const/4 v9, 0x1

    .line 431
    move-object v13, v4

    .line 432
    move v4, v5

    .line 433
    move/from16 v14, p1

    .line 434
    .line 435
    move v5, v6

    .line 436
    const/16 v23, 0x0

    .line 437
    .line 438
    move/from16 v6, v26

    .line 439
    .line 440
    move-object/from16 p1, v13

    .line 441
    .line 442
    move v13, v7

    .line 443
    move/from16 v7, v28

    .line 444
    .line 445
    invoke-virtual/range {v0 .. v7}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    .line 446
    .line 447
    .line 448
    move-result v6

    .line 449
    goto :goto_c

    .line 450
    :cond_f
    move/from16 v14, p1

    .line 451
    .line 452
    move-object/from16 p1, v4

    .line 453
    .line 454
    move v13, v7

    .line 455
    move/from16 v10, v23

    .line 456
    .line 457
    const/4 v9, 0x1

    .line 458
    const/16 v23, 0x0

    .line 459
    .line 460
    const/4 v6, 0x0

    .line 461
    :goto_c
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    .line 462
    .line 463
    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 464
    .line 465
    sub-float v2, v1, v14

    .line 466
    .line 467
    iget v3, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 468
    .line 469
    sub-float v4, v3, v14

    .line 470
    .line 471
    add-float/2addr v1, v14

    .line 472
    add-float/2addr v3, v14

    .line 473
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 474
    .line 475
    .line 476
    if-eqz v18, :cond_10

    .line 477
    .line 478
    cmpl-float v0, v14, v23

    .line 479
    .line 480
    if-gtz v0, :cond_11

    .line 481
    .line 482
    if-eqz v24, :cond_10

    .line 483
    .line 484
    goto :goto_d

    .line 485
    :cond_10
    move v7, v10

    .line 486
    goto/16 :goto_11

    .line 487
    .line 488
    :cond_11
    :goto_d
    if-eqz v24, :cond_13

    .line 489
    .line 490
    cmpg-float v0, v6, v23

    .line 491
    .line 492
    if-gez v0, :cond_12

    .line 493
    .line 494
    neg-float v6, v6

    .line 495
    :cond_12
    invoke-static {v14, v6}, Ljava/lang/Math;->max(FF)F

    .line 496
    .line 497
    .line 498
    move-result v5

    .line 499
    goto :goto_e

    .line 500
    :cond_13
    move v5, v14

    .line 501
    :goto_e
    if-eq v13, v9, :cond_15

    .line 502
    .line 503
    cmpl-float v0, v5, v23

    .line 504
    .line 505
    if-nez v0, :cond_14

    .line 506
    .line 507
    goto :goto_f

    .line 508
    :cond_14
    mul-float v0, v5, v25

    .line 509
    .line 510
    div-float v6, v21, v0

    .line 511
    .line 512
    goto :goto_10

    .line 513
    :cond_15
    :goto_f
    const/4 v6, 0x0

    .line 514
    :goto_10
    div-float v0, v6, v19

    .line 515
    .line 516
    add-float v0, v0, v20

    .line 517
    .line 518
    mul-float v0, v0, v11

    .line 519
    .line 520
    add-float/2addr v0, v12

    .line 521
    sub-float v22, v22, v6

    .line 522
    .line 523
    mul-float v6, v22, v11

    .line 524
    .line 525
    cmpg-float v1, v6, v23

    .line 526
    .line 527
    if-gez v1, :cond_16

    .line 528
    .line 529
    const/4 v6, 0x0

    .line 530
    :cond_16
    add-float/2addr v0, v6

    .line 531
    if-ltz v30, :cond_17

    .line 532
    .line 533
    rem-float v28, v28, v29

    .line 534
    .line 535
    sget v1, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    .line 536
    .line 537
    cmpg-float v1, v28, v1

    .line 538
    .line 539
    if-gtz v1, :cond_17

    .line 540
    .line 541
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 542
    .line 543
    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 544
    .line 545
    iget v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 546
    .line 547
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 548
    .line 549
    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 550
    .line 551
    .line 552
    move v7, v10

    .line 553
    goto :goto_12

    .line 554
    :cond_17
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 555
    .line 556
    iget v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 557
    .line 558
    mul-float v3, v0, v25

    .line 559
    .line 560
    float-to-double v3, v3

    .line 561
    move v7, v10

    .line 562
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 563
    .line 564
    .line 565
    move-result-wide v9

    .line 566
    double-to-float v9, v9

    .line 567
    mul-float v9, v9, v5

    .line 568
    .line 569
    add-float/2addr v9, v2

    .line 570
    iget v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 571
    .line 572
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 573
    .line 574
    .line 575
    move-result-wide v3

    .line 576
    double-to-float v3, v3

    .line 577
    mul-float v5, v5, v3

    .line 578
    .line 579
    add-float/2addr v5, v2

    .line 580
    invoke-virtual {v1, v9, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 581
    .line 582
    .line 583
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 584
    .line 585
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    .line 586
    .line 587
    neg-float v3, v6

    .line 588
    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 589
    .line 590
    .line 591
    goto :goto_12

    .line 592
    :goto_11
    rem-float v0, v28, v29

    .line 593
    .line 594
    sget v1, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    .line 595
    .line 596
    cmpl-float v0, v0, v1

    .line 597
    .line 598
    if-lez v0, :cond_19

    .line 599
    .line 600
    if-eqz v24, :cond_18

    .line 601
    .line 602
    div-float v28, v28, v19

    .line 603
    .line 604
    add-float v28, v28, v26

    .line 605
    .line 606
    iget v0, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 607
    .line 608
    mul-float v1, v28, v25

    .line 609
    .line 610
    float-to-double v1, v1

    .line 611
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 612
    .line 613
    .line 614
    move-result-wide v3

    .line 615
    double-to-float v3, v3

    .line 616
    mul-float v3, v3, v6

    .line 617
    .line 618
    add-float/2addr v3, v0

    .line 619
    iget v0, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 620
    .line 621
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 622
    .line 623
    .line 624
    move-result-wide v1

    .line 625
    double-to-float v1, v1

    .line 626
    mul-float v6, v6, v1

    .line 627
    .line 628
    add-float/2addr v6, v0

    .line 629
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 630
    .line 631
    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 632
    .line 633
    .line 634
    goto :goto_12

    .line 635
    :cond_18
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 636
    .line 637
    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 638
    .line 639
    iget v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 640
    .line 641
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 642
    .line 643
    .line 644
    :cond_19
    :goto_12
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 645
    .line 646
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 647
    .line 648
    .line 649
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 650
    .line 651
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 652
    .line 653
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 654
    .line 655
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 656
    .line 657
    .line 658
    :goto_13
    add-int/lit8 v3, v7, 0x1

    .line 659
    .line 660
    move-object/from16 v4, p1

    .line 661
    .line 662
    move-object/from16 v9, p2

    .line 663
    .line 664
    move v5, v14

    .line 665
    move/from16 v10, v32

    .line 666
    .line 667
    move-object/from16 v13, v33

    .line 668
    .line 669
    move-object/from16 v14, v34

    .line 670
    .line 671
    const/4 v6, 0x0

    .line 672
    goto/16 :goto_2

    .line 673
    .line 674
    :cond_1a
    invoke-static {v15}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 675
    .line 676
    .line 677
    return-void
.end method

.method public drawHole(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/high16 v1, 0x42c80000    # 100.0f

    .line 26
    .line 27
    div-float/2addr v0, v1

    .line 28
    mul-float v0, v0, p1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-lez v3, :cond_0

    .line 47
    .line 48
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 49
    .line 50
    iget v4, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 51
    .line 52
    iget v5, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 53
    .line 54
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    .line 55
    .line 56
    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-lez v3, :cond_1

    .line 70
    .line 71
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    cmpl-float v3, v3, v4

    .line 84
    .line 85
    if-lez v3, :cond_1

    .line 86
    .line 87
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    div-float/2addr v4, v1

    .line 100
    mul-float v4, v4, p1

    .line 101
    .line 102
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 103
    .line 104
    int-to-float v1, v3

    .line 105
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 106
    .line 107
    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    mul-float v5, v5, v1

    .line 112
    .line 113
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    mul-float v1, v1, v5

    .line 120
    .line 121
    float-to-int v1, v1

    .line 122
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    .line 131
    .line 132
    iget v1, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 133
    .line 134
    iget v5, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 135
    .line 136
    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 137
    .line 138
    invoke-virtual {p1, v1, v5, v4, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    .line 142
    .line 143
    iget v1, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 144
    .line 145
    iget v4, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 146
    .line 147
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 148
    .line 149
    invoke-virtual {p1, v1, v4, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 153
    .line 154
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    .line 155
    .line 156
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 157
    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 162
    .line 163
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 164
    .line 165
    .line 166
    :cond_1
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 167
    .line 168
    .line 169
    :cond_2
    return-void
.end method

.method public drawRoundedSlices(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawRoundedSlicesEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/github/mikephil/charting/data/PieData;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isVisible()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 56
    .line 57
    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    mul-float v6, v6, v5

    .line 62
    .line 63
    const/high16 v7, 0x42c80000    # 100.0f

    .line 64
    .line 65
    div-float/2addr v6, v7

    .line 66
    sub-float v6, v5, v6

    .line 67
    .line 68
    const/high16 v7, 0x40000000    # 2.0f

    .line 69
    .line 70
    div-float/2addr v6, v7

    .line 71
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 72
    .line 73
    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 78
    .line 79
    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    const/4 v9, 0x0

    .line 84
    :goto_0
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-ge v9, v10, :cond_3

    .line 89
    .line 90
    aget v10, v7, v9

    .line 91
    .line 92
    invoke-interface {v1, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    sget v12, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    .line 105
    .line 106
    cmpl-float v11, v11, v12

    .line 107
    .line 108
    if-lez v11, :cond_2

    .line 109
    .line 110
    sub-float v11, v5, v6

    .line 111
    .line 112
    float-to-double v11, v11

    .line 113
    add-float v13, v8, v10

    .line 114
    .line 115
    mul-float v13, v13, v3

    .line 116
    .line 117
    float-to-double v13, v13

    .line 118
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    .line 119
    .line 120
    .line 121
    move-result-wide v15

    .line 122
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    .line 123
    .line 124
    .line 125
    move-result-wide v15

    .line 126
    mul-double v15, v15, v11

    .line 127
    .line 128
    move/from16 p1, v3

    .line 129
    .line 130
    iget v3, v4, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 131
    .line 132
    move-object/from16 v17, v7

    .line 133
    .line 134
    move/from16 v18, v8

    .line 135
    .line 136
    float-to-double v7, v3

    .line 137
    add-double/2addr v7, v15

    .line 138
    double-to-float v3, v7

    .line 139
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    .line 140
    .line 141
    .line 142
    move-result-wide v7

    .line 143
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 144
    .line 145
    .line 146
    move-result-wide v7

    .line 147
    mul-double v7, v7, v11

    .line 148
    .line 149
    iget v11, v4, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 150
    .line 151
    float-to-double v11, v11

    .line 152
    add-double/2addr v7, v11

    .line 153
    double-to-float v7, v7

    .line 154
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 155
    .line 156
    invoke-interface {v1, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColor(I)I

    .line 157
    .line 158
    .line 159
    move-result v11

    .line 160
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    .line 162
    .line 163
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 164
    .line 165
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 166
    .line 167
    invoke-virtual {v8, v3, v7, v6, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_2
    move/from16 p1, v3

    .line 172
    .line 173
    move-object/from16 v17, v7

    .line 174
    .line 175
    move/from16 v18, v8

    .line 176
    .line 177
    :goto_1
    mul-float v10, v10, v2

    .line 178
    .line 179
    add-float v8, v10, v18

    .line 180
    .line 181
    add-int/lit8 v9, v9, 0x1

    .line 182
    .line 183
    move/from16 v3, p1

    .line 184
    .line 185
    move-object/from16 v7, v17

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_3
    invoke-static {v4}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 53

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    const/4 v11, 0x1

    .line 6
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 9
    .line 10
    .line 11
    move-result-object v12

    .line 12
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    .line 15
    .line 16
    .line 17
    move-result v13

    .line 18
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    .line 21
    .line 22
    .line 23
    move-result v14

    .line 24
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    .line 27
    .line 28
    .line 29
    move-result-object v15

    .line 30
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    .line 33
    .line 34
    .line 35
    move-result-object v16

    .line 36
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    .line 39
    .line 40
    .line 41
    move-result v17

    .line 42
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 45
    .line 46
    .line 47
    move-result v18

    .line 48
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/high16 v19, 0x42c80000    # 100.0f

    .line 55
    .line 56
    div-float v20, v0, v19

    .line 57
    .line 58
    const/high16 v0, 0x41200000    # 10.0f

    .line 59
    .line 60
    div-float v0, v13, v0

    .line 61
    .line 62
    const v1, 0x40666666    # 3.6f

    .line 63
    .line 64
    .line 65
    mul-float v0, v0, v1

    .line 66
    .line 67
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/high16 v21, 0x40000000    # 2.0f

    .line 74
    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    mul-float v0, v13, v20

    .line 78
    .line 79
    sub-float v0, v13, v0

    .line 80
    .line 81
    div-float v0, v0, v21

    .line 82
    .line 83
    :cond_0
    sub-float v22, v13, v0

    .line 84
    .line 85
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    move-object/from16 v23, v0

    .line 92
    .line 93
    check-cast v23, Lcom/github/mikephil/charting/data/PieData;

    .line 94
    .line 95
    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    .line 100
    .line 101
    .line 102
    move-result v24

    .line 103
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawEntryLabelsEnabled()Z

    .line 106
    .line 107
    .line 108
    move-result v25

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    .line 111
    .line 112
    const/high16 v0, 0x40a00000    # 5.0f

    .line 113
    .line 114
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 115
    .line 116
    .line 117
    move-result v26

    .line 118
    const/16 v27, 0x0

    .line 119
    .line 120
    const/4 v0, 0x0

    .line 121
    const/4 v7, 0x0

    .line 122
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-ge v7, v1, :cond_19

    .line 127
    .line 128
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    move-object v6, v1

    .line 133
    check-cast v6, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 134
    .line 135
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawValuesEnabled()Z

    .line 136
    .line 137
    .line 138
    move-result v28

    .line 139
    if-nez v28, :cond_1

    .line 140
    .line 141
    if-nez v25, :cond_1

    .line 142
    .line 143
    move/from16 v32, v0

    .line 144
    .line 145
    move/from16 v38, v7

    .line 146
    .line 147
    move-object/from16 v37, v8

    .line 148
    .line 149
    move/from16 v36, v13

    .line 150
    .line 151
    move/from16 v39, v14

    .line 152
    .line 153
    move-object/from16 v40, v15

    .line 154
    .line 155
    const/4 v0, 0x1

    .line 156
    goto/16 :goto_13

    .line 157
    .line 158
    :cond_1
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getXValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getYValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v9, v6}, Lcom/github/mikephil/charting/renderer/DataRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 170
    .line 171
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 172
    .line 173
    const/4 v3, 0x2

    .line 174
    new-array v3, v3, [J

    .line 175
    .line 176
    fill-array-data v3, :array_0

    .line 177
    .line 178
    .line 179
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-static {v1, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    int-to-float v1, v1

    .line 191
    const/high16 v2, 0x40800000    # 4.0f

    .line 192
    .line 193
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    add-float v29, v2, v1

    .line 198
    .line 199
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    .line 200
    .line 201
    .line 202
    move-result-object v30

    .line 203
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    .line 208
    .line 209
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineColor()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    .line 215
    .line 216
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    .line 217
    .line 218
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineWidth()F

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v9, v6}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F

    .line 230
    .line 231
    .line 232
    move-result v31

    .line 233
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getIconsOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(Lcom/github/mikephil/charting/utils/MPPointF;)Lcom/github/mikephil/charting/utils/MPPointF;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    iget v1, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 242
    .line 243
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    iput v1, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 248
    .line 249
    iget v1, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 250
    .line 251
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    iput v1, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 256
    .line 257
    move/from16 v32, v0

    .line 258
    .line 259
    const/4 v1, 0x0

    .line 260
    :goto_1
    if-ge v1, v3, :cond_18

    .line 261
    .line 262
    invoke-interface {v6, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    move-object/from16 v33, v0

    .line 267
    .line 268
    check-cast v33, Lcom/github/mikephil/charting/data/PieEntry;

    .line 269
    .line 270
    if-nez v32, :cond_2

    .line 271
    .line 272
    const/4 v0, 0x0

    .line 273
    goto :goto_2

    .line 274
    :cond_2
    add-int/lit8 v0, v32, -0x1

    .line 275
    .line 276
    aget v0, v16, v0

    .line 277
    .line 278
    mul-float v0, v0, v17

    .line 279
    .line 280
    :goto_2
    aget v34, v15, v32

    .line 281
    .line 282
    const v35, 0x3c8efa35

    .line 283
    .line 284
    .line 285
    mul-float v36, v22, v35

    .line 286
    .line 287
    div-float v36, v31, v36

    .line 288
    .line 289
    div-float v36, v36, v21

    .line 290
    .line 291
    sub-float v34, v34, v36

    .line 292
    .line 293
    div-float v34, v34, v21

    .line 294
    .line 295
    add-float v34, v34, v0

    .line 296
    .line 297
    mul-float v34, v34, v18

    .line 298
    .line 299
    add-float v0, v34, v14

    .line 300
    .line 301
    iget-object v11, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 302
    .line 303
    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/PieChart;->isUsePercentValuesEnabled()Z

    .line 304
    .line 305
    .line 306
    move-result v11

    .line 307
    if-eqz v11, :cond_3

    .line 308
    .line 309
    invoke-virtual/range {v33 .. v33}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 310
    .line 311
    .line 312
    move-result v11

    .line 313
    div-float v11, v11, v24

    .line 314
    .line 315
    mul-float v11, v11, v19

    .line 316
    .line 317
    :goto_3
    move/from16 v36, v1

    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_3
    invoke-virtual/range {v33 .. v33}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 321
    .line 322
    .line 323
    move-result v11

    .line 324
    goto :goto_3

    .line 325
    :goto_4
    mul-float v1, v0, v35

    .line 326
    .line 327
    move-object/from16 v35, v2

    .line 328
    .line 329
    float-to-double v1, v1

    .line 330
    move/from16 v38, v7

    .line 331
    .line 332
    move-object/from16 v37, v8

    .line 333
    .line 334
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 335
    .line 336
    .line 337
    move-result-wide v7

    .line 338
    double-to-float v8, v7

    .line 339
    move/from16 v39, v14

    .line 340
    .line 341
    move-object/from16 v40, v15

    .line 342
    .line 343
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 344
    .line 345
    .line 346
    move-result-wide v14

    .line 347
    double-to-float v14, v14

    .line 348
    if-eqz v25, :cond_4

    .line 349
    .line 350
    sget-object v7, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->OUTSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 351
    .line 352
    if-ne v5, v7, :cond_4

    .line 353
    .line 354
    const/4 v7, 0x1

    .line 355
    goto :goto_5

    .line 356
    :cond_4
    const/4 v7, 0x0

    .line 357
    :goto_5
    if-eqz v28, :cond_5

    .line 358
    .line 359
    sget-object v15, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->OUTSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 360
    .line 361
    if-ne v4, v15, :cond_5

    .line 362
    .line 363
    const/4 v15, 0x1

    .line 364
    goto :goto_6

    .line 365
    :cond_5
    const/4 v15, 0x0

    .line 366
    :goto_6
    move/from16 v41, v3

    .line 367
    .line 368
    if-eqz v25, :cond_6

    .line 369
    .line 370
    sget-object v3, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->INSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 371
    .line 372
    if-ne v5, v3, :cond_6

    .line 373
    .line 374
    const/16 v42, 0x1

    .line 375
    .line 376
    goto :goto_7

    .line 377
    :cond_6
    const/16 v42, 0x0

    .line 378
    .line 379
    :goto_7
    if-eqz v28, :cond_7

    .line 380
    .line 381
    sget-object v3, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->INSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 382
    .line 383
    if-ne v4, v3, :cond_7

    .line 384
    .line 385
    const/16 v43, 0x1

    .line 386
    .line 387
    goto :goto_8

    .line 388
    :cond_7
    const/16 v43, 0x0

    .line 389
    .line 390
    :goto_8
    if-nez v7, :cond_9

    .line 391
    .line 392
    if-eqz v15, :cond_8

    .line 393
    .line 394
    goto :goto_9

    .line 395
    :cond_8
    move-object/from16 v46, v4

    .line 396
    .line 397
    move-object/from16 v45, v5

    .line 398
    .line 399
    move-object v15, v6

    .line 400
    move/from16 v44, v8

    .line 401
    .line 402
    move/from16 v52, v36

    .line 403
    .line 404
    move/from16 v36, v13

    .line 405
    .line 406
    move/from16 v13, v52

    .line 407
    .line 408
    goto/16 :goto_f

    .line 409
    .line 410
    :cond_9
    :goto_9
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart1Length()F

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart2Length()F

    .line 415
    .line 416
    .line 417
    move-result v44

    .line 418
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart1OffsetPercentage()F

    .line 419
    .line 420
    .line 421
    move-result v45

    .line 422
    move-object/from16 v46, v4

    .line 423
    .line 424
    div-float v4, v45, v19

    .line 425
    .line 426
    move-object/from16 v45, v5

    .line 427
    .line 428
    iget-object v5, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 429
    .line 430
    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    .line 431
    .line 432
    .line 433
    move-result v5

    .line 434
    if-eqz v5, :cond_a

    .line 435
    .line 436
    mul-float v5, v13, v20

    .line 437
    .line 438
    invoke-static {v13, v5, v4, v5}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(FFFF)F

    .line 439
    .line 440
    .line 441
    move-result v4

    .line 442
    goto :goto_a

    .line 443
    :cond_a
    mul-float v4, v4, v13

    .line 444
    .line 445
    :goto_a
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isValueLineVariableLength()Z

    .line 446
    .line 447
    .line 448
    move-result v5

    .line 449
    if-eqz v5, :cond_b

    .line 450
    .line 451
    mul-float v44, v44, v22

    .line 452
    .line 453
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 454
    .line 455
    .line 456
    move-result-wide v1

    .line 457
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 458
    .line 459
    .line 460
    move-result-wide v1

    .line 461
    double-to-float v1, v1

    .line 462
    mul-float v44, v44, v1

    .line 463
    .line 464
    goto :goto_b

    .line 465
    :cond_b
    mul-float v44, v44, v22

    .line 466
    .line 467
    :goto_b
    mul-float v1, v4, v8

    .line 468
    .line 469
    iget v2, v12, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 470
    .line 471
    add-float/2addr v1, v2

    .line 472
    mul-float v4, v4, v14

    .line 473
    .line 474
    iget v5, v12, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 475
    .line 476
    add-float/2addr v4, v5

    .line 477
    const/high16 v47, 0x3f800000    # 1.0f

    .line 478
    .line 479
    add-float v3, v3, v47

    .line 480
    .line 481
    mul-float v3, v3, v22

    .line 482
    .line 483
    mul-float v47, v3, v8

    .line 484
    .line 485
    add-float v47, v47, v2

    .line 486
    .line 487
    mul-float v3, v3, v14

    .line 488
    .line 489
    add-float v48, v3, v5

    .line 490
    .line 491
    float-to-double v2, v0

    .line 492
    const-wide v49, 0x4076800000000000L    # 360.0

    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    rem-double v2, v2, v49

    .line 498
    .line 499
    const-wide v49, 0x4056800000000000L    # 90.0

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    cmpl-double v0, v2, v49

    .line 505
    .line 506
    if-ltz v0, :cond_d

    .line 507
    .line 508
    const-wide v49, 0x4070e00000000000L    # 270.0

    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    cmpg-double v0, v2, v49

    .line 514
    .line 515
    if-gtz v0, :cond_d

    .line 516
    .line 517
    sub-float v0, v47, v44

    .line 518
    .line 519
    iget-object v2, v9, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 520
    .line 521
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 522
    .line 523
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 524
    .line 525
    .line 526
    if-eqz v7, :cond_c

    .line 527
    .line 528
    iget-object v2, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    .line 529
    .line 530
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 531
    .line 532
    .line 533
    :cond_c
    sub-float v2, v0, v26

    .line 534
    .line 535
    move/from16 v44, v0

    .line 536
    .line 537
    move v5, v2

    .line 538
    goto :goto_c

    .line 539
    :cond_d
    add-float v44, v47, v44

    .line 540
    .line 541
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 542
    .line 543
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 544
    .line 545
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 546
    .line 547
    .line 548
    if-eqz v7, :cond_e

    .line 549
    .line 550
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    .line 551
    .line 552
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 553
    .line 554
    .line 555
    :cond_e
    add-float v0, v44, v26

    .line 556
    .line 557
    move v5, v0

    .line 558
    :goto_c
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineColor()I

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    const v2, 0x112233

    .line 563
    .line 564
    .line 565
    if-eq v0, v2, :cond_f

    .line 566
    .line 567
    iget-object v3, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    .line 568
    .line 569
    move-object/from16 v0, p1

    .line 570
    .line 571
    move/from16 v2, v36

    .line 572
    .line 573
    move/from16 v36, v13

    .line 574
    .line 575
    move v13, v2

    .line 576
    move v2, v4

    .line 577
    move-object/from16 v49, v3

    .line 578
    .line 579
    move/from16 v3, v47

    .line 580
    .line 581
    move/from16 v4, v48

    .line 582
    .line 583
    move/from16 v50, v5

    .line 584
    .line 585
    move-object/from16 v5, v49

    .line 586
    .line 587
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 588
    .line 589
    .line 590
    iget-object v5, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    .line 591
    .line 592
    move/from16 v1, v47

    .line 593
    .line 594
    move/from16 v2, v48

    .line 595
    .line 596
    move/from16 v3, v44

    .line 597
    .line 598
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 599
    .line 600
    .line 601
    goto :goto_d

    .line 602
    :cond_f
    move/from16 v50, v5

    .line 603
    .line 604
    move/from16 v52, v36

    .line 605
    .line 606
    move/from16 v36, v13

    .line 607
    .line 608
    move/from16 v13, v52

    .line 609
    .line 610
    :goto_d
    if-eqz v7, :cond_11

    .line 611
    .line 612
    if-eqz v15, :cond_11

    .line 613
    .line 614
    const/4 v5, 0x0

    .line 615
    invoke-interface {v6, v13}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueTextColor(I)I

    .line 616
    .line 617
    .line 618
    move-result v15

    .line 619
    move-object/from16 v0, p0

    .line 620
    .line 621
    move-object/from16 v1, p1

    .line 622
    .line 623
    move-object/from16 v2, v30

    .line 624
    .line 625
    move v3, v11

    .line 626
    move-object/from16 v4, v33

    .line 627
    .line 628
    move-object v7, v6

    .line 629
    move/from16 v6, v50

    .line 630
    .line 631
    move-object/from16 v51, v7

    .line 632
    .line 633
    move/from16 v7, v48

    .line 634
    .line 635
    move/from16 v44, v8

    .line 636
    .line 637
    move v8, v15

    .line 638
    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 639
    .line 640
    .line 641
    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    .line 642
    .line 643
    .line 644
    move-result v0

    .line 645
    if-ge v13, v0, :cond_10

    .line 646
    .line 647
    invoke-virtual/range {v33 .. v33}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    if-eqz v0, :cond_10

    .line 652
    .line 653
    invoke-virtual/range {v33 .. v33}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    add-float v1, v48, v29

    .line 658
    .line 659
    move/from16 v6, v50

    .line 660
    .line 661
    invoke-virtual {v9, v10, v0, v6, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 662
    .line 663
    .line 664
    :cond_10
    :goto_e
    move-object/from16 v15, v51

    .line 665
    .line 666
    goto :goto_f

    .line 667
    :cond_11
    move-object/from16 v51, v6

    .line 668
    .line 669
    move/from16 v44, v8

    .line 670
    .line 671
    move/from16 v6, v50

    .line 672
    .line 673
    if-eqz v7, :cond_12

    .line 674
    .line 675
    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    if-ge v13, v0, :cond_10

    .line 680
    .line 681
    invoke-virtual/range {v33 .. v33}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    if-eqz v0, :cond_10

    .line 686
    .line 687
    invoke-virtual/range {v33 .. v33}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    div-float v1, v29, v21

    .line 692
    .line 693
    add-float v1, v1, v48

    .line 694
    .line 695
    invoke-virtual {v9, v10, v0, v6, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 696
    .line 697
    .line 698
    goto :goto_e

    .line 699
    :cond_12
    if-eqz v15, :cond_10

    .line 700
    .line 701
    div-float v0, v29, v21

    .line 702
    .line 703
    add-float v7, v0, v48

    .line 704
    .line 705
    move-object/from16 v15, v51

    .line 706
    .line 707
    invoke-interface {v15, v13}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueTextColor(I)I

    .line 708
    .line 709
    .line 710
    move-result v8

    .line 711
    const/4 v5, 0x0

    .line 712
    move-object/from16 v0, p0

    .line 713
    .line 714
    move-object/from16 v1, p1

    .line 715
    .line 716
    move-object/from16 v2, v30

    .line 717
    .line 718
    move v3, v11

    .line 719
    move-object/from16 v4, v33

    .line 720
    .line 721
    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 722
    .line 723
    .line 724
    :goto_f
    if-nez v42, :cond_13

    .line 725
    .line 726
    if-eqz v43, :cond_16

    .line 727
    .line 728
    :cond_13
    mul-float v8, v22, v44

    .line 729
    .line 730
    iget v0, v12, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 731
    .line 732
    add-float/2addr v8, v0

    .line 733
    mul-float v0, v22, v14

    .line 734
    .line 735
    iget v1, v12, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 736
    .line 737
    add-float v47, v0, v1

    .line 738
    .line 739
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 740
    .line 741
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 742
    .line 743
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 744
    .line 745
    .line 746
    if-eqz v42, :cond_14

    .line 747
    .line 748
    if-eqz v43, :cond_14

    .line 749
    .line 750
    const/4 v5, 0x0

    .line 751
    invoke-interface {v15, v13}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueTextColor(I)I

    .line 752
    .line 753
    .line 754
    move-result v42

    .line 755
    move-object/from16 v0, p0

    .line 756
    .line 757
    move-object/from16 v1, p1

    .line 758
    .line 759
    move-object/from16 v2, v30

    .line 760
    .line 761
    move v3, v11

    .line 762
    move-object/from16 v4, v33

    .line 763
    .line 764
    move v6, v8

    .line 765
    move/from16 v7, v47

    .line 766
    .line 767
    move v11, v8

    .line 768
    move/from16 v8, v42

    .line 769
    .line 770
    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 771
    .line 772
    .line 773
    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    .line 774
    .line 775
    .line 776
    move-result v0

    .line 777
    if-ge v13, v0, :cond_16

    .line 778
    .line 779
    invoke-virtual/range {v33 .. v33}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    if-eqz v0, :cond_16

    .line 784
    .line 785
    invoke-virtual/range {v33 .. v33}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    add-float v1, v47, v29

    .line 790
    .line 791
    invoke-virtual {v9, v10, v0, v11, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 792
    .line 793
    .line 794
    goto :goto_10

    .line 795
    :cond_14
    if-eqz v42, :cond_15

    .line 796
    .line 797
    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    .line 798
    .line 799
    .line 800
    move-result v0

    .line 801
    if-ge v13, v0, :cond_16

    .line 802
    .line 803
    invoke-virtual/range {v33 .. v33}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    if-eqz v0, :cond_16

    .line 808
    .line 809
    invoke-virtual/range {v33 .. v33}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    div-float v1, v29, v21

    .line 814
    .line 815
    add-float v1, v1, v47

    .line 816
    .line 817
    invoke-virtual {v9, v10, v0, v8, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 818
    .line 819
    .line 820
    goto :goto_10

    .line 821
    :cond_15
    if-eqz v43, :cond_16

    .line 822
    .line 823
    div-float v0, v29, v21

    .line 824
    .line 825
    add-float v7, v0, v47

    .line 826
    .line 827
    invoke-interface {v15, v13}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueTextColor(I)I

    .line 828
    .line 829
    .line 830
    move-result v42

    .line 831
    const/4 v5, 0x0

    .line 832
    move-object/from16 v0, p0

    .line 833
    .line 834
    move-object/from16 v1, p1

    .line 835
    .line 836
    move-object/from16 v2, v30

    .line 837
    .line 838
    move v3, v11

    .line 839
    move-object/from16 v4, v33

    .line 840
    .line 841
    move v6, v8

    .line 842
    move/from16 v8, v42

    .line 843
    .line 844
    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 845
    .line 846
    .line 847
    :cond_16
    :goto_10
    invoke-virtual/range {v33 .. v33}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    if-eqz v0, :cond_17

    .line 852
    .line 853
    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawIconsEnabled()Z

    .line 854
    .line 855
    .line 856
    move-result v0

    .line 857
    if-eqz v0, :cond_17

    .line 858
    .line 859
    invoke-virtual/range {v33 .. v33}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 860
    .line 861
    .line 862
    move-result-object v1

    .line 863
    move-object/from16 v6, v35

    .line 864
    .line 865
    iget v0, v6, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 866
    .line 867
    add-float v2, v22, v0

    .line 868
    .line 869
    mul-float v2, v2, v44

    .line 870
    .line 871
    iget v3, v12, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 872
    .line 873
    add-float/2addr v2, v3

    .line 874
    add-float v0, v22, v0

    .line 875
    .line 876
    mul-float v0, v0, v14

    .line 877
    .line 878
    iget v3, v12, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 879
    .line 880
    add-float/2addr v0, v3

    .line 881
    iget v3, v6, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 882
    .line 883
    add-float/2addr v0, v3

    .line 884
    float-to-int v2, v2

    .line 885
    float-to-int v3, v0

    .line 886
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 887
    .line 888
    .line 889
    move-result v4

    .line 890
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 891
    .line 892
    .line 893
    move-result v5

    .line 894
    move-object/from16 v0, p1

    .line 895
    .line 896
    invoke-static/range {v0 .. v5}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 897
    .line 898
    .line 899
    :goto_11
    const/4 v0, 0x1

    .line 900
    goto :goto_12

    .line 901
    :cond_17
    move-object/from16 v6, v35

    .line 902
    .line 903
    goto :goto_11

    .line 904
    :goto_12
    add-int/lit8 v32, v32, 0x1

    .line 905
    .line 906
    add-int/lit8 v1, v13, 0x1

    .line 907
    .line 908
    move-object v2, v6

    .line 909
    move-object v6, v15

    .line 910
    move/from16 v13, v36

    .line 911
    .line 912
    move-object/from16 v8, v37

    .line 913
    .line 914
    move/from16 v7, v38

    .line 915
    .line 916
    move/from16 v14, v39

    .line 917
    .line 918
    move-object/from16 v15, v40

    .line 919
    .line 920
    move/from16 v3, v41

    .line 921
    .line 922
    move-object/from16 v5, v45

    .line 923
    .line 924
    move-object/from16 v4, v46

    .line 925
    .line 926
    const/4 v11, 0x1

    .line 927
    goto/16 :goto_1

    .line 928
    .line 929
    :cond_18
    move-object v6, v2

    .line 930
    move/from16 v38, v7

    .line 931
    .line 932
    move-object/from16 v37, v8

    .line 933
    .line 934
    move/from16 v36, v13

    .line 935
    .line 936
    move/from16 v39, v14

    .line 937
    .line 938
    move-object/from16 v40, v15

    .line 939
    .line 940
    const/4 v0, 0x1

    .line 941
    invoke-static {v6}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 942
    .line 943
    .line 944
    :goto_13
    add-int/lit8 v7, v38, 0x1

    .line 945
    .line 946
    move/from16 v0, v32

    .line 947
    .line 948
    move/from16 v13, v36

    .line 949
    .line 950
    move-object/from16 v8, v37

    .line 951
    .line 952
    move/from16 v14, v39

    .line 953
    .line 954
    move-object/from16 v15, v40

    .line 955
    .line 956
    const/4 v11, 0x1

    .line 957
    goto/16 :goto_0

    .line 958
    .line 959
    :cond_19
    invoke-static {v12}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 960
    .line 961
    .line 962
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 963
    .line 964
    .line 965
    return-void

    .line 966
    nop

    .line 967
    :array_0
    .array-data 8
        0x42f8b4f0baceeb79L    # 4.3464659127058356E14
        -0x636e5f5174b90d87L    # -4.561390134232227E-171
    .end array-data
.end method

.method public getPaintCenterText()Landroid/text/TextPaint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPaintEntryLabels()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPaintHole()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPaintTransparentCircle()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isAutomaticallyDisableSliceSpacingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getSmallestContentExtension()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    div-float/2addr v0, v1

    .line 23
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/github/mikephil/charting/data/PieData;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    div-float/2addr v1, v2

    .line 40
    const/high16 v2, 0x40000000    # 2.0f

    .line 41
    .line 42
    mul-float v1, v1, v2

    .line 43
    .line 44
    cmpl-float v0, v0, v1

    .line 45
    .line 46
    if-lez v0, :cond_1

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    :goto_0
    return p1
.end method

.method public initBuffers()V
    .locals 0

    return-void
.end method

.method public releaseBitmap()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

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
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

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
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    :cond_1
    return-void
.end method
