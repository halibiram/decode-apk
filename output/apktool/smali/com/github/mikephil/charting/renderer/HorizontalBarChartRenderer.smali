.class public Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.source "SourceFile"


# instance fields
.field private mBarShadowRectBuffer:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 12
    .line 13
    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
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
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 130
    .line 131
    sub-float v14, v12, v9

    .line 132
    .line 133
    iput v14, v13, Landroid/graphics/RectF;->top:F

    .line 134
    .line 135
    add-float/2addr v12, v9

    .line 136
    iput v12, v13, Landroid/graphics/RectF;->bottom:F

    .line 137
    .line 138
    invoke-virtual {v3, v13}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixel(Landroid/graphics/RectF;)V

    .line 139
    .line 140
    .line 141
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 142
    .line 143
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 144
    .line 145
    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    .line 146
    .line 147
    invoke-virtual {v12, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

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
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 159
    .line 160
    iget v13, v13, Landroid/graphics/RectF;->top:F

    .line 161
    .line 162
    invoke-virtual {v12, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

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
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 172
    .line 173
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 174
    .line 175
    invoke-virtual {v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    .line 176
    .line 177
    .line 178
    move-result v13

    .line 179
    iput v13, v12, Landroid/graphics/RectF;->left:F

    .line 180
    .line 181
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 182
    .line 183
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 184
    .line 185
    invoke-virtual {v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    iput v13, v12, Landroid/graphics/RectF;->right:F

    .line 190
    .line 191
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

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
    add-int/lit8 v5, v6, 0x3

    .line 281
    .line 282
    aget v3, v3, v5

    .line 283
    .line 284
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-nez v2, :cond_6

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_6
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 292
    .line 293
    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 294
    .line 295
    add-int/lit8 v8, v6, 0x1

    .line 296
    .line 297
    aget v3, v3, v8

    .line 298
    .line 299
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-nez v2, :cond_7

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_7
    if-nez v7, :cond_8

    .line 307
    .line 308
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 309
    .line 310
    div-int/lit8 v3, v6, 0x4

    .line 311
    .line 312
    invoke-interface {v1, v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColor(I)I

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    .line 318
    .line 319
    :cond_8
    iget-object v2, v9, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 320
    .line 321
    aget v3, v2, v6

    .line 322
    .line 323
    aget v16, v2, v8

    .line 324
    .line 325
    add-int/lit8 v10, v6, 0x2

    .line 326
    .line 327
    aget v17, v2, v10

    .line 328
    .line 329
    aget v18, v2, v5

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
    aget v17, v2, v10

    .line 350
    .line 351
    aget v18, v2, v5

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

.method public drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p5, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 42

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    const/4 v7, 0x1

    .line 4
    const/4 v8, 0x2

    .line 5
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 6
    .line 7
    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2a

    .line 12
    .line 13
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

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
    move-result-object v9

    .line 23
    const/high16 v0, 0x40a00000    # 5.0f

    .line 24
    .line 25
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawValueAboveBarEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v11

    .line 35
    const/4 v13, 0x0

    .line 36
    :goto_0
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

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
    if-ge v13, v0, :cond_2a

    .line 47
    .line 48
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v14, v0

    .line 53
    check-cast v14, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 54
    .line 55
    invoke-virtual {v6, v14}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->shouldDrawValues(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    move-object/from16 v24, v9

    .line 62
    .line 63
    const/4 v0, 0x2

    .line 64
    const/4 v1, 0x1

    .line 65
    goto/16 :goto_1e

    .line 66
    .line 67
    :cond_0
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 68
    .line 69
    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    .line 74
    .line 75
    .line 76
    move-result v15

    .line 77
    invoke-virtual {v6, v14}, Lcom/github/mikephil/charting/renderer/DataRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 81
    .line 82
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v2, v8, [J

    .line 85
    .line 86
    fill-array-data v2, :array_0

    .line 87
    .line 88
    .line 89
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    int-to-float v0, v0

    .line 101
    const/high16 v16, 0x40000000    # 2.0f

    .line 102
    .line 103
    div-float v17, v0, v16

    .line 104
    .line 105
    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 110
    .line 111
    aget-object v4, v0, v13

    .line 112
    .line 113
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    .line 116
    .line 117
    .line 118
    move-result v18

    .line 119
    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getIconsOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(Lcom/github/mikephil/charting/utils/MPPointF;)Lcom/github/mikephil/charting/utils/MPPointF;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iget v0, v3, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 128
    .line 129
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    iput v0, v3, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 134
    .line 135
    iget v0, v3, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 136
    .line 137
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    iput v0, v3, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 142
    .line 143
    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    const/16 v19, 0x0

    .line 148
    .line 149
    if-nez v0, :cond_d

    .line 150
    .line 151
    const/4 v2, 0x0

    .line 152
    :goto_1
    int-to-float v0, v2

    .line 153
    iget-object v1, v4, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 154
    .line 155
    array-length v1, v1

    .line 156
    int-to-float v1, v1

    .line 157
    iget-object v12, v6, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 158
    .line 159
    invoke-virtual {v12}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    .line 160
    .line 161
    .line 162
    move-result v12

    .line 163
    mul-float v12, v12, v1

    .line 164
    .line 165
    cmpg-float v0, v0, v12

    .line 166
    .line 167
    if-gez v0, :cond_1

    .line 168
    .line 169
    iget-object v0, v4, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 170
    .line 171
    add-int/lit8 v1, v2, 0x1

    .line 172
    .line 173
    aget v12, v0, v1

    .line 174
    .line 175
    add-int/lit8 v18, v2, 0x3

    .line 176
    .line 177
    aget v0, v0, v18

    .line 178
    .line 179
    add-float/2addr v0, v12

    .line 180
    div-float v18, v0, v16

    .line 181
    .line 182
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 183
    .line 184
    invoke-virtual {v0, v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-nez v0, :cond_2

    .line 189
    .line 190
    :cond_1
    move-object v7, v3

    .line 191
    move-object/from16 v24, v9

    .line 192
    .line 193
    goto/16 :goto_8

    .line 194
    .line 195
    :cond_2
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 196
    .line 197
    iget-object v12, v4, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 198
    .line 199
    aget v12, v12, v2

    .line 200
    .line 201
    invoke-virtual {v0, v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_3

    .line 206
    .line 207
    :goto_2
    move/from16 v27, v2

    .line 208
    .line 209
    move-object v7, v3

    .line 210
    move-object v8, v4

    .line 211
    move-object/from16 v24, v9

    .line 212
    .line 213
    move-object v9, v5

    .line 214
    goto/16 :goto_7

    .line 215
    .line 216
    :cond_3
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 217
    .line 218
    iget-object v12, v4, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 219
    .line 220
    aget v1, v12, v1

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-nez v0, :cond_4

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_4
    div-int/lit8 v0, v2, 0x4

    .line 230
    .line 231
    invoke-interface {v14, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    move-object v12, v0

    .line 236
    check-cast v12, Lcom/github/mikephil/charting/data/BarEntry;

    .line 237
    .line 238
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 243
    .line 244
    invoke-interface {v5, v1, v12, v13, v0}, Lcom/github/mikephil/charting/formatter/IValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iget-object v7, v6, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 249
    .line 250
    invoke-static {v7, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    int-to-float v7, v7

    .line 255
    if-eqz v11, :cond_5

    .line 256
    .line 257
    move v8, v10

    .line 258
    goto :goto_3

    .line 259
    :cond_5
    add-float v8, v7, v10

    .line 260
    .line 261
    neg-float v8, v8

    .line 262
    :goto_3
    move-object/from16 v22, v0

    .line 263
    .line 264
    if-eqz v11, :cond_6

    .line 265
    .line 266
    add-float v0, v7, v10

    .line 267
    .line 268
    neg-float v0, v0

    .line 269
    goto :goto_4

    .line 270
    :cond_6
    move v0, v10

    .line 271
    :goto_4
    if-eqz v15, :cond_7

    .line 272
    .line 273
    neg-float v8, v8

    .line 274
    sub-float/2addr v8, v7

    .line 275
    neg-float v0, v0

    .line 276
    sub-float/2addr v0, v7

    .line 277
    :cond_7
    move v7, v0

    .line 278
    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawValuesEnabled()Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_9

    .line 283
    .line 284
    iget-object v0, v4, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 285
    .line 286
    const/16 v21, 0x2

    .line 287
    .line 288
    add-int/lit8 v23, v2, 0x2

    .line 289
    .line 290
    aget v0, v0, v23

    .line 291
    .line 292
    cmpl-float v23, v1, v19

    .line 293
    .line 294
    if-ltz v23, :cond_8

    .line 295
    .line 296
    move/from16 v23, v8

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_8
    move/from16 v23, v7

    .line 300
    .line 301
    :goto_5
    add-float v23, v0, v23

    .line 302
    .line 303
    add-float v24, v18, v17

    .line 304
    .line 305
    div-int/lit8 v0, v2, 0x2

    .line 306
    .line 307
    invoke-interface {v14, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueTextColor(I)I

    .line 308
    .line 309
    .line 310
    move-result v25

    .line 311
    move-object/from16 v0, p0

    .line 312
    .line 313
    move/from16 v26, v1

    .line 314
    .line 315
    move-object/from16 v1, p1

    .line 316
    .line 317
    move/from16 v27, v2

    .line 318
    .line 319
    move-object/from16 v2, v22

    .line 320
    .line 321
    move/from16 v22, v7

    .line 322
    .line 323
    move-object v7, v3

    .line 324
    move/from16 v3, v23

    .line 325
    .line 326
    move/from16 v23, v8

    .line 327
    .line 328
    move-object v8, v4

    .line 329
    move/from16 v4, v24

    .line 330
    .line 331
    move-object/from16 v24, v9

    .line 332
    .line 333
    move-object v9, v5

    .line 334
    move/from16 v5, v25

    .line 335
    .line 336
    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    .line 337
    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_9
    move/from16 v26, v1

    .line 341
    .line 342
    move/from16 v27, v2

    .line 343
    .line 344
    move/from16 v22, v7

    .line 345
    .line 346
    move/from16 v23, v8

    .line 347
    .line 348
    move-object/from16 v24, v9

    .line 349
    .line 350
    move-object v7, v3

    .line 351
    move-object v8, v4

    .line 352
    move-object v9, v5

    .line 353
    :goto_6
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    if-eqz v0, :cond_b

    .line 358
    .line 359
    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawIconsEnabled()Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-eqz v0, :cond_b

    .line 364
    .line 365
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 366
    .line 367
    .line 368
    move-result-object v29

    .line 369
    iget-object v0, v8, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 370
    .line 371
    const/4 v1, 0x2

    .line 372
    add-int/lit8 v2, v27, 0x2

    .line 373
    .line 374
    aget v0, v0, v2

    .line 375
    .line 376
    cmpl-float v1, v26, v19

    .line 377
    .line 378
    if-ltz v1, :cond_a

    .line 379
    .line 380
    move/from16 v22, v23

    .line 381
    .line 382
    :cond_a
    add-float v0, v0, v22

    .line 383
    .line 384
    iget v1, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 385
    .line 386
    add-float/2addr v0, v1

    .line 387
    iget v1, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 388
    .line 389
    add-float v1, v18, v1

    .line 390
    .line 391
    float-to-int v0, v0

    .line 392
    float-to-int v1, v1

    .line 393
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 394
    .line 395
    .line 396
    move-result v32

    .line 397
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 398
    .line 399
    .line 400
    move-result v33

    .line 401
    move-object/from16 v28, p1

    .line 402
    .line 403
    move/from16 v30, v0

    .line 404
    .line 405
    move/from16 v31, v1

    .line 406
    .line 407
    invoke-static/range {v28 .. v33}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 408
    .line 409
    .line 410
    :cond_b
    :goto_7
    add-int/lit8 v2, v27, 0x4

    .line 411
    .line 412
    move-object v3, v7

    .line 413
    move-object v4, v8

    .line 414
    move-object v5, v9

    .line 415
    move-object/from16 v9, v24

    .line 416
    .line 417
    const/4 v7, 0x1

    .line 418
    const/4 v8, 0x2

    .line 419
    goto/16 :goto_1

    .line 420
    .line 421
    :cond_c
    :goto_8
    const/4 v0, 0x2

    .line 422
    const/4 v1, 0x1

    .line 423
    goto/16 :goto_1d

    .line 424
    .line 425
    :cond_d
    move-object v7, v3

    .line 426
    move-object v8, v4

    .line 427
    move-object/from16 v24, v9

    .line 428
    .line 429
    move-object v9, v5

    .line 430
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 431
    .line 432
    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    .line 437
    .line 438
    .line 439
    move-result-object v12

    .line 440
    const/4 v5, 0x0

    .line 441
    const/16 v22, 0x0

    .line 442
    .line 443
    :goto_9
    int-to-float v0, v5

    .line 444
    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    int-to-float v1, v1

    .line 449
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 450
    .line 451
    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    mul-float v2, v2, v1

    .line 456
    .line 457
    cmpg-float v0, v0, v2

    .line 458
    .line 459
    if-gez v0, :cond_c

    .line 460
    .line 461
    invoke-interface {v14, v5}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    move-object v4, v0

    .line 466
    check-cast v4, Lcom/github/mikephil/charting/data/BarEntry;

    .line 467
    .line 468
    invoke-interface {v14, v5}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueTextColor(I)I

    .line 469
    .line 470
    .line 471
    move-result v23

    .line 472
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    if-nez v3, :cond_18

    .line 477
    .line 478
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 479
    .line 480
    iget-object v1, v8, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 481
    .line 482
    const/4 v2, 0x1

    .line 483
    add-int/lit8 v25, v22, 0x1

    .line 484
    .line 485
    aget v1, v1, v25

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-nez v0, :cond_e

    .line 492
    .line 493
    goto :goto_8

    .line 494
    :cond_e
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 495
    .line 496
    iget-object v1, v8, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 497
    .line 498
    aget v1, v1, v22

    .line 499
    .line 500
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    if-nez v0, :cond_f

    .line 505
    .line 506
    goto :goto_9

    .line 507
    :cond_f
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 508
    .line 509
    iget-object v1, v8, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 510
    .line 511
    aget v1, v1, v25

    .line 512
    .line 513
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-nez v0, :cond_10

    .line 518
    .line 519
    goto :goto_9

    .line 520
    :cond_10
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    .line 521
    .line 522
    .line 523
    move-result v0

    .line 524
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 525
    .line 526
    invoke-interface {v9, v0, v4, v13, v1}, Lcom/github/mikephil/charting/formatter/IValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 531
    .line 532
    invoke-static {v0, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    int-to-float v0, v0

    .line 537
    if-eqz v11, :cond_11

    .line 538
    .line 539
    move v1, v10

    .line 540
    goto :goto_a

    .line 541
    :cond_11
    add-float v1, v0, v10

    .line 542
    .line 543
    neg-float v1, v1

    .line 544
    :goto_a
    move-object/from16 v26, v3

    .line 545
    .line 546
    if-eqz v11, :cond_12

    .line 547
    .line 548
    add-float v3, v0, v10

    .line 549
    .line 550
    neg-float v3, v3

    .line 551
    goto :goto_b

    .line 552
    :cond_12
    move v3, v10

    .line 553
    :goto_b
    if-eqz v15, :cond_13

    .line 554
    .line 555
    neg-float v1, v1

    .line 556
    sub-float/2addr v1, v0

    .line 557
    neg-float v3, v3

    .line 558
    sub-float/2addr v3, v0

    .line 559
    :cond_13
    move/from16 v27, v1

    .line 560
    .line 561
    move/from16 v28, v3

    .line 562
    .line 563
    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawValuesEnabled()Z

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    if-eqz v0, :cond_15

    .line 568
    .line 569
    iget-object v0, v8, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 570
    .line 571
    const/4 v1, 0x2

    .line 572
    add-int/lit8 v3, v22, 0x2

    .line 573
    .line 574
    aget v0, v0, v3

    .line 575
    .line 576
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    .line 577
    .line 578
    .line 579
    move-result v1

    .line 580
    cmpl-float v1, v1, v19

    .line 581
    .line 582
    if-ltz v1, :cond_14

    .line 583
    .line 584
    move/from16 v1, v27

    .line 585
    .line 586
    goto :goto_c

    .line 587
    :cond_14
    move/from16 v1, v28

    .line 588
    .line 589
    :goto_c
    add-float v3, v0, v1

    .line 590
    .line 591
    iget-object v0, v8, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 592
    .line 593
    aget v0, v0, v25

    .line 594
    .line 595
    add-float v29, v0, v17

    .line 596
    .line 597
    move-object/from16 v0, p0

    .line 598
    .line 599
    move-object/from16 v1, p1

    .line 600
    .line 601
    move/from16 v30, v15

    .line 602
    .line 603
    move-object/from16 v15, v26

    .line 604
    .line 605
    move-object/from16 v26, v4

    .line 606
    .line 607
    move/from16 v4, v29

    .line 608
    .line 609
    move/from16 v29, v5

    .line 610
    .line 611
    move/from16 v5, v23

    .line 612
    .line 613
    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    .line 614
    .line 615
    .line 616
    goto :goto_d

    .line 617
    :cond_15
    move/from16 v29, v5

    .line 618
    .line 619
    move/from16 v30, v15

    .line 620
    .line 621
    move-object/from16 v15, v26

    .line 622
    .line 623
    move-object/from16 v26, v4

    .line 624
    .line 625
    :goto_d
    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    if-eqz v0, :cond_17

    .line 630
    .line 631
    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawIconsEnabled()Z

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    if-eqz v0, :cond_17

    .line 636
    .line 637
    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 638
    .line 639
    .line 640
    move-result-object v32

    .line 641
    iget-object v0, v8, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 642
    .line 643
    const/4 v1, 0x2

    .line 644
    add-int/lit8 v2, v22, 0x2

    .line 645
    .line 646
    aget v0, v0, v2

    .line 647
    .line 648
    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    .line 649
    .line 650
    .line 651
    move-result v1

    .line 652
    cmpl-float v1, v1, v19

    .line 653
    .line 654
    if-ltz v1, :cond_16

    .line 655
    .line 656
    goto :goto_e

    .line 657
    :cond_16
    move/from16 v27, v28

    .line 658
    .line 659
    :goto_e
    add-float v0, v0, v27

    .line 660
    .line 661
    iget-object v1, v8, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 662
    .line 663
    aget v1, v1, v25

    .line 664
    .line 665
    iget v2, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 666
    .line 667
    add-float/2addr v0, v2

    .line 668
    iget v2, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 669
    .line 670
    add-float/2addr v1, v2

    .line 671
    float-to-int v0, v0

    .line 672
    float-to-int v1, v1

    .line 673
    invoke-virtual/range {v32 .. v32}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 674
    .line 675
    .line 676
    move-result v35

    .line 677
    invoke-virtual/range {v32 .. v32}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 678
    .line 679
    .line 680
    move-result v36

    .line 681
    move-object/from16 v31, p1

    .line 682
    .line 683
    move/from16 v33, v0

    .line 684
    .line 685
    move/from16 v34, v1

    .line 686
    .line 687
    invoke-static/range {v31 .. v36}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 688
    .line 689
    .line 690
    :cond_17
    :goto_f
    const/4 v0, 0x2

    .line 691
    goto/16 :goto_1a

    .line 692
    .line 693
    :cond_18
    move-object/from16 v26, v4

    .line 694
    .line 695
    move/from16 v29, v5

    .line 696
    .line 697
    move/from16 v30, v15

    .line 698
    .line 699
    move-object v15, v3

    .line 700
    array-length v0, v15

    .line 701
    const/4 v1, 0x2

    .line 702
    mul-int/lit8 v5, v0, 0x2

    .line 703
    .line 704
    new-array v4, v5, [F

    .line 705
    .line 706
    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    neg-float v0, v0

    .line 711
    move/from16 v25, v0

    .line 712
    .line 713
    const/4 v0, 0x0

    .line 714
    const/4 v1, 0x0

    .line 715
    const/16 v27, 0x0

    .line 716
    .line 717
    :goto_10
    if-ge v0, v5, :cond_1c

    .line 718
    .line 719
    aget v2, v15, v1

    .line 720
    .line 721
    cmpl-float v3, v2, v19

    .line 722
    .line 723
    if-nez v3, :cond_1a

    .line 724
    .line 725
    cmpl-float v28, v27, v19

    .line 726
    .line 727
    if-eqz v28, :cond_19

    .line 728
    .line 729
    cmpl-float v28, v25, v19

    .line 730
    .line 731
    if-nez v28, :cond_1a

    .line 732
    .line 733
    :cond_19
    move/from16 v41, v25

    .line 734
    .line 735
    move/from16 v25, v2

    .line 736
    .line 737
    move/from16 v2, v41

    .line 738
    .line 739
    goto :goto_11

    .line 740
    :cond_1a
    if-ltz v3, :cond_1b

    .line 741
    .line 742
    add-float v27, v27, v2

    .line 743
    .line 744
    move/from16 v2, v25

    .line 745
    .line 746
    move/from16 v25, v27

    .line 747
    .line 748
    goto :goto_11

    .line 749
    :cond_1b
    sub-float v2, v25, v2

    .line 750
    .line 751
    :goto_11
    mul-float v25, v25, v18

    .line 752
    .line 753
    aput v25, v4, v0

    .line 754
    .line 755
    const/4 v3, 0x2

    .line 756
    add-int/2addr v0, v3

    .line 757
    const/16 v20, 0x1

    .line 758
    .line 759
    add-int/lit8 v1, v1, 0x1

    .line 760
    .line 761
    move/from16 v25, v2

    .line 762
    .line 763
    goto :goto_10

    .line 764
    :cond_1c
    const/4 v3, 0x2

    .line 765
    invoke-virtual {v12, v4}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 766
    .line 767
    .line 768
    const/4 v2, 0x0

    .line 769
    :goto_12
    if-ge v2, v5, :cond_17

    .line 770
    .line 771
    div-int/lit8 v0, v2, 0x2

    .line 772
    .line 773
    aget v0, v15, v0

    .line 774
    .line 775
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 776
    .line 777
    move-object/from16 v3, v26

    .line 778
    .line 779
    invoke-interface {v9, v0, v3, v13, v1}, Lcom/github/mikephil/charting/formatter/IValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 784
    .line 785
    invoke-static {v3, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 786
    .line 787
    .line 788
    move-result v3

    .line 789
    int-to-float v3, v3

    .line 790
    move-object/from16 v28, v1

    .line 791
    .line 792
    if-eqz v11, :cond_1d

    .line 793
    .line 794
    move v1, v10

    .line 795
    goto :goto_13

    .line 796
    :cond_1d
    add-float v1, v3, v10

    .line 797
    .line 798
    neg-float v1, v1

    .line 799
    :goto_13
    move/from16 v31, v5

    .line 800
    .line 801
    if-eqz v11, :cond_1e

    .line 802
    .line 803
    add-float v5, v3, v10

    .line 804
    .line 805
    neg-float v5, v5

    .line 806
    goto :goto_14

    .line 807
    :cond_1e
    move v5, v10

    .line 808
    :goto_14
    if-eqz v30, :cond_1f

    .line 809
    .line 810
    neg-float v1, v1

    .line 811
    sub-float/2addr v1, v3

    .line 812
    neg-float v5, v5

    .line 813
    sub-float/2addr v5, v3

    .line 814
    :cond_1f
    cmpl-float v3, v0, v19

    .line 815
    .line 816
    if-nez v3, :cond_20

    .line 817
    .line 818
    cmpl-float v3, v25, v19

    .line 819
    .line 820
    if-nez v3, :cond_20

    .line 821
    .line 822
    cmpl-float v3, v27, v19

    .line 823
    .line 824
    if-gtz v3, :cond_21

    .line 825
    .line 826
    :cond_20
    cmpg-float v0, v0, v19

    .line 827
    .line 828
    if-gez v0, :cond_22

    .line 829
    .line 830
    :cond_21
    const/4 v0, 0x1

    .line 831
    goto :goto_15

    .line 832
    :cond_22
    const/4 v0, 0x0

    .line 833
    :goto_15
    aget v3, v4, v2

    .line 834
    .line 835
    if-eqz v0, :cond_23

    .line 836
    .line 837
    move v1, v5

    .line 838
    :cond_23
    add-float v5, v3, v1

    .line 839
    .line 840
    iget-object v0, v8, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    .line 841
    .line 842
    const/4 v1, 0x1

    .line 843
    add-int/lit8 v3, v22, 0x1

    .line 844
    .line 845
    aget v1, v0, v3

    .line 846
    .line 847
    add-int/lit8 v3, v22, 0x3

    .line 848
    .line 849
    aget v0, v0, v3

    .line 850
    .line 851
    add-float/2addr v1, v0

    .line 852
    div-float v3, v1, v16

    .line 853
    .line 854
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 855
    .line 856
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    .line 857
    .line 858
    .line 859
    move-result v0

    .line 860
    if-nez v0, :cond_24

    .line 861
    .line 862
    goto/16 :goto_f

    .line 863
    .line 864
    :cond_24
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 865
    .line 866
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    .line 867
    .line 868
    .line 869
    move-result v0

    .line 870
    if-nez v0, :cond_26

    .line 871
    .line 872
    :goto_16
    move/from16 v33, v2

    .line 873
    .line 874
    move-object/from16 v34, v4

    .line 875
    .line 876
    :cond_25
    :goto_17
    const/4 v0, 0x2

    .line 877
    goto :goto_19

    .line 878
    :cond_26
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 879
    .line 880
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    .line 881
    .line 882
    .line 883
    move-result v0

    .line 884
    if-nez v0, :cond_27

    .line 885
    .line 886
    goto :goto_16

    .line 887
    :cond_27
    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawValuesEnabled()Z

    .line 888
    .line 889
    .line 890
    move-result v0

    .line 891
    if-eqz v0, :cond_28

    .line 892
    .line 893
    add-float v32, v3, v17

    .line 894
    .line 895
    move-object/from16 v0, p0

    .line 896
    .line 897
    move-object/from16 v1, p1

    .line 898
    .line 899
    move/from16 v33, v2

    .line 900
    .line 901
    move-object/from16 v2, v28

    .line 902
    .line 903
    move/from16 v28, v3

    .line 904
    .line 905
    move v3, v5

    .line 906
    move-object/from16 v34, v4

    .line 907
    .line 908
    move/from16 v4, v32

    .line 909
    .line 910
    move/from16 v32, v5

    .line 911
    .line 912
    move/from16 v5, v23

    .line 913
    .line 914
    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    .line 915
    .line 916
    .line 917
    goto :goto_18

    .line 918
    :cond_28
    move/from16 v33, v2

    .line 919
    .line 920
    move/from16 v28, v3

    .line 921
    .line 922
    move-object/from16 v34, v4

    .line 923
    .line 924
    move/from16 v32, v5

    .line 925
    .line 926
    :goto_18
    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 927
    .line 928
    .line 929
    move-result-object v0

    .line 930
    if-eqz v0, :cond_25

    .line 931
    .line 932
    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawIconsEnabled()Z

    .line 933
    .line 934
    .line 935
    move-result v0

    .line 936
    if-eqz v0, :cond_25

    .line 937
    .line 938
    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/data/BaseEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 939
    .line 940
    .line 941
    move-result-object v36

    .line 942
    iget v0, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 943
    .line 944
    add-float v5, v32, v0

    .line 945
    .line 946
    float-to-int v0, v5

    .line 947
    iget v1, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 948
    .line 949
    add-float v3, v28, v1

    .line 950
    .line 951
    float-to-int v1, v3

    .line 952
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 953
    .line 954
    .line 955
    move-result v39

    .line 956
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 957
    .line 958
    .line 959
    move-result v40

    .line 960
    move-object/from16 v35, p1

    .line 961
    .line 962
    move/from16 v37, v0

    .line 963
    .line 964
    move/from16 v38, v1

    .line 965
    .line 966
    invoke-static/range {v35 .. v40}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 967
    .line 968
    .line 969
    goto :goto_17

    .line 970
    :goto_19
    add-int/lit8 v2, v33, 0x2

    .line 971
    .line 972
    move/from16 v5, v31

    .line 973
    .line 974
    move-object/from16 v4, v34

    .line 975
    .line 976
    const/4 v3, 0x2

    .line 977
    goto/16 :goto_12

    .line 978
    .line 979
    :goto_1a
    if-nez v15, :cond_29

    .line 980
    .line 981
    add-int/lit8 v22, v22, 0x4

    .line 982
    .line 983
    :goto_1b
    const/4 v1, 0x1

    .line 984
    goto :goto_1c

    .line 985
    :cond_29
    array-length v1, v15

    .line 986
    mul-int/lit8 v1, v1, 0x4

    .line 987
    .line 988
    add-int v1, v1, v22

    .line 989
    .line 990
    move/from16 v22, v1

    .line 991
    .line 992
    goto :goto_1b

    .line 993
    :goto_1c
    add-int/lit8 v5, v29, 0x1

    .line 994
    .line 995
    move/from16 v15, v30

    .line 996
    .line 997
    goto/16 :goto_9

    .line 998
    .line 999
    :goto_1d
    invoke-static {v7}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 1000
    .line 1001
    .line 1002
    :goto_1e
    add-int/2addr v13, v1

    .line 1003
    move-object/from16 v9, v24

    .line 1004
    .line 1005
    const/4 v7, 0x1

    .line 1006
    const/4 v8, 0x2

    .line 1007
    goto/16 :goto_0

    .line 1008
    .line 1009
    :cond_2a
    return-void

    .line 1010
    nop

    .line 1011
    :array_0
    .array-data 8
        -0x1efd3b67229fca2dL    # -2.061411695103953E159
        0x5033005a623bb847L    # 2.2002093897260233E78
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
    new-array v1, v1, [Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;

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
    new-instance v4, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;

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
    invoke-direct {v4, v5, v6, v2}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;-><init>(IIZ)V

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

.method public isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;->getData()Lcom/github/mikephil/charting/data/ChartData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;->getMaxVisibleCount()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    int-to-float p1, p1

    .line 15
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    mul-float v1, v1, p1

    .line 22
    .line 23
    cmpg-float p1, v0, v1

    .line 24
    .line 25
    if-gez p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
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
    invoke-virtual {p4, p2, v0, p3, p1}, Landroid/graphics/RectF;->set(FFFF)V

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
    invoke-virtual {p5, p1, p2}, Lcom/github/mikephil/charting/utils/Transformer;->rectToPixelPhaseHorizontal(Landroid/graphics/RectF;F)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setHighlightDrawPos(Lcom/github/mikephil/charting/highlight/Highlight;Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget p2, p2, Landroid/graphics/RectF;->right:F

    .line 6
    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/github/mikephil/charting/highlight/Highlight;->setDraw(FF)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
