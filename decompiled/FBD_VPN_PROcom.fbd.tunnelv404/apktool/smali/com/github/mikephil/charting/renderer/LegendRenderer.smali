.class public Lcom/github/mikephil/charting/renderer/LegendRenderer;
.super Lcom/github/mikephil/charting/renderer/Renderer;
.source "SourceFile"


# instance fields
.field protected computedEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field protected mLegend:Lcom/github/mikephil/charting/components/Legend;

.field protected mLegendFormPaint:Landroid/graphics/Paint;

.field protected mLegendLabelPaint:Landroid/graphics/Paint;

.field private mLineFormPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/Legend;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/renderer/Renderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/16 v0, 0x10

    .line 7
    .line 8
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    .line 12
    .line 13
    new-instance p1, Landroid/graphics/Paint$FontMetrics;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 19
    .line 20
    new-instance p1, Landroid/graphics/Path;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 28
    .line 29
    new-instance p1, Landroid/graphics/Paint;

    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 36
    .line 37
    const/high16 v0, 0x41100000    # 9.0f

    .line 38
    .line 39
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 47
    .line 48
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    .line 59
    .line 60
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public computeLegend(Lcom/github/mikephil/charting/data/ChartData;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/ChartData<",
            "*>;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->isLegendCustom()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_a

    .line 12
    .line 13
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ge v3, v4, :cond_8

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColors()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    instance-of v7, v4, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 38
    .line 39
    if-eqz v7, :cond_2

    .line 40
    .line 41
    move-object v7, v4

    .line 42
    check-cast v7, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 43
    .line 44
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_2

    .line 49
    .line 50
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getStackLabels()[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const/4 v8, 0x0

    .line 55
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-ge v8, v9, :cond_0

    .line 60
    .line 61
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getStackSize()I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-ge v8, v9, :cond_0

    .line 66
    .line 67
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    .line 68
    .line 69
    new-instance v15, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 70
    .line 71
    array-length v10, v6

    .line 72
    rem-int v10, v8, v10

    .line 73
    .line 74
    aget-object v11, v6, v10

    .line 75
    .line 76
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    .line 89
    .line 90
    .line 91
    move-result-object v16

    .line 92
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    check-cast v10, Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v17

    .line 102
    move-object v10, v15

    .line 103
    move-object v2, v15

    .line 104
    move-object/from16 v15, v16

    .line 105
    .line 106
    move/from16 v16, v17

    .line 107
    .line 108
    invoke-direct/range {v10 .. v16}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    add-int/lit8 v8, v8, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_0
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-eqz v2, :cond_1

    .line 122
    .line 123
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    .line 124
    .line 125
    new-instance v12, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 126
    .line 127
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    sget-object v7, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 132
    .line 133
    const/4 v10, 0x0

    .line 134
    const v11, 0x112233

    .line 135
    .line 136
    .line 137
    const/high16 v8, 0x7fc00000    # Float.NaN

    .line 138
    .line 139
    const/high16 v9, 0x7fc00000    # Float.NaN

    .line 140
    .line 141
    move-object v5, v12

    .line 142
    invoke-direct/range {v5 .. v11}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :cond_1
    move-object v2, v1

    .line 149
    goto/16 :goto_6

    .line 150
    .line 151
    :cond_2
    instance-of v2, v4, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 152
    .line 153
    if-eqz v2, :cond_5

    .line 154
    .line 155
    move-object v2, v4

    .line 156
    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 157
    .line 158
    const/4 v7, 0x0

    .line 159
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    if-ge v7, v8, :cond_3

    .line 164
    .line 165
    if-ge v7, v6, :cond_3

    .line 166
    .line 167
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    .line 168
    .line 169
    new-instance v15, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 170
    .line 171
    invoke-interface {v2, v7}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    check-cast v9, Lcom/github/mikephil/charting/data/PieEntry;

    .line 176
    .line 177
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    .line 186
    .line 187
    .line 188
    move-result v12

    .line 189
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    .line 190
    .line 191
    .line 192
    move-result v13

    .line 193
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    .line 194
    .line 195
    .line 196
    move-result-object v14

    .line 197
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    check-cast v9, Ljava/lang/Integer;

    .line 202
    .line 203
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 204
    .line 205
    .line 206
    move-result v16

    .line 207
    move-object v9, v15

    .line 208
    move-object v1, v15

    .line 209
    move/from16 v15, v16

    .line 210
    .line 211
    invoke-direct/range {v9 .. v15}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 212
    .line 213
    .line 214
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    add-int/lit8 v7, v7, 0x1

    .line 218
    .line 219
    move-object/from16 v1, p1

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_3
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    if-eqz v1, :cond_4

    .line 227
    .line 228
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    .line 229
    .line 230
    new-instance v2, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 231
    .line 232
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    sget-object v7, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 237
    .line 238
    const/4 v10, 0x0

    .line 239
    const v11, 0x112233

    .line 240
    .line 241
    .line 242
    const/high16 v8, 0x7fc00000    # Float.NaN

    .line 243
    .line 244
    const/high16 v9, 0x7fc00000    # Float.NaN

    .line 245
    .line 246
    move-object v5, v2

    .line 247
    invoke-direct/range {v5 .. v11}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 248
    .line 249
    .line 250
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    :cond_4
    :goto_3
    move-object/from16 v2, p1

    .line 254
    .line 255
    goto/16 :goto_6

    .line 256
    .line 257
    :cond_5
    instance-of v1, v4, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    .line 258
    .line 259
    if-eqz v1, :cond_6

    .line 260
    .line 261
    move-object v1, v4

    .line 262
    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    .line 263
    .line 264
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    const v7, 0x112233

    .line 269
    .line 270
    .line 271
    if-eq v2, v7, :cond_6

    .line 272
    .line 273
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    .line 274
    .line 275
    .line 276
    move-result v14

    .line 277
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    .line 282
    .line 283
    new-instance v5, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 284
    .line 285
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    .line 290
    .line 291
    .line 292
    move-result v11

    .line 293
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    .line 294
    .line 295
    .line 296
    move-result v12

    .line 297
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    .line 298
    .line 299
    .line 300
    move-result-object v13

    .line 301
    const/4 v9, 0x0

    .line 302
    move-object v8, v5

    .line 303
    invoke-direct/range {v8 .. v14}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    .line 310
    .line 311
    new-instance v12, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 312
    .line 313
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    .line 322
    .line 323
    .line 324
    move-result v8

    .line 325
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    .line 330
    .line 331
    .line 332
    move-result-object v10

    .line 333
    move-object v5, v12

    .line 334
    move v11, v1

    .line 335
    invoke-direct/range {v5 .. v11}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 336
    .line 337
    .line 338
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_6
    const/4 v1, 0x0

    .line 343
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-ge v1, v2, :cond_4

    .line 348
    .line 349
    if-ge v1, v6, :cond_4

    .line 350
    .line 351
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    add-int/lit8 v2, v2, -0x1

    .line 356
    .line 357
    if-ge v1, v2, :cond_7

    .line 358
    .line 359
    add-int/lit8 v2, v6, -0x1

    .line 360
    .line 361
    if-ge v1, v2, :cond_7

    .line 362
    .line 363
    const/4 v2, 0x0

    .line 364
    move-object v9, v2

    .line 365
    move-object/from16 v2, p1

    .line 366
    .line 367
    goto :goto_5

    .line 368
    :cond_7
    move-object/from16 v2, p1

    .line 369
    .line 370
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    move-object v9, v7

    .line 379
    :goto_5
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    .line 380
    .line 381
    new-instance v15, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 382
    .line 383
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 384
    .line 385
    .line 386
    move-result-object v10

    .line 387
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    .line 388
    .line 389
    .line 390
    move-result v11

    .line 391
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    .line 392
    .line 393
    .line 394
    move-result v12

    .line 395
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    .line 396
    .line 397
    .line 398
    move-result-object v13

    .line 399
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v8

    .line 403
    check-cast v8, Ljava/lang/Integer;

    .line 404
    .line 405
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 406
    .line 407
    .line 408
    move-result v14

    .line 409
    move-object v8, v15

    .line 410
    invoke-direct/range {v8 .. v14}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 411
    .line 412
    .line 413
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    add-int/lit8 v1, v1, 0x1

    .line 417
    .line 418
    goto :goto_4

    .line 419
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 420
    .line 421
    move-object v1, v2

    .line 422
    goto/16 :goto_0

    .line 423
    .line 424
    :cond_8
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 425
    .line 426
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getExtraEntries()[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    if-eqz v1, :cond_9

    .line 431
    .line 432
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    .line 433
    .line 434
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 435
    .line 436
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getExtraEntries()[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    :cond_9
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 444
    .line 445
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    .line 446
    .line 447
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/Legend;->setEntries(Ljava/util/List;)V

    .line 448
    .line 449
    .line 450
    :cond_a
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 451
    .line 452
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/ComponentBase;->getTypeface()Landroid/graphics/Typeface;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    if-eqz v1, :cond_b

    .line 457
    .line 458
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 459
    .line 460
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 461
    .line 462
    .line 463
    :cond_b
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 464
    .line 465
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 466
    .line 467
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getTextSize()F

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 472
    .line 473
    .line 474
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 475
    .line 476
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 477
    .line 478
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getTextColor()I

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 483
    .line 484
    .line 485
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 486
    .line 487
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 488
    .line 489
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 490
    .line 491
    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/components/Legend;->calculateDimensions(Landroid/graphics/Paint;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 492
    .line 493
    .line 494
    return-void
.end method

.method public drawForm(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/components/LegendEntry;Lcom/github/mikephil/charting/components/Legend;)V
    .locals 10

    .line 1
    iget v0, p4, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    .line 2
    .line 3
    const v1, 0x112234

    .line 4
    .line 5
    .line 6
    if-eq v0, v1, :cond_8

    .line 7
    .line 8
    const v1, 0x112233

    .line 9
    .line 10
    .line 11
    if-eq v0, v1, :cond_8

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p4, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 22
    .line 23
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendForm;->DEFAULT:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 24
    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    .line 32
    .line 33
    iget v3, p4, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    .line 37
    .line 38
    iget v2, p4, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->getFormSize()F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget v2, p4, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 52
    .line 53
    :goto_0
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/high16 v3, 0x40000000    # 2.0f

    .line 58
    .line 59
    div-float v3, v2, v3

    .line 60
    .line 61
    sget-object v4, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendForm:[I

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    aget v1, v4, v1

    .line 68
    .line 69
    const/4 v4, 0x3

    .line 70
    if-eq v1, v4, :cond_7

    .line 71
    .line 72
    const/4 v4, 0x4

    .line 73
    if-eq v1, v4, :cond_7

    .line 74
    .line 75
    const/4 v4, 0x5

    .line 76
    if-eq v1, v4, :cond_6

    .line 77
    .line 78
    const/4 v3, 0x6

    .line 79
    if-eq v1, v3, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    iget v1, p4, Lcom/github/mikephil/charting/components/LegendEntry;->formLineWidth:F

    .line 83
    .line 84
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->getFormLineWidth()F

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    iget v1, p4, Lcom/github/mikephil/charting/components/LegendEntry;->formLineWidth:F

    .line 96
    .line 97
    :goto_1
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iget-object p4, p4, Lcom/github/mikephil/charting/components/LegendEntry;->formLineDashEffect:Landroid/graphics/DashPathEffect;

    .line 102
    .line 103
    if-nez p4, :cond_5

    .line 104
    .line 105
    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    .line 106
    .line 107
    .line 108
    move-result-object p4

    .line 109
    :cond_5
    iget-object p5, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    .line 110
    .line 111
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 112
    .line 113
    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    .line 115
    .line 116
    iget-object p5, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    .line 117
    .line 118
    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    .line 120
    .line 121
    iget-object p5, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    .line 122
    .line 123
    invoke-virtual {p5, p4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 124
    .line 125
    .line 126
    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    .line 127
    .line 128
    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 129
    .line 130
    .line 131
    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    .line 132
    .line 133
    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 134
    .line 135
    .line 136
    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    .line 137
    .line 138
    add-float/2addr p2, v2

    .line 139
    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 140
    .line 141
    .line 142
    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    .line 143
    .line 144
    iget-object p3, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    .line 145
    .line 146
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_6
    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    .line 151
    .line 152
    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 153
    .line 154
    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    .line 156
    .line 157
    sub-float v6, p3, v3

    .line 158
    .line 159
    add-float v7, p2, v2

    .line 160
    .line 161
    add-float v8, p3, v3

    .line 162
    .line 163
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    .line 164
    .line 165
    move-object v4, p1

    .line 166
    move v5, p2

    .line 167
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_7
    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    .line 172
    .line 173
    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 174
    .line 175
    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    .line 177
    .line 178
    add-float/2addr p2, v3

    .line 179
    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    .line 180
    .line 181
    invoke-virtual {p1, p2, p3, v3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 182
    .line 183
    .line 184
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 185
    .line 186
    .line 187
    :cond_8
    :goto_3
    return-void
.end method

.method public drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getFormPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    return-object v0
.end method

.method public renderLegend(Landroid/graphics/Canvas;)V
    .locals 34

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/ComponentBase;->getTypeface()Landroid/graphics/Typeface;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 29
    .line 30
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getTextSize()F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 40
    .line 41
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getTextColor()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 51
    .line 52
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 53
    .line 54
    invoke-static {v1, v2}, Lcom/github/mikephil/charting/utils/Utils;->getLineHeight(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 59
    .line 60
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 61
    .line 62
    invoke-static {v1, v2}, Lcom/github/mikephil/charting/utils/Utils;->getLineSpacing(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getYEntrySpace()F

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    add-float v10, v2, v1

    .line 77
    .line 78
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 79
    .line 80
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v3, v0, [J

    .line 83
    .line 84
    fill-array-data v3, :array_0

    .line 85
    .line 86
    .line 87
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {v1, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    int-to-float v1, v1

    .line 99
    const/high16 v11, 0x40000000    # 2.0f

    .line 100
    .line 101
    div-float/2addr v1, v11

    .line 102
    sub-float v12, v9, v1

    .line 103
    .line 104
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getEntries()[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getFormToTextSpace()F

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 117
    .line 118
    .line 119
    move-result v14

    .line 120
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getXEntrySpace()F

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getOrientation()Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getHorizontalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getDirection()Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getFormSize()F

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 161
    .line 162
    .line 163
    move-result v16

    .line 164
    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 165
    .line 166
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getStackSpace()F

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    iget-object v11, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 175
    .line 176
    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/ComponentBase;->getYOffset()F

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/ComponentBase;->getXOffset()F

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    sget-object v19, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment:[I

    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 189
    .line 190
    .line 191
    move-result v20

    .line 192
    aget v8, v19, v20

    .line 193
    .line 194
    move/from16 v19, v3

    .line 195
    .line 196
    const/16 v20, 0x0

    .line 197
    .line 198
    const/4 v3, 0x1

    .line 199
    if-eq v8, v3, :cond_9

    .line 200
    .line 201
    const/4 v3, 0x2

    .line 202
    if-eq v8, v3, :cond_7

    .line 203
    .line 204
    const/4 v3, 0x3

    .line 205
    if-eq v8, v3, :cond_2

    .line 206
    .line 207
    move/from16 v27, v9

    .line 208
    .line 209
    move/from16 v23, v10

    .line 210
    .line 211
    move/from16 v26, v14

    .line 212
    .line 213
    move/from16 v22, v15

    .line 214
    .line 215
    const/4 v8, 0x0

    .line 216
    goto/16 :goto_6

    .line 217
    .line 218
    :cond_2
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 219
    .line 220
    if-ne v1, v3, :cond_3

    .line 221
    .line 222
    iget-object v8, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 223
    .line 224
    invoke-virtual {v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    const/high16 v17, 0x40000000    # 2.0f

    .line 229
    .line 230
    div-float v8, v8, v17

    .line 231
    .line 232
    move/from16 v22, v15

    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_3
    const/high16 v17, 0x40000000    # 2.0f

    .line 236
    .line 237
    iget-object v8, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 238
    .line 239
    invoke-virtual {v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    move/from16 v22, v15

    .line 244
    .line 245
    iget-object v15, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 246
    .line 247
    invoke-virtual {v15}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    .line 248
    .line 249
    .line 250
    move-result v15

    .line 251
    div-float v15, v15, v17

    .line 252
    .line 253
    add-float/2addr v8, v15

    .line 254
    :goto_0
    sget-object v15, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 255
    .line 256
    move/from16 v23, v10

    .line 257
    .line 258
    if-ne v4, v15, :cond_4

    .line 259
    .line 260
    move v10, v0

    .line 261
    goto :goto_1

    .line 262
    :cond_4
    neg-float v10, v0

    .line 263
    :goto_1
    add-float/2addr v8, v10

    .line 264
    if-ne v1, v3, :cond_6

    .line 265
    .line 266
    float-to-double v7, v8

    .line 267
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    .line 268
    .line 269
    if-ne v4, v15, :cond_5

    .line 270
    .line 271
    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 272
    .line 273
    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 274
    .line 275
    neg-float v3, v3

    .line 276
    move v15, v9

    .line 277
    float-to-double v9, v3

    .line 278
    div-double v9, v9, v24

    .line 279
    .line 280
    move/from16 v26, v14

    .line 281
    .line 282
    move/from16 v27, v15

    .line 283
    .line 284
    float-to-double v14, v0

    .line 285
    add-double/2addr v9, v14

    .line 286
    goto :goto_2

    .line 287
    :cond_5
    move/from16 v27, v9

    .line 288
    .line 289
    move/from16 v26, v14

    .line 290
    .line 291
    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 292
    .line 293
    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 294
    .line 295
    float-to-double v9, v3

    .line 296
    div-double v9, v9, v24

    .line 297
    .line 298
    float-to-double v14, v0

    .line 299
    sub-double/2addr v9, v14

    .line 300
    :goto_2
    add-double/2addr v7, v9

    .line 301
    double-to-float v8, v7

    .line 302
    goto :goto_6

    .line 303
    :cond_6
    move/from16 v27, v9

    .line 304
    .line 305
    move/from16 v26, v14

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_7
    move/from16 v27, v9

    .line 309
    .line 310
    move/from16 v23, v10

    .line 311
    .line 312
    move/from16 v26, v14

    .line 313
    .line 314
    move/from16 v22, v15

    .line 315
    .line 316
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 317
    .line 318
    if-ne v1, v3, :cond_8

    .line 319
    .line 320
    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 321
    .line 322
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    :goto_3
    sub-float/2addr v3, v0

    .line 327
    move v8, v3

    .line 328
    goto :goto_4

    .line 329
    :cond_8
    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 330
    .line 331
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    goto :goto_3

    .line 336
    :goto_4
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 337
    .line 338
    if-ne v4, v0, :cond_c

    .line 339
    .line 340
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 341
    .line 342
    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 343
    .line 344
    sub-float/2addr v8, v0

    .line 345
    goto :goto_6

    .line 346
    :cond_9
    move/from16 v27, v9

    .line 347
    .line 348
    move/from16 v23, v10

    .line 349
    .line 350
    move/from16 v26, v14

    .line 351
    .line 352
    move/from16 v22, v15

    .line 353
    .line 354
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 355
    .line 356
    if-ne v1, v3, :cond_a

    .line 357
    .line 358
    goto :goto_5

    .line 359
    :cond_a
    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 360
    .line 361
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    add-float/2addr v0, v3

    .line 366
    :goto_5
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 367
    .line 368
    if-ne v4, v3, :cond_b

    .line 369
    .line 370
    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 371
    .line 372
    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 373
    .line 374
    add-float v8, v0, v3

    .line 375
    .line 376
    goto :goto_6

    .line 377
    :cond_b
    move v8, v0

    .line 378
    :cond_c
    :goto_6
    sget-object v0, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation:[I

    .line 379
    .line 380
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    aget v0, v0, v1

    .line 385
    .line 386
    const/4 v1, 0x1

    .line 387
    if-eq v0, v1, :cond_1e

    .line 388
    .line 389
    const/4 v3, 0x2

    .line 390
    if-eq v0, v3, :cond_d

    .line 391
    .line 392
    goto/16 :goto_24

    .line 393
    .line 394
    :cond_d
    sget-object v0, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment:[I

    .line 395
    .line 396
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    aget v0, v0, v2

    .line 401
    .line 402
    if-eq v0, v1, :cond_11

    .line 403
    .line 404
    if-eq v0, v3, :cond_f

    .line 405
    .line 406
    const/4 v1, 0x3

    .line 407
    if-eq v0, v1, :cond_e

    .line 408
    .line 409
    const/4 v1, 0x0

    .line 410
    goto :goto_9

    .line 411
    :cond_e
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 412
    .line 413
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    const/high16 v1, 0x40000000    # 2.0f

    .line 418
    .line 419
    div-float/2addr v0, v1

    .line 420
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 421
    .line 422
    iget v3, v2, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 423
    .line 424
    div-float/2addr v3, v1

    .line 425
    sub-float/2addr v0, v3

    .line 426
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getYOffset()F

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    add-float/2addr v1, v0

    .line 431
    goto :goto_9

    .line 432
    :cond_f
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 433
    .line 434
    if-ne v5, v0, :cond_10

    .line 435
    .line 436
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 437
    .line 438
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    goto :goto_7

    .line 443
    :cond_10
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 444
    .line 445
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    :goto_7
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 450
    .line 451
    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 452
    .line 453
    add-float/2addr v1, v11

    .line 454
    sub-float v1, v0, v1

    .line 455
    .line 456
    goto :goto_9

    .line 457
    :cond_11
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 458
    .line 459
    if-ne v5, v0, :cond_12

    .line 460
    .line 461
    const/4 v0, 0x0

    .line 462
    goto :goto_8

    .line 463
    :cond_12
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 464
    .line 465
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    :goto_8
    add-float v1, v0, v11

    .line 470
    .line 471
    :goto_9
    move v9, v1

    .line 472
    const/4 v10, 0x0

    .line 473
    const/4 v11, 0x0

    .line 474
    const/4 v14, 0x0

    .line 475
    :goto_a
    array-length v0, v13

    .line 476
    if-ge v11, v0, :cond_32

    .line 477
    .line 478
    aget-object v15, v13, v11

    .line 479
    .line 480
    iget-object v0, v15, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 481
    .line 482
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 483
    .line 484
    if-eq v0, v1, :cond_13

    .line 485
    .line 486
    const/16 v17, 0x1

    .line 487
    .line 488
    goto :goto_b

    .line 489
    :cond_13
    const/16 v17, 0x0

    .line 490
    .line 491
    :goto_b
    iget v0, v15, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 492
    .line 493
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    if-eqz v0, :cond_14

    .line 498
    .line 499
    move/from16 v18, v16

    .line 500
    .line 501
    goto :goto_c

    .line 502
    :cond_14
    iget v0, v15, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 503
    .line 504
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    move/from16 v18, v0

    .line 509
    .line 510
    :goto_c
    if-eqz v17, :cond_16

    .line 511
    .line 512
    sget-object v5, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 513
    .line 514
    if-ne v4, v5, :cond_15

    .line 515
    .line 516
    add-float v0, v8, v14

    .line 517
    .line 518
    :goto_d
    move/from16 v21, v0

    .line 519
    .line 520
    goto :goto_e

    .line 521
    :cond_15
    sub-float v0, v18, v14

    .line 522
    .line 523
    sub-float v0, v8, v0

    .line 524
    .line 525
    goto :goto_d

    .line 526
    :goto_e
    add-float v3, v9, v12

    .line 527
    .line 528
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 529
    .line 530
    move-object/from16 v0, p0

    .line 531
    .line 532
    move-object/from16 v1, p1

    .line 533
    .line 534
    move-object/from16 v22, v2

    .line 535
    .line 536
    move/from16 v2, v21

    .line 537
    .line 538
    move/from16 v7, v19

    .line 539
    .line 540
    move/from16 v19, v12

    .line 541
    .line 542
    move-object v12, v4

    .line 543
    move-object v4, v15

    .line 544
    move/from16 v25, v8

    .line 545
    .line 546
    move-object v8, v5

    .line 547
    move-object/from16 v5, v22

    .line 548
    .line 549
    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawForm(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/components/LegendEntry;Lcom/github/mikephil/charting/components/Legend;)V

    .line 550
    .line 551
    .line 552
    if-ne v12, v8, :cond_17

    .line 553
    .line 554
    add-float v21, v21, v18

    .line 555
    .line 556
    goto :goto_f

    .line 557
    :cond_16
    move/from16 v25, v8

    .line 558
    .line 559
    move/from16 v7, v19

    .line 560
    .line 561
    move/from16 v19, v12

    .line 562
    .line 563
    move-object v12, v4

    .line 564
    move/from16 v21, v25

    .line 565
    .line 566
    :cond_17
    :goto_f
    iget-object v0, v15, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 567
    .line 568
    if-eqz v0, :cond_1d

    .line 569
    .line 570
    if-eqz v17, :cond_19

    .line 571
    .line 572
    if-nez v10, :cond_19

    .line 573
    .line 574
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 575
    .line 576
    if-ne v12, v1, :cond_18

    .line 577
    .line 578
    move/from16 v1, v26

    .line 579
    .line 580
    move v8, v1

    .line 581
    goto :goto_10

    .line 582
    :cond_18
    move/from16 v8, v26

    .line 583
    .line 584
    neg-float v1, v8

    .line 585
    :goto_10
    add-float v21, v21, v1

    .line 586
    .line 587
    goto :goto_11

    .line 588
    :cond_19
    move/from16 v8, v26

    .line 589
    .line 590
    if-eqz v10, :cond_1a

    .line 591
    .line 592
    move/from16 v21, v25

    .line 593
    .line 594
    :cond_1a
    :goto_11
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 595
    .line 596
    if-ne v12, v1, :cond_1b

    .line 597
    .line 598
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 599
    .line 600
    invoke-static {v1, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    int-to-float v0, v0

    .line 605
    sub-float v21, v21, v0

    .line 606
    .line 607
    :cond_1b
    move/from16 v0, v21

    .line 608
    .line 609
    if-nez v10, :cond_1c

    .line 610
    .line 611
    add-float v1, v9, v27

    .line 612
    .line 613
    iget-object v2, v15, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 614
    .line 615
    move-object/from16 v4, p1

    .line 616
    .line 617
    invoke-virtual {v6, v4, v0, v1, v2}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    .line 618
    .line 619
    .line 620
    goto :goto_12

    .line 621
    :cond_1c
    move-object/from16 v4, p1

    .line 622
    .line 623
    add-float v1, v27, v23

    .line 624
    .line 625
    add-float/2addr v9, v1

    .line 626
    add-float v1, v9, v27

    .line 627
    .line 628
    iget-object v2, v15, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 629
    .line 630
    invoke-virtual {v6, v4, v0, v1, v2}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    .line 631
    .line 632
    .line 633
    :goto_12
    add-float v0, v27, v23

    .line 634
    .line 635
    add-float/2addr v0, v9

    .line 636
    move v9, v0

    .line 637
    const/4 v0, 0x1

    .line 638
    const/4 v14, 0x0

    .line 639
    goto :goto_13

    .line 640
    :cond_1d
    move-object/from16 v4, p1

    .line 641
    .line 642
    move/from16 v8, v26

    .line 643
    .line 644
    add-float v18, v18, v7

    .line 645
    .line 646
    add-float v18, v18, v14

    .line 647
    .line 648
    move/from16 v14, v18

    .line 649
    .line 650
    const/4 v0, 0x1

    .line 651
    const/4 v10, 0x1

    .line 652
    :goto_13
    add-int/2addr v11, v0

    .line 653
    move/from16 v26, v8

    .line 654
    .line 655
    move-object v4, v12

    .line 656
    move/from16 v12, v19

    .line 657
    .line 658
    move/from16 v8, v25

    .line 659
    .line 660
    move/from16 v19, v7

    .line 661
    .line 662
    goto/16 :goto_a

    .line 663
    .line 664
    :cond_1e
    move/from16 v25, v8

    .line 665
    .line 666
    move/from16 v7, v19

    .line 667
    .line 668
    move/from16 v8, v26

    .line 669
    .line 670
    move/from16 v19, v12

    .line 671
    .line 672
    move-object v12, v4

    .line 673
    move-object/from16 v4, p1

    .line 674
    .line 675
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 676
    .line 677
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLineSizes()Ljava/util/List;

    .line 678
    .line 679
    .line 680
    move-result-object v9

    .line 681
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 682
    .line 683
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLabelSizes()Ljava/util/List;

    .line 684
    .line 685
    .line 686
    move-result-object v10

    .line 687
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 688
    .line 689
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLabelBreakPoints()Ljava/util/List;

    .line 690
    .line 691
    .line 692
    move-result-object v14

    .line 693
    sget-object v0, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment:[I

    .line 694
    .line 695
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 696
    .line 697
    .line 698
    move-result v1

    .line 699
    aget v0, v0, v1

    .line 700
    .line 701
    const/4 v1, 0x1

    .line 702
    if-eq v0, v1, :cond_21

    .line 703
    .line 704
    const/4 v1, 0x2

    .line 705
    if-eq v0, v1, :cond_20

    .line 706
    .line 707
    const/4 v1, 0x3

    .line 708
    if-eq v0, v1, :cond_1f

    .line 709
    .line 710
    const/4 v11, 0x0

    .line 711
    goto :goto_14

    .line 712
    :cond_1f
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 713
    .line 714
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    .line 715
    .line 716
    .line 717
    move-result v0

    .line 718
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 719
    .line 720
    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 721
    .line 722
    sub-float/2addr v0, v1

    .line 723
    const/high16 v1, 0x40000000    # 2.0f

    .line 724
    .line 725
    div-float/2addr v0, v1

    .line 726
    add-float/2addr v11, v0

    .line 727
    goto :goto_14

    .line 728
    :cond_20
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 729
    .line 730
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    .line 731
    .line 732
    .line 733
    move-result v0

    .line 734
    sub-float/2addr v0, v11

    .line 735
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 736
    .line 737
    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 738
    .line 739
    sub-float v11, v0, v1

    .line 740
    .line 741
    :cond_21
    :goto_14
    array-length v15, v13

    .line 742
    move/from16 v0, v25

    .line 743
    .line 744
    const/4 v1, 0x0

    .line 745
    const/4 v3, 0x0

    .line 746
    :goto_15
    if-ge v3, v15, :cond_32

    .line 747
    .line 748
    aget-object v2, v13, v3

    .line 749
    .line 750
    move/from16 v18, v0

    .line 751
    .line 752
    iget-object v0, v2, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 753
    .line 754
    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 755
    .line 756
    if-eq v0, v4, :cond_22

    .line 757
    .line 758
    const/16 v20, 0x1

    .line 759
    .line 760
    goto :goto_16

    .line 761
    :cond_22
    const/16 v20, 0x0

    .line 762
    .line 763
    :goto_16
    iget v0, v2, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 764
    .line 765
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 766
    .line 767
    .line 768
    move-result v0

    .line 769
    if-eqz v0, :cond_23

    .line 770
    .line 771
    move/from16 v21, v16

    .line 772
    .line 773
    goto :goto_17

    .line 774
    :cond_23
    iget v0, v2, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 775
    .line 776
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 777
    .line 778
    .line 779
    move-result v0

    .line 780
    move/from16 v21, v0

    .line 781
    .line 782
    :goto_17
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 783
    .line 784
    .line 785
    move-result v0

    .line 786
    if-ge v3, v0, :cond_24

    .line 787
    .line 788
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    check-cast v0, Ljava/lang/Boolean;

    .line 793
    .line 794
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 795
    .line 796
    .line 797
    move-result v0

    .line 798
    if-eqz v0, :cond_24

    .line 799
    .line 800
    add-float v0, v27, v23

    .line 801
    .line 802
    add-float/2addr v0, v11

    .line 803
    move v11, v0

    .line 804
    move/from16 v0, v25

    .line 805
    .line 806
    goto :goto_18

    .line 807
    :cond_24
    move/from16 v0, v18

    .line 808
    .line 809
    :goto_18
    cmpl-float v4, v0, v25

    .line 810
    .line 811
    if-nez v4, :cond_26

    .line 812
    .line 813
    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 814
    .line 815
    if-ne v5, v4, :cond_26

    .line 816
    .line 817
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 818
    .line 819
    .line 820
    move-result v4

    .line 821
    if-ge v1, v4, :cond_26

    .line 822
    .line 823
    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 824
    .line 825
    if-ne v12, v4, :cond_25

    .line 826
    .line 827
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v4

    .line 831
    check-cast v4, Lcom/github/mikephil/charting/utils/FSize;

    .line 832
    .line 833
    iget v4, v4, Lcom/github/mikephil/charting/utils/FSize;->width:F

    .line 834
    .line 835
    :goto_19
    const/high16 v17, 0x40000000    # 2.0f

    .line 836
    .line 837
    goto :goto_1a

    .line 838
    :cond_25
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v4

    .line 842
    check-cast v4, Lcom/github/mikephil/charting/utils/FSize;

    .line 843
    .line 844
    iget v4, v4, Lcom/github/mikephil/charting/utils/FSize;->width:F

    .line 845
    .line 846
    neg-float v4, v4

    .line 847
    goto :goto_19

    .line 848
    :goto_1a
    div-float v4, v4, v17

    .line 849
    .line 850
    add-float/2addr v0, v4

    .line 851
    const/4 v4, 0x1

    .line 852
    add-int/2addr v1, v4

    .line 853
    :goto_1b
    move/from16 v18, v1

    .line 854
    .line 855
    goto :goto_1c

    .line 856
    :cond_26
    const/high16 v17, 0x40000000    # 2.0f

    .line 857
    .line 858
    goto :goto_1b

    .line 859
    :goto_1c
    iget-object v1, v2, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 860
    .line 861
    if-nez v1, :cond_27

    .line 862
    .line 863
    const/16 v26, 0x1

    .line 864
    .line 865
    goto :goto_1d

    .line 866
    :cond_27
    const/16 v26, 0x0

    .line 867
    .line 868
    :goto_1d
    if-eqz v20, :cond_2a

    .line 869
    .line 870
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 871
    .line 872
    if-ne v12, v1, :cond_28

    .line 873
    .line 874
    sub-float v0, v0, v21

    .line 875
    .line 876
    :cond_28
    move/from16 v28, v0

    .line 877
    .line 878
    add-float v4, v11, v19

    .line 879
    .line 880
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 881
    .line 882
    move-object/from16 v0, p0

    .line 883
    .line 884
    move-object/from16 v29, v1

    .line 885
    .line 886
    move-object/from16 v1, p1

    .line 887
    .line 888
    move-object/from16 v30, v2

    .line 889
    .line 890
    move/from16 v2, v28

    .line 891
    .line 892
    move-object/from16 v31, v9

    .line 893
    .line 894
    move v9, v3

    .line 895
    move v3, v4

    .line 896
    move-object/from16 v32, v13

    .line 897
    .line 898
    move-object/from16 v13, p1

    .line 899
    .line 900
    move-object/from16 v4, v30

    .line 901
    .line 902
    move-object/from16 v33, v5

    .line 903
    .line 904
    move-object/from16 v5, v29

    .line 905
    .line 906
    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawForm(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/components/LegendEntry;Lcom/github/mikephil/charting/components/Legend;)V

    .line 907
    .line 908
    .line 909
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 910
    .line 911
    if-ne v12, v0, :cond_29

    .line 912
    .line 913
    add-float v0, v28, v21

    .line 914
    .line 915
    goto :goto_1e

    .line 916
    :cond_29
    move/from16 v0, v28

    .line 917
    .line 918
    goto :goto_1e

    .line 919
    :cond_2a
    move-object/from16 v30, v2

    .line 920
    .line 921
    move-object/from16 v33, v5

    .line 922
    .line 923
    move-object/from16 v31, v9

    .line 924
    .line 925
    move-object/from16 v32, v13

    .line 926
    .line 927
    move-object/from16 v13, p1

    .line 928
    .line 929
    move v9, v3

    .line 930
    :goto_1e
    if-nez v26, :cond_30

    .line 931
    .line 932
    if-eqz v20, :cond_2c

    .line 933
    .line 934
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 935
    .line 936
    if-ne v12, v1, :cond_2b

    .line 937
    .line 938
    neg-float v1, v8

    .line 939
    goto :goto_1f

    .line 940
    :cond_2b
    move v1, v8

    .line 941
    :goto_1f
    add-float/2addr v0, v1

    .line 942
    :cond_2c
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 943
    .line 944
    if-ne v12, v1, :cond_2d

    .line 945
    .line 946
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 947
    .line 948
    .line 949
    move-result-object v2

    .line 950
    check-cast v2, Lcom/github/mikephil/charting/utils/FSize;

    .line 951
    .line 952
    iget v2, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    .line 953
    .line 954
    sub-float/2addr v0, v2

    .line 955
    :cond_2d
    add-float v2, v11, v27

    .line 956
    .line 957
    move-object/from16 v3, v30

    .line 958
    .line 959
    iget-object v3, v3, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 960
    .line 961
    invoke-virtual {v6, v13, v0, v2, v3}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    .line 962
    .line 963
    .line 964
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 965
    .line 966
    if-ne v12, v2, :cond_2e

    .line 967
    .line 968
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    move-result-object v2

    .line 972
    check-cast v2, Lcom/github/mikephil/charting/utils/FSize;

    .line 973
    .line 974
    iget v2, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    .line 975
    .line 976
    add-float/2addr v0, v2

    .line 977
    :cond_2e
    if-ne v12, v1, :cond_2f

    .line 978
    .line 979
    move/from16 v1, v22

    .line 980
    .line 981
    neg-float v2, v1

    .line 982
    goto :goto_20

    .line 983
    :cond_2f
    move/from16 v1, v22

    .line 984
    .line 985
    move v2, v1

    .line 986
    :goto_20
    add-float/2addr v0, v2

    .line 987
    :goto_21
    const/4 v2, 0x1

    .line 988
    goto :goto_23

    .line 989
    :cond_30
    move/from16 v1, v22

    .line 990
    .line 991
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 992
    .line 993
    if-ne v12, v2, :cond_31

    .line 994
    .line 995
    neg-float v3, v7

    .line 996
    goto :goto_22

    .line 997
    :cond_31
    move v3, v7

    .line 998
    :goto_22
    add-float/2addr v0, v3

    .line 999
    goto :goto_21

    .line 1000
    :goto_23
    add-int/lit8 v3, v9, 0x1

    .line 1001
    .line 1002
    move/from16 v22, v1

    .line 1003
    .line 1004
    move-object v4, v13

    .line 1005
    move/from16 v1, v18

    .line 1006
    .line 1007
    move-object/from16 v9, v31

    .line 1008
    .line 1009
    move-object/from16 v13, v32

    .line 1010
    .line 1011
    move-object/from16 v5, v33

    .line 1012
    .line 1013
    goto/16 :goto_15

    .line 1014
    .line 1015
    :cond_32
    :goto_24
    return-void

    .line 1016
    nop

    .line 1017
    :array_0
    .array-data 8
        0x1ad434e24c57fb82L
        -0x4d728f1c56b2ea07L    # -3.494484519540682E-65
    .end array-data
.end method
