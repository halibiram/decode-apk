.class public Lcom/tknetwork/tunnel/fragment/GraphFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# static fields
.field public static final color_download_graph:Ljava/lang/String;

.field public static final color_graph_text:Ljava/lang/String;

.field public static final color_upload_graph:Ljava/lang/String;


# instance fields
.field protected dList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private df:Ljava/text/DecimalFormat;

.field private e1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private e2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Z

.field private mChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private mGraphStats:Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

.field private mGraphThread:Ljava/lang/Thread;

.field protected uList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->color_download_graph:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->color_graph_text:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->color_upload_graph:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x1242a045a8dd7d80L
        -0x275135c583e86b7bL    # -1.5528780723226245E119
    .end array-data

    :array_1
    .array-data 8
        -0x112b11890a10cb65L    # -7.747778090117115E225
        0x16c4bec11f9f431eL    # 5.420372411414529E-199
    .end array-data

    :array_2
    .array-data 8
        0x4446e254a667632fL    # 8.442744254704028E20
        0x4745f1c91e91bd7fL    # 2.278844581302324E35
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->isRunning:Z

    .line 6
    .line 7
    return-void
.end method

.method private setGraph()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/text/DecimalFormat;

    .line 3
    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    new-array v4, v3, [J

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->df:Ljava/text/DecimalFormat;

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->dList:Ljava/util/List;

    .line 30
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->uList:Ljava/util/List;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/fragment/GraphFragment;->setSpeed()V

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->e1:Ljava/util/ArrayList;

    .line 47
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->e2:Ljava/util/ArrayList;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    :goto_0
    iget-object v6, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->dList:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-ge v4, v6, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    iget-object v6, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->dList:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Ljava/lang/Long;

    .line 77
    .line 78
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v6

    .line 82
    long-to-float v6, v6

    .line 83
    const/high16 v7, 0x44800000    # 1024.0f

    .line 84
    .line 85
    div-float/2addr v6, v7

    .line 86
    iget-object v8, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->uList:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    check-cast v8, Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v8

    .line 98
    long-to-float v8, v8

    .line 99
    div-float/2addr v8, v7

    .line 100
    int-to-float v7, v4

    .line 101
    iget-object v9, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->e1:Ljava/util/ArrayList;

    .line 102
    .line 103
    new-instance v10, Lcom/github/mikephil/charting/data/Entry;

    .line 104
    .line 105
    invoke-direct {v10, v7, v6}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    iget-object v9, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->e2:Ljava/util/ArrayList;

    .line 112
    .line 113
    new-instance v10, Lcom/github/mikephil/charting/data/Entry;

    .line 114
    .line 115
    invoke-direct {v10, v7, v8}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    cmpg-float v7, v5, v6

    .line 122
    .line 123
    if-gez v7, :cond_0

    .line 124
    .line 125
    move v5, v6

    .line 126
    :cond_0
    cmpg-float v6, v5, v8

    .line 127
    .line 128
    if-gez v6, :cond_1

    .line 129
    .line 130
    move v5, v8

    .line 131
    :cond_1
    add-int/2addr v4, v0

    .line 132
    goto :goto_0

    .line 133
    :cond_2
    new-instance v4, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 134
    .line 135
    iget-object v6, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->e1:Ljava/util/ArrayList;

    .line 136
    .line 137
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    new-array v8, v3, [J

    .line 140
    .line 141
    fill-array-data v8, :array_1

    .line 142
    .line 143
    .line 144
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-direct {v4, v6, v7}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setLineWidth(F)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawValues(Z)V

    .line 161
    .line 162
    .line 163
    const v6, -0xff0100

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColor(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 170
    .line 171
    .line 172
    new-instance v7, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 173
    .line 174
    iget-object v8, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->e2:Ljava/util/ArrayList;

    .line 175
    .line 176
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 177
    .line 178
    new-array v10, v3, [J

    .line 179
    .line 180
    fill-array-data v10, :array_2

    .line 181
    .line 182
    .line 183
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    invoke-direct {v7, v8, v9}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7, v1}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setLineWidth(F)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v2}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawValues(Z)V

    .line 200
    .line 201
    .line 202
    const/high16 v8, -0x10000

    .line 203
    .line 204
    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColor(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 208
    .line 209
    .line 210
    new-instance v8, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    iget-object v7, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->df:Ljava/text/DecimalFormat;

    .line 230
    .line 231
    float-to-double v9, v5

    .line 232
    invoke-virtual {v7, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 240
    .line 241
    new-array v3, v3, [J

    .line 242
    .line 243
    fill-array-data v3, :array_3

    .line 244
    .line 245
    .line 246
    invoke-direct {v7, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    new-instance v3, Lcom/github/mikephil/charting/components/LimitLine;

    .line 257
    .line 258
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-direct {v3, v5, v4}, Lcom/github/mikephil/charting/components/LimitLine;-><init>(FLjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    const/high16 v4, 0x3f800000    # 1.0f

    .line 266
    .line 267
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/LimitLine;->setLineWidth(F)V

    .line 268
    .line 269
    .line 270
    const/high16 v4, 0x41200000    # 10.0f

    .line 271
    .line 272
    invoke-virtual {v3, v4, v4, v1}, Lcom/github/mikephil/charting/components/LimitLine;->enableDashedLine(FFF)V

    .line 273
    .line 274
    .line 275
    sget-object v1, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->LEFT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    .line 276
    .line 277
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/LimitLine;->setLabelPosition(Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;)V

    .line 278
    .line 279
    .line 280
    const/high16 v1, 0x40c00000    # 6.0f

    .line 281
    .line 282
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    .line 283
    .line 284
    .line 285
    const/high16 v1, -0x1000000

    .line 286
    .line 287
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 288
    .line 289
    .line 290
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 291
    .line 292
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setTypeface(Landroid/graphics/Typeface;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 296
    .line 297
    .line 298
    iget-object v1, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 299
    .line 300
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    .line 305
    .line 306
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisLineColor(I)V

    .line 310
    .line 311
    .line 312
    iget-object v1, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 313
    .line 314
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 319
    .line 320
    .line 321
    iget-object v1, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 322
    .line 323
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 328
    .line 329
    .line 330
    iget-object v1, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 331
    .line 332
    new-instance v3, Lcom/github/mikephil/charting/data/LineData;

    .line 333
    .line 334
    invoke-direct {v3, v8}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 338
    .line 339
    .line 340
    iget-object v1, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 341
    .line 342
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDrawGridBackground(Z)V

    .line 343
    .line 344
    .line 345
    iget-object v0, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 346
    .line 347
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setGridBackgroundColor(I)V

    .line 348
    .line 349
    .line 350
    iget-object v0, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 351
    .line 352
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setTouchEnabled(Z)V

    .line 353
    .line 354
    .line 355
    iget-object v0, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 356
    .line 357
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    const/high16 v1, 0x40a00000    # 5.0f

    .line 362
    .line 363
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMaximumScaleX(F)V

    .line 364
    .line 365
    .line 366
    iget-object v0, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 367
    .line 368
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMaximumScaleY(F)V

    .line 373
    .line 374
    .line 375
    iget-object v0, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 376
    .line 377
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 382
    .line 383
    .line 384
    iget-object v0, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 385
    .line 386
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    nop

    .line 395
    :array_0
    .array-data 8
        -0x7163fc57edd00201L    # -2.688827611168422E-238
        0x3697806f7e750024L    # 1.0291530590275006E-45
    .end array-data

    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    :array_1
    .array-data 8
        -0x4b1b76172c3e612dL    # -6.701066451103197E-54
        -0x3f85196d31393171L    # -430.4108417287725
    .end array-data

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    :array_2
    .array-data 8
        0x31ac546c33c856fdL    # 2.0523628812347424E-69
        -0x21708612e4e32b6L
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
    :array_3
    .array-data 8
        0x3b672c0ecbf3057fL    # 1.533401001345754E-22
        0x455b955e703f00c0L    # 1.333854872706791E26
    .end array-data
.end method

.method private updateByteCount()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->isRunning:Z

    .line 3
    .line 4
    new-instance v0, Ljava/lang/Thread;

    .line 5
    .line 6
    new-instance v1, Lcom/tknetwork/tunnel/fragment/GraphFragment$1;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/tknetwork/tunnel/fragment/GraphFragment$1;-><init>(Lcom/tknetwork/tunnel/fragment/GraphFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mGraphThread:Ljava/lang/Thread;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/fragment/GraphFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->isRunning:Z

    return p0
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/fragment/GraphFragment;)Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mGraphStats:Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

    return-object p0
.end method


# virtual methods
.method public addDataSet()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    iget-object v3, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 6
    .line 7
    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Lcom/github/mikephil/charting/data/LineData;

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    if-eqz v3, :cond_b

    .line 17
    .line 18
    iget-object v4, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mGraphStats:Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

    .line 19
    .line 20
    invoke-virtual {v4}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->getFastReceivedSeries()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iput-object v4, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->dList:Ljava/util/List;

    .line 25
    .line 26
    iget-object v4, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mGraphStats:Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->getFastSentSeries()Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iput-object v4, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->uList:Ljava/util/List;

    .line 33
    .line 34
    new-instance v4, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v4, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->e1:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v4, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v4, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->e2:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/tknetwork/tunnel/fragment/GraphFragment;->setSpeed()V

    .line 49
    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x0

    .line 54
    :goto_0
    iget-object v8, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->dList:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    const/high16 v9, 0x44800000    # 1024.0f

    .line 61
    .line 62
    if-ge v6, v8, :cond_2

    .line 63
    .line 64
    iget-object v8, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->dList:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    check-cast v8, Ljava/lang/Long;

    .line 71
    .line 72
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v10

    .line 76
    long-to-float v8, v10

    .line 77
    div-float/2addr v8, v9

    .line 78
    iget-object v10, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->uList:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    check-cast v10, Ljava/lang/Long;

    .line 85
    .line 86
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v10

    .line 90
    long-to-float v10, v10

    .line 91
    div-float/2addr v10, v9

    .line 92
    int-to-float v9, v6

    .line 93
    iget-object v11, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->e1:Ljava/util/ArrayList;

    .line 94
    .line 95
    new-instance v12, Lcom/github/mikephil/charting/data/Entry;

    .line 96
    .line 97
    invoke-direct {v12, v9, v8}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    iget-object v11, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->e2:Ljava/util/ArrayList;

    .line 104
    .line 105
    new-instance v12, Lcom/github/mikephil/charting/data/Entry;

    .line 106
    .line 107
    invoke-direct {v12, v9, v10}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    cmpg-float v9, v7, v8

    .line 114
    .line 115
    if-gez v9, :cond_0

    .line 116
    .line 117
    move v7, v8

    .line 118
    :cond_0
    cmpg-float v8, v7, v10

    .line 119
    .line 120
    if-gez v8, :cond_1

    .line 121
    .line 122
    move v7, v10

    .line 123
    :cond_1
    add-int/2addr v6, v1

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v8, v2, [J

    .line 128
    .line 129
    fill-array-data v8, :array_0

    .line 130
    .line 131
    .line 132
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    const/high16 v8, 0x43600000    # 224.0f

    .line 140
    .line 141
    const/high16 v10, 0x43800000    # 256.0f

    .line 142
    .line 143
    cmpg-float v8, v7, v8

    .line 144
    .line 145
    if-gtz v8, :cond_3

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_3
    cmpg-float v8, v7, v10

    .line 149
    .line 150
    if-gtz v8, :cond_4

    .line 151
    .line 152
    const/high16 v8, 0x44000000    # 512.0f

    .line 153
    .line 154
    const/high16 v10, 0x44000000    # 512.0f

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    const/high16 v8, 0x44600000    # 896.0f

    .line 158
    .line 159
    cmpg-float v8, v7, v8

    .line 160
    .line 161
    if-gtz v8, :cond_5

    .line 162
    .line 163
    const/high16 v10, 0x44800000    # 1024.0f

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_5
    const/high16 v8, 0x45000000    # 2048.0f

    .line 167
    .line 168
    cmpl-float v10, v7, v9

    .line 169
    .line 170
    if-ltz v10, :cond_a

    .line 171
    .line 172
    const/high16 v6, 0x44e00000    # 1792.0f

    .line 173
    .line 174
    cmpl-float v6, v7, v6

    .line 175
    .line 176
    if-ltz v6, :cond_9

    .line 177
    .line 178
    const/high16 v6, 0x45600000    # 3584.0f

    .line 179
    .line 180
    cmpg-float v6, v7, v6

    .line 181
    .line 182
    if-gez v6, :cond_6

    .line 183
    .line 184
    const/high16 v6, 0x45800000    # 4096.0f

    .line 185
    .line 186
    const/high16 v8, 0x45800000    # 4096.0f

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_6
    const/high16 v6, 0x45e00000    # 7168.0f

    .line 190
    .line 191
    cmpg-float v6, v7, v6

    .line 192
    .line 193
    if-gez v6, :cond_7

    .line 194
    .line 195
    const/high16 v6, 0x46000000    # 8192.0f

    .line 196
    .line 197
    const/high16 v8, 0x46000000    # 8192.0f

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_7
    const/high16 v6, 0x46600000    # 14336.0f

    .line 201
    .line 202
    cmpg-float v6, v7, v6

    .line 203
    .line 204
    if-gez v6, :cond_8

    .line 205
    .line 206
    const/high16 v6, 0x46800000    # 16384.0f

    .line 207
    .line 208
    const/high16 v8, 0x46800000    # 16384.0f

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_8
    const/high16 v6, 0x47000000    # 32768.0f

    .line 212
    .line 213
    const/high16 v8, 0x47000000    # 32768.0f

    .line 214
    .line 215
    :cond_9
    :goto_1
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 216
    .line 217
    new-array v10, v2, [J

    .line 218
    .line 219
    fill-array-data v10, :array_1

    .line 220
    .line 221
    .line 222
    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    move v10, v8

    .line 230
    goto :goto_2

    .line 231
    :cond_a
    const/high16 v10, 0x45000000    # 2048.0f

    .line 232
    .line 233
    :goto_2
    new-instance v8, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 234
    .line 235
    iget-object v11, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->e2:Ljava/util/ArrayList;

    .line 236
    .line 237
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 238
    .line 239
    new-array v13, v2, [J

    .line 240
    .line 241
    fill-array-data v13, :array_2

    .line 242
    .line 243
    .line 244
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v12

    .line 251
    invoke-direct {v8, v11, v12}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    sget-object v11, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    .line 255
    .line 256
    invoke-virtual {v8, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 257
    .line 258
    .line 259
    const v12, 0x3e4ccccd    # 0.2f

    .line 260
    .line 261
    .line 262
    invoke-virtual {v8, v12}, Lcom/github/mikephil/charting/data/LineDataSet;->setCubicIntensity(F)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v8, v1}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setDrawFilled(Z)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v8, v5}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawValues(Z)V

    .line 269
    .line 270
    .line 271
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v14, v2, [J

    .line 274
    .line 275
    fill-array-data v14, :array_3

    .line 276
    .line 277
    .line 278
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v13

    .line 285
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result v13

    .line 289
    invoke-virtual {v8, v13}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setFillColor(I)V

    .line 290
    .line 291
    .line 292
    const/16 v13, 0x1388

    .line 293
    .line 294
    invoke-virtual {v8, v13}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setFillAlpha(I)V

    .line 295
    .line 296
    .line 297
    const/high16 v14, 0x3f000000    # 0.5f

    .line 298
    .line 299
    invoke-virtual {v8, v14}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setLineWidth(F)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v8, v14}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v8, v5}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawValues(Z)V

    .line 306
    .line 307
    .line 308
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 309
    .line 310
    new-array v9, v2, [J

    .line 311
    .line 312
    fill-array-data v9, :array_4

    .line 313
    .line 314
    .line 315
    invoke-direct {v15, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColor(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v8, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v8, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 333
    .line 334
    .line 335
    new-instance v9, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 336
    .line 337
    iget-object v15, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->e1:Ljava/util/ArrayList;

    .line 338
    .line 339
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 340
    .line 341
    new-array v14, v2, [J

    .line 342
    .line 343
    fill-array-data v14, :array_5

    .line 344
    .line 345
    .line 346
    invoke-direct {v4, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    invoke-direct {v9, v15, v4}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v9, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v9, v12}, Lcom/github/mikephil/charting/data/LineDataSet;->setCubicIntensity(F)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v9, v1}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setDrawFilled(Z)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v9, v5}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawValues(Z)V

    .line 366
    .line 367
    .line 368
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 369
    .line 370
    new-array v11, v2, [J

    .line 371
    .line 372
    fill-array-data v11, :array_6

    .line 373
    .line 374
    .line 375
    invoke-direct {v4, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    invoke-virtual {v9, v4}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setFillColor(I)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v9, v13}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setFillAlpha(I)V

    .line 390
    .line 391
    .line 392
    const/high16 v4, 0x3f000000    # 0.5f

    .line 393
    .line 394
    invoke-virtual {v9, v4}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setLineWidth(F)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v9, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    .line 398
    .line 399
    .line 400
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 401
    .line 402
    new-array v11, v2, [J

    .line 403
    .line 404
    fill-array-data v11, :array_7

    .line 405
    .line 406
    .line 407
    invoke-direct {v4, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    invoke-virtual {v9, v4}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColor(I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v9, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 422
    .line 423
    .line 424
    const/16 v4, 0x66

    .line 425
    .line 426
    invoke-static {v5, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    invoke-virtual {v9, v4}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->setHighLightColor(I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v9, v5}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawValues(Z)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v9, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 437
    .line 438
    .line 439
    new-instance v4, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .line 443
    .line 444
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    iget-object v11, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->df:Ljava/text/DecimalFormat;

    .line 448
    .line 449
    float-to-double v12, v7

    .line 450
    invoke-virtual {v11, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v11

    .line 454
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    new-instance v6, Lcom/github/mikephil/charting/components/LimitLine;

    .line 461
    .line 462
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    invoke-direct {v6, v7, v4}, Lcom/github/mikephil/charting/components/LimitLine;-><init>(FLjava/lang/String;)V

    .line 467
    .line 468
    .line 469
    const/high16 v4, 0x3f800000    # 1.0f

    .line 470
    .line 471
    invoke-virtual {v6, v4}, Lcom/github/mikephil/charting/components/LimitLine;->setLineWidth(F)V

    .line 472
    .line 473
    .line 474
    const/high16 v7, 0x41200000    # 10.0f

    .line 475
    .line 476
    const/4 v11, 0x0

    .line 477
    invoke-virtual {v6, v7, v7, v11}, Lcom/github/mikephil/charting/components/LimitLine;->enableDashedLine(FFF)V

    .line 478
    .line 479
    .line 480
    sget-object v7, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->LEFT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    .line 481
    .line 482
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/components/LimitLine;->setLabelPosition(Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;)V

    .line 483
    .line 484
    .line 485
    const/high16 v7, 0x40c00000    # 6.0f

    .line 486
    .line 487
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    .line 488
    .line 489
    .line 490
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 491
    .line 492
    new-array v12, v2, [J

    .line 493
    .line 494
    fill-array-data v12, :array_8

    .line 495
    .line 496
    .line 497
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v11

    .line 504
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 505
    .line 506
    .line 507
    move-result v11

    .line 508
    invoke-virtual {v6, v11}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v6, v5}, Lcom/github/mikephil/charting/components/LimitLine;->setLineColor(I)V

    .line 512
    .line 513
    .line 514
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 515
    .line 516
    invoke-virtual {v6, v11}, Lcom/github/mikephil/charting/components/ComponentBase;->setTypeface(Landroid/graphics/Typeface;)V

    .line 517
    .line 518
    .line 519
    iget-object v12, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 520
    .line 521
    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    .line 522
    .line 523
    .line 524
    move-result-object v12

    .line 525
    sget-object v13, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    .line 526
    .line 527
    invoke-virtual {v12, v13}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v12, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v12, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawAxisLine(Z)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v12, v5, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v12, v7}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    .line 540
    .line 541
    .line 542
    const/4 v13, 0x0

    .line 543
    invoke-virtual {v12, v13}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinValue(F)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v12, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawLabels(Z)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v12, v11}, Lcom/github/mikephil/charting/components/ComponentBase;->setTypeface(Landroid/graphics/Typeface;)V

    .line 550
    .line 551
    .line 552
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 553
    .line 554
    new-array v13, v2, [J

    .line 555
    .line 556
    fill-array-data v13, :array_9

    .line 557
    .line 558
    .line 559
    invoke-direct {v11, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v11

    .line 566
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 567
    .line 568
    .line 569
    move-result v11

    .line 570
    invoke-virtual {v12, v11}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v12, v5}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 574
    .line 575
    .line 576
    const/high16 v11, 0x40a00000    # 5.0f

    .line 577
    .line 578
    invoke-virtual {v12, v11, v11, v4}, Lcom/github/mikephil/charting/components/AxisBase;->enableGridDashedLine(FFF)V

    .line 579
    .line 580
    .line 581
    iget-object v12, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 582
    .line 583
    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    .line 584
    .line 585
    .line 586
    move-result-object v12

    .line 587
    invoke-virtual {v12, v5, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v12, v10}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaxValue(F)V

    .line 591
    .line 592
    .line 593
    const/4 v13, 0x0

    .line 594
    invoke-virtual {v12, v13}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinValue(F)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v12, v11, v11, v4}, Lcom/github/mikephil/charting/components/AxisBase;->enableGridDashedLine(FFF)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v12}, Lcom/github/mikephil/charting/components/AxisBase;->removeAllLimitLines()V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v12, v6}, Lcom/github/mikephil/charting/components/AxisBase;->addLimitLine(Lcom/github/mikephil/charting/components/LimitLine;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v12, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawLimitLinesBehindData(Z)V

    .line 607
    .line 608
    .line 609
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 610
    .line 611
    new-array v13, v2, [J

    .line 612
    .line 613
    fill-array-data v13, :array_a

    .line 614
    .line 615
    .line 616
    invoke-direct {v6, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v6

    .line 623
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 624
    .line 625
    .line 626
    move-result v6

    .line 627
    invoke-virtual {v12, v6}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v12, v7}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v12, v5}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 634
    .line 635
    .line 636
    iget-object v6, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 637
    .line 638
    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    .line 639
    .line 640
    .line 641
    move-result-object v6

    .line 642
    invoke-virtual {v6, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 643
    .line 644
    .line 645
    iget-object v6, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 646
    .line 647
    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    .line 648
    .line 649
    .line 650
    move-result-object v6

    .line 651
    const/16 v12, 0xa

    .line 652
    .line 653
    invoke-virtual {v6, v12, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    .line 654
    .line 655
    .line 656
    const/high16 v12, 0x44800000    # 1024.0f

    .line 657
    .line 658
    div-float/2addr v10, v12

    .line 659
    invoke-virtual {v6, v10}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaxValue(F)V

    .line 660
    .line 661
    .line 662
    const/4 v10, 0x0

    .line 663
    invoke-virtual {v6, v10}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinValue(F)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v6, v11, v11, v4}, Lcom/github/mikephil/charting/components/AxisBase;->enableGridDashedLine(FFF)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v6, v5}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    .line 673
    .line 674
    .line 675
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 676
    .line 677
    new-array v2, v2, [J

    .line 678
    .line 679
    fill-array-data v2, :array_b

    .line 680
    .line 681
    .line 682
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    invoke-virtual {v6, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/ChartData;->removeDataSet(I)Z

    .line 697
    .line 698
    .line 699
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/ChartData;->removeDataSet(I)Z

    .line 700
    .line 701
    .line 702
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/ChartData;->clearValues()V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v3, v9}, Lcom/github/mikephil/charting/data/ChartData;->addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v3, v8}, Lcom/github/mikephil/charting/data/ChartData;->addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/ChartData;->notifyDataChanged()V

    .line 712
    .line 713
    .line 714
    iget-object v1, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 715
    .line 716
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    .line 721
    .line 722
    .line 723
    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 724
    .line 725
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setTypeface(Landroid/graphics/Typeface;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 729
    .line 730
    .line 731
    iget-object v1, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 732
    .line 733
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 738
    .line 739
    .line 740
    iget-object v1, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 741
    .line 742
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 743
    .line 744
    .line 745
    iget-object v1, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 746
    .line 747
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 748
    .line 749
    .line 750
    move-result-object v1

    .line 751
    invoke-virtual {v1, v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMaximumScaleX(F)V

    .line 752
    .line 753
    .line 754
    iget-object v1, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 755
    .line 756
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    invoke-virtual {v1, v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMaximumScaleY(F)V

    .line 761
    .line 762
    .line 763
    iget-object v1, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 764
    .line 765
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->notifyDataSetChanged()V

    .line 766
    .line 767
    .line 768
    iget-object v1, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 769
    .line 770
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 771
    .line 772
    .line 773
    :cond_b
    return-void

    .line 774
    nop

    .line 775
    :array_0
    .array-data 8
        -0x4690bd36b964c854L    # -4.816501764328989E-32
        -0x2ec7b2efd317933cL    # -1.844095752950604E83
    .end array-data

    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    :array_1
    .array-data 8
        0xc0e3b81ba5636a7L
        0x3b18612b72dbc995L    # 5.041576751128524E-24
    .end array-data

    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    :array_2
    .array-data 8
        -0x1f45dc88e96c7aa5L    # -8.971788001376938E157
        0x11e9744ace0799c9L
    .end array-data

    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    :array_3
    .array-data 8
        0x3b8b56a9314d1da1L    # 7.236445771707991E-22
        -0x6c5403db114c9429L    # -6.4943762999818286E-214
    .end array-data

    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    :array_4
    .array-data 8
        0x1ac4d038f6ebe6dcL
        -0x671aef0ad4e436a9L    # -9.456268065305412E-189
    .end array-data

    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    :array_5
    .array-data 8
        -0x50824b93d1da66ddL    # -6.2630725057282486E-80
        0x321dea739082bb59L    # 2.7740991333914955E-67
    .end array-data

    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    :array_6
    .array-data 8
        0x63c67e596a13c8f7L    # 4.346358758464696E172
        0x26f3b2197268ec49L    # 4.767088227068955E-121
    .end array-data

    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    :array_7
    .array-data 8
        -0x11cf33f4e63009f9L    # -6.071691239537932E222
        0x77e56855263d2bd0L    # 3.534216002400288E269
    .end array-data

    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    :array_8
    .array-data 8
        0x4cdef6cefed7c668L    # 1.9902953547630103E62
        0x2fe082bd491291adL    # 4.455912336970134E-78
    .end array-data

    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    :array_9
    .array-data 8
        0x41020928ca3234eaL    # 147749.09872857417
        -0x25ff5b83bcb79b8L
    .end array-data

    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    :array_a
    .array-data 8
        -0x10fd1f84e751f755L    # -5.589808481244678E226
        -0x973904324748aeaL
    .end array-data

    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    :array_b
    .array-data 8
        -0x2bbca280b6424f3bL    # -8.272773273661697E97
        -0x5540db94522fbf32L    # -8.690239188886298E-103
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const p3, 0x7f0d004e

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0a00a3

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lcom/github/mikephil/charting/charts/LineChart;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 19
    .line 20
    invoke-static {}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;->getStatisticData()Lcom/tknetwork/tunnel/utils/StatisticsGraphData;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;->getDataTransferStats()Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment;->mGraphStats:Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

    .line 29
    .line 30
    :try_start_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/fragment/GraphFragment;->setGraph()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/tknetwork/tunnel/fragment/GraphFragment;->updateByteCount()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :catch_0
    return-object p1
.end method

.method public setSpeed()V
    .locals 0

    return-void
.end method
