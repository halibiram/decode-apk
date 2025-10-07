.class public abstract Lcom/github/mikephil/charting/charts/PieRadarChartBase;
.super Lcom/github/mikephil/charting/charts/Chart;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/ChartData<",
        "+",
        "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet<",
        "+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Lcom/github/mikephil/charting/charts/Chart<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mMinOffset:F

.field private mRawRotationAngle:F

.field protected mRotateEnabled:Z

.field private mRotationAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x43870000    # 270.0f

    .line 2
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    .line 3
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mMinOffset:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x43870000    # 270.0f

    .line 7
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    .line 8
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mMinOffset:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x43870000    # 270.0f

    .line 12
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    .line 13
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mMinOffset:F

    return-void
.end method


# virtual methods
.method public calcMinMax()V
    .locals 0

    return-void
.end method

.method public calculateOffsets()V
    .locals 13

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v1, :cond_11

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_11

    .line 12
    .line 13
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->isDrawInsideEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_11

    .line 20
    .line 21
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 22
    .line 23
    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 24
    .line 25
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    mul-float v4, v4, v3

    .line 38
    .line 39
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sget-object v3, Lcom/github/mikephil/charting/charts/PieRadarChartBase$2;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation:[I

    .line 44
    .line 45
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/Legend;->getOrientation()Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    aget v3, v3, v4

    .line 56
    .line 57
    const/4 v4, 0x2

    .line 58
    const/4 v5, 0x1

    .line 59
    if-eq v3, v5, :cond_5

    .line 60
    .line 61
    if-eq v3, v4, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 71
    .line 72
    if-eq v1, v3, :cond_1

    .line 73
    .line 74
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->BOTTOM:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 81
    .line 82
    if-ne v1, v3, :cond_2

    .line 83
    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredLegendOffset()F

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 89
    .line 90
    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 91
    .line 92
    add-float/2addr v3, v1

    .line 93
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 100
    .line 101
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    mul-float v6, v6, v1

    .line 106
    .line 107
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    sget-object v3, Lcom/github/mikephil/charting/charts/PieRadarChartBase$2;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment:[I

    .line 112
    .line 113
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 114
    .line 115
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/Legend;->getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    aget v3, v3, v6

    .line 124
    .line 125
    if-eq v3, v5, :cond_3

    .line 126
    .line 127
    if-eq v3, v4, :cond_4

    .line 128
    .line 129
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 130
    :cond_3
    const/4 v3, 0x0

    .line 131
    const/4 v4, 0x0

    .line 132
    goto/16 :goto_9

    .line 133
    .line 134
    :cond_4
    move v4, v1

    .line 135
    const/4 v1, 0x0

    .line 136
    const/4 v3, 0x0

    .line 137
    goto/16 :goto_9

    .line 138
    .line 139
    :cond_5
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 140
    .line 141
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getHorizontalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    sget-object v6, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 146
    .line 147
    if-eq v3, v6, :cond_7

    .line 148
    .line 149
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getHorizontalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    sget-object v6, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 156
    .line 157
    if-ne v3, v6, :cond_6

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_6
    const/4 v3, 0x0

    .line 161
    goto/16 :goto_4

    .line 162
    .line 163
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 164
    .line 165
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    sget-object v6, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 170
    .line 171
    if-ne v3, v6, :cond_8

    .line 172
    .line 173
    const/high16 v3, 0x41500000    # 13.0f

    .line 174
    .line 175
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    add-float/2addr v3, v1

    .line 180
    goto :goto_4

    .line 181
    :cond_8
    const/high16 v3, 0x41000000    # 8.0f

    .line 182
    .line 183
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    add-float/2addr v3, v1

    .line 188
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 189
    .line 190
    iget v6, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 191
    .line 192
    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    .line 193
    .line 194
    add-float/2addr v6, v1

    .line 195
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenter()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 200
    .line 201
    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend;->getHorizontalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    sget-object v8, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 206
    .line 207
    const/high16 v9, 0x41700000    # 15.0f

    .line 208
    .line 209
    if-ne v7, v8, :cond_9

    .line 210
    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    int-to-float v7, v7

    .line 216
    sub-float/2addr v7, v3

    .line 217
    add-float/2addr v7, v9

    .line 218
    goto :goto_2

    .line 219
    :cond_9
    sub-float v7, v3, v9

    .line 220
    .line 221
    :goto_2
    add-float/2addr v6, v9

    .line 222
    invoke-virtual {p0, v7, v6}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->distanceToCenter(FF)F

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRadius()F

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    invoke-virtual {p0, v7, v6}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getAngleForPoint(FF)F

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    invoke-virtual {p0, v1, v9, v7}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FF)Lcom/github/mikephil/charting/utils/MPPointF;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    iget v9, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 239
    .line 240
    iget v10, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 241
    .line 242
    invoke-virtual {p0, v9, v10}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->distanceToCenter(FF)F

    .line 243
    .line 244
    .line 245
    move-result v9

    .line 246
    const/high16 v10, 0x40a00000    # 5.0f

    .line 247
    .line 248
    invoke-static {v10}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 249
    .line 250
    .line 251
    move-result v10

    .line 252
    iget v11, v1, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 253
    .line 254
    cmpl-float v6, v6, v11

    .line 255
    .line 256
    if-ltz v6, :cond_a

    .line 257
    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    int-to-float v6, v6

    .line 263
    sub-float/2addr v6, v3

    .line 264
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 265
    .line 266
    .line 267
    move-result v11

    .line 268
    int-to-float v11, v11

    .line 269
    cmpl-float v6, v6, v11

    .line 270
    .line 271
    if-lez v6, :cond_a

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_a
    cmpg-float v3, v8, v9

    .line 275
    .line 276
    if-gez v3, :cond_b

    .line 277
    .line 278
    sub-float/2addr v9, v8

    .line 279
    add-float/2addr v9, v10

    .line 280
    move v3, v9

    .line 281
    goto :goto_3

    .line 282
    :cond_b
    const/4 v3, 0x0

    .line 283
    :goto_3
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 284
    .line 285
    .line 286
    invoke-static {v7}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 287
    .line 288
    .line 289
    :goto_4
    sget-object v1, Lcom/github/mikephil/charting/charts/PieRadarChartBase$2;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment:[I

    .line 290
    .line 291
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 292
    .line 293
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/Legend;->getHorizontalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    aget v1, v1, v6

    .line 302
    .line 303
    if-eq v1, v5, :cond_10

    .line 304
    .line 305
    if-eq v1, v4, :cond_f

    .line 306
    .line 307
    if-eq v1, v0, :cond_c

    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_c
    sget-object v1, Lcom/github/mikephil/charting/charts/PieRadarChartBase$2;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment:[I

    .line 311
    .line 312
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 313
    .line 314
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    aget v1, v1, v3

    .line 323
    .line 324
    if-eq v1, v5, :cond_e

    .line 325
    .line 326
    if-eq v1, v4, :cond_d

    .line 327
    .line 328
    :goto_5
    const/4 v1, 0x0

    .line 329
    :goto_6
    const/4 v3, 0x0

    .line 330
    :goto_7
    const/4 v4, 0x0

    .line 331
    goto :goto_8

    .line 332
    :cond_d
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 333
    .line 334
    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 335
    .line 336
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 337
    .line 338
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 343
    .line 344
    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    mul-float v4, v4, v3

    .line 349
    .line 350
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    goto :goto_6

    .line 355
    :cond_e
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 356
    .line 357
    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 358
    .line 359
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 360
    .line 361
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 366
    .line 367
    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    mul-float v4, v4, v3

    .line 372
    .line 373
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    move v4, v1

    .line 378
    const/4 v1, 0x0

    .line 379
    const/4 v3, 0x0

    .line 380
    goto :goto_8

    .line 381
    :cond_f
    const/4 v1, 0x0

    .line 382
    goto :goto_7

    .line 383
    :cond_10
    move v2, v3

    .line 384
    goto :goto_5

    .line 385
    :goto_8
    move v12, v4

    .line 386
    move v4, v1

    .line 387
    move v1, v12

    .line 388
    :goto_9
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    .line 389
    .line 390
    .line 391
    move-result v5

    .line 392
    add-float/2addr v2, v5

    .line 393
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    .line 394
    .line 395
    .line 396
    move-result v5

    .line 397
    add-float/2addr v3, v5

    .line 398
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    add-float/2addr v1, v5

    .line 403
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    add-float/2addr v4, v5

    .line 408
    goto :goto_a

    .line 409
    :cond_11
    const/4 v1, 0x0

    .line 410
    const/4 v3, 0x0

    .line 411
    const/4 v4, 0x0

    .line 412
    :goto_a
    iget v5, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mMinOffset:F

    .line 413
    .line 414
    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    instance-of v6, p0, Lcom/github/mikephil/charting/charts/RadarChart;

    .line 419
    .line 420
    if-eqz v6, :cond_12

    .line 421
    .line 422
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    .line 423
    .line 424
    .line 425
    move-result-object v6

    .line 426
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 427
    .line 428
    .line 429
    move-result v7

    .line 430
    if-eqz v7, :cond_12

    .line 431
    .line 432
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/AxisBase;->isDrawLabelsEnabled()Z

    .line 433
    .line 434
    .line 435
    move-result v7

    .line 436
    if-eqz v7, :cond_12

    .line 437
    .line 438
    iget v6, v6, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedWidth:I

    .line 439
    .line 440
    int-to-float v6, v6

    .line 441
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    :cond_12
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraTopOffset()F

    .line 446
    .line 447
    .line 448
    move-result v6

    .line 449
    add-float/2addr v6, v1

    .line 450
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraRightOffset()F

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    add-float/2addr v1, v3

    .line 455
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraBottomOffset()F

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    add-float/2addr v3, v4

    .line 460
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraLeftOffset()F

    .line 461
    .line 462
    .line 463
    move-result v4

    .line 464
    add-float/2addr v4, v2

    .line 465
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    .line 478
    .line 479
    .line 480
    move-result v6

    .line 481
    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 490
    .line 491
    invoke-virtual {v5, v2, v4, v1, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->restrainViewPort(FFFF)V

    .line 492
    .line 493
    .line 494
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 495
    .line 496
    if-eqz v1, :cond_13

    .line 497
    .line 498
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 499
    .line 500
    new-array v2, v0, [J

    .line 501
    .line 502
    fill-array-data v2, :array_0

    .line 503
    .line 504
    .line 505
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 512
    .line 513
    new-array v2, v0, [J

    .line 514
    .line 515
    fill-array-data v2, :array_1

    .line 516
    .line 517
    .line 518
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 525
    .line 526
    new-array v2, v0, [J

    .line 527
    .line 528
    fill-array-data v2, :array_2

    .line 529
    .line 530
    .line 531
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 538
    .line 539
    new-array v2, v0, [J

    .line 540
    .line 541
    fill-array-data v2, :array_3

    .line 542
    .line 543
    .line 544
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 551
    .line 552
    new-array v0, v0, [J

    .line 553
    .line 554
    fill-array-data v0, :array_4

    .line 555
    .line 556
    .line 557
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    :cond_13
    return-void

    .line 564
    nop

    .line 565
    :array_0
    .array-data 8
        -0x23cd543290ad76c8L    # -1.357088100340603E136
        -0x367893ed4a6ac031L    # -1.6714612252628886E46
        0x2fbd93f38e6cd132L    # 9.978126298851976E-79
    .end array-data

    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    :array_1
    .array-data 8
        -0x587b85f1fdb5baceL    # -2.5375423419169996E-118
        -0x21c32cd4b3613f19L    # -8.99840256199793E145
        -0x447d9016486ba551L    # -4.880275614176613E-22
    .end array-data

    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    :array_2
    .array-data 8
        0x14124486986c9ca7L    # 5.426332817498858E-212
        -0x67805da5710d48c0L
        -0x36f086d4b63f403fL    # -8.773480224105298E43
    .end array-data

    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    :array_3
    .array-data 8
        0x765909a9c4dccab5L    # 1.231888743466677E262
        -0x2c999755ce53b64L    # -1.430653648092828E295
        -0x437f36a9795eb817L    # -2.911989491627567E-17
    .end array-data

    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    :array_4
    .array-data 8
        -0x47dd5d2e5eb24da9L    # -2.738315736131273E-38
        0x6e49b22132b84fL
        -0x214fa08fe05aab0aL    # -1.308461544678569E148
    .end array-data
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->computeScroll()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public distanceToCenter(FF)F
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 6
    .line 7
    cmpl-float v2, p1, v1

    .line 8
    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    sub-float/2addr p1, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sub-float p1, v1, p1

    .line 14
    .line 15
    :goto_0
    iget v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 16
    .line 17
    cmpl-float v2, p2, v1

    .line 18
    .line 19
    if-lez v2, :cond_1

    .line 20
    .line 21
    sub-float/2addr p2, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    sub-float p2, v1, p2

    .line 24
    .line 25
    :goto_1
    float-to-double v1, p1

    .line 26
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 27
    .line 28
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    float-to-double p1, p2

    .line 33
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 34
    .line 35
    .line 36
    move-result-wide p1

    .line 37
    add-double/2addr p1, v1

    .line 38
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    double-to-float p1, p1

    .line 43
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 44
    .line 45
    .line 46
    return p1
.end method

.method public getAngleForPoint(FF)F
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 6
    .line 7
    sub-float v1, p1, v1

    .line 8
    .line 9
    float-to-double v1, v1

    .line 10
    iget v3, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 11
    .line 12
    sub-float/2addr p2, v3

    .line 13
    float-to-double v3, p2

    .line 14
    mul-double v1, v1, v1

    .line 15
    .line 16
    mul-double v5, v3, v3

    .line 17
    .line 18
    add-double/2addr v5, v1

    .line 19
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    div-double/2addr v3, v1

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    double-to-float p2, v1

    .line 33
    iget v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 34
    .line 35
    const/high16 v2, 0x43b40000    # 360.0f

    .line 36
    .line 37
    cmpl-float p1, p1, v1

    .line 38
    .line 39
    if-lez p1, :cond_0

    .line 40
    .line 41
    sub-float p2, v2, p2

    .line 42
    .line 43
    :cond_0
    const/high16 p1, 0x42b40000    # 90.0f

    .line 44
    .line 45
    add-float/2addr p2, p1

    .line 46
    cmpl-float p1, p2, v2

    .line 47
    .line 48
    if-lez p1, :cond_1

    .line 49
    .line 50
    sub-float/2addr p2, v2

    .line 51
    :cond_1
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 52
    .line 53
    .line 54
    return p2
.end method

.method public getDiameter()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraLeftOffset()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-float/2addr v2, v1

    .line 14
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 15
    .line 16
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraTopOffset()F

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-float/2addr v2, v1

    .line 23
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 24
    .line 25
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraRightOffset()F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    sub-float/2addr v1, v2

    .line 32
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 33
    .line 34
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraBottomOffset()F

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    sub-float/2addr v1, v2

    .line 41
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    return v0
.end method

.method public abstract getIndexForAngle(F)I
.end method

.method public getMaxVisibleCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMinOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mMinOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FF)Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    return-object v0
.end method

.method public getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FFLcom/github/mikephil/charting/utils/MPPointF;)V
    .locals 6

    .line 3
    iget v0, p1, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    float-to-double v0, v0

    float-to-double v2, p2

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    add-double/2addr v4, v0

    double-to-float v0, v4

    iput v0, p4, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 4
    iget p1, p1, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    float-to-double v0, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double p1, p1, v2

    add-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p4, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    return-void
.end method

.method public abstract getRadius()F
.end method

.method public getRawRotationAngle()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    .line 2
    .line 3
    return v0
.end method

.method public abstract getRequiredBaseOffset()F
.end method

.method public abstract getRequiredLegendOffset()F
.end method

.method public getRotationAngle()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    .line 2
    .line 3
    return v0
.end method

.method public getYChartMax()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getYChartMin()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 10
    .line 11
    return-void
.end method

.method public isRotationEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->calcMinMax()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computeLegend(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->calculateOffsets()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public setMinOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mMinOffset:F

    .line 2
    .line 3
    return-void
.end method

.method public setRotationAngle(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    .line 2
    .line 3
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->getNormalizedAngle(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    .line 8
    .line 9
    return-void
.end method

.method public setRotationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public spin(IFFLcom/github/mikephil/charting/animation/Easing$EasingOption;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->setRotationAngle(F)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x2

    .line 20
    new-array v1, v1, [F

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    aput p2, v1, v2

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    aput p3, v1, p2

    .line 27
    .line 28
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    int-to-long v0, p1

    .line 33
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 34
    .line 35
    .line 36
    invoke-static {p4}, Lcom/github/mikephil/charting/animation/Easing;->getEasingFunctionFromOption(Lcom/github/mikephil/charting/animation/Easing$EasingOption;)Lcom/github/mikephil/charting/animation/EasingFunction;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lcom/github/mikephil/charting/charts/PieRadarChartBase$1;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase$1;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :array_0
    .array-data 8
        0x6f547ca3e71c31afL    # 1.9412991686578152E228
        -0x7750a6b7c07c81afL    # -7.595462139168396E-267
        0x466e583e6cef9e6dL    # 1.923324019303034E31
    .end array-data
.end method
