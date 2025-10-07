.class public Lcom/tknetwork/tunnel/view/GraphHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TIME_PERIOD_HOURS:I = 0x2

.field private static final TIME_PERIOD_MINUTES:I = 0x1

.field private static mHandler:Landroid/os/Handler;

.field private static m_GraphHelper:Lcom/tknetwork/tunnel/view/GraphHelper;


# instance fields
.field private TAG:Ljava/lang/String;

.field private _upDateBytes:Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

.field protected dList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field dataIn:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field dataOut:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mColor:I

.field private mColourIn:I

.field private mColourOut:I

.field private mConfig:Lconfig/ConfigUtil;

.field private mContext:Landroid/content/Context;

.field private mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private mLogScale:Z

.field public triggerRefresh:Ljava/lang/Runnable;

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
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLogScale:Z

    .line 23
    .line 24
    new-instance v0, Lcom/tknetwork/tunnel/view/GraphHelper$1;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/view/GraphHelper$1;-><init>(Lcom/tknetwork/tunnel/view/GraphHelper;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->triggerRefresh:Ljava/lang/Runnable;

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x498d66b698d4e8e0L    # 2.098141435076329E46
        0x12ba83c00658daL
        0x71d28f958c719350L
    .end array-data
.end method

.method private getDataSet1(I)Lcom/github/mikephil/charting/data/LineData;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object v3, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->_upDateBytes:Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

    .line 7
    .line 8
    invoke-virtual {v3}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->getFastReceivedSeries()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    iput-object v3, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->dList:Ljava/util/List;

    .line 13
    .line 14
    iget-object v3, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->_upDateBytes:Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->getFastSentSeries()Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iput-object v3, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->uList:Ljava/util/List;

    .line 21
    .line 22
    new-instance v3, Ljava/util/LinkedList;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v3, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->dataIn:Ljava/util/LinkedList;

    .line 28
    .line 29
    new-instance v3, Ljava/util/LinkedList;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v3, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->dataOut:Ljava/util/LinkedList;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    const-wide/16 v6, 0x0

    .line 38
    .line 39
    if-eq v1, v3, :cond_1

    .line 40
    .line 41
    if-eq v1, v2, :cond_0

    .line 42
    .line 43
    sget-object v1, Lde/blinkt/openvpn/core/TkLogStatus;->trafficHistory:Lde/blinkt/openvpn/core/TrafficHistory;

    .line 44
    .line 45
    invoke-virtual {v1}, Lde/blinkt/openvpn/core/TrafficHistory;->getSeconds()Ljava/util/LinkedList;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-wide/32 v8, 0x493e0

    .line 50
    .line 51
    .line 52
    move-wide v10, v8

    .line 53
    const-wide/16 v8, 0x7d0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    sget-object v1, Lde/blinkt/openvpn/core/TkLogStatus;->trafficHistory:Lde/blinkt/openvpn/core/TrafficHistory;

    .line 57
    .line 58
    invoke-virtual {v1}, Lde/blinkt/openvpn/core/TrafficHistory;->getHours()Ljava/util/LinkedList;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-wide/32 v8, 0x36ee80

    .line 63
    .line 64
    .line 65
    move-wide v10, v6

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    sget-object v1, Lde/blinkt/openvpn/core/TkLogStatus;->trafficHistory:Lde/blinkt/openvpn/core/TrafficHistory;

    .line 68
    .line 69
    invoke-virtual {v1}, Lde/blinkt/openvpn/core/TrafficHistory;->getMinutes()Ljava/util/LinkedList;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-wide/32 v8, 0xea60

    .line 74
    .line 75
    .line 76
    const-wide/32 v10, 0x112a880

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_2

    .line 84
    .line 85
    invoke-static {}, Lde/blinkt/openvpn/core/TrafficHistory;->getDummyList()Ljava/util/LinkedList;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :cond_2
    iget-boolean v3, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLogScale:Z

    .line 90
    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    const/high16 v3, 0x40000000    # 2.0f

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const/4 v3, 0x0

    .line 97
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 98
    .line 99
    .line 100
    move-result-wide v13

    .line 101
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v15

    .line 105
    move-wide/from16 v16, v6

    .line 106
    .line 107
    move-wide/from16 v18, v16

    .line 108
    .line 109
    move-wide/from16 v20, v18

    .line 110
    .line 111
    move-wide/from16 v22, v20

    .line 112
    .line 113
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v24

    .line 117
    const-wide/16 v25, 0x3e8

    .line 118
    .line 119
    const/high16 v27, 0x42c80000    # 100.0f

    .line 120
    .line 121
    if-eqz v24, :cond_8

    .line 122
    .line 123
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v24

    .line 127
    move-object/from16 v2, v24

    .line 128
    .line 129
    check-cast v2, Lde/blinkt/openvpn/core/TrafficHistory$TrafficDatapoint;

    .line 130
    .line 131
    cmp-long v24, v10, v6

    .line 132
    .line 133
    if-eqz v24, :cond_4

    .line 134
    .line 135
    iget-wide v4, v2, Lde/blinkt/openvpn/core/TrafficHistory$TrafficDatapoint;->timestamp:J

    .line 136
    .line 137
    sub-long v4, v13, v4

    .line 138
    .line 139
    cmp-long v24, v4, v10

    .line 140
    .line 141
    if-lez v24, :cond_4

    .line 142
    .line 143
    const/4 v2, 0x2

    .line 144
    goto :goto_2

    .line 145
    :cond_4
    cmp-long v4, v18, v6

    .line 146
    .line 147
    if-nez v4, :cond_5

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    check-cast v4, Lde/blinkt/openvpn/core/TrafficHistory$TrafficDatapoint;

    .line 154
    .line 155
    iget-wide v4, v4, Lde/blinkt/openvpn/core/TrafficHistory$TrafficDatapoint;->timestamp:J

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v18

    .line 161
    move-object/from16 v6, v18

    .line 162
    .line 163
    check-cast v6, Lde/blinkt/openvpn/core/TrafficHistory$TrafficDatapoint;

    .line 164
    .line 165
    iget-wide v6, v6, Lde/blinkt/openvpn/core/TrafficHistory$TrafficDatapoint;->in:J

    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v18

    .line 171
    move-object/from16 v12, v18

    .line 172
    .line 173
    check-cast v12, Lde/blinkt/openvpn/core/TrafficHistory$TrafficDatapoint;

    .line 174
    .line 175
    move-wide/from16 v18, v4

    .line 176
    .line 177
    iget-wide v4, v12, Lde/blinkt/openvpn/core/TrafficHistory$TrafficDatapoint;->out:J

    .line 178
    .line 179
    move-wide/from16 v22, v4

    .line 180
    .line 181
    move-wide/from16 v20, v6

    .line 182
    .line 183
    :cond_5
    iget-wide v4, v2, Lde/blinkt/openvpn/core/TrafficHistory$TrafficDatapoint;->timestamp:J

    .line 184
    .line 185
    sub-long v4, v4, v18

    .line 186
    .line 187
    long-to-float v4, v4

    .line 188
    div-float v4, v4, v27

    .line 189
    .line 190
    iget-wide v5, v2, Lde/blinkt/openvpn/core/TrafficHistory$TrafficDatapoint;->in:J

    .line 191
    .line 192
    move-wide/from16 v28, v10

    .line 193
    .line 194
    sub-long v10, v5, v20

    .line 195
    .line 196
    long-to-float v7, v10

    .line 197
    div-long v10, v8, v25

    .line 198
    .line 199
    long-to-float v10, v10

    .line 200
    div-float/2addr v7, v10

    .line 201
    iget-wide v11, v2, Lde/blinkt/openvpn/core/TrafficHistory$TrafficDatapoint;->out:J

    .line 202
    .line 203
    move-wide/from16 v20, v5

    .line 204
    .line 205
    sub-long v5, v11, v22

    .line 206
    .line 207
    long-to-float v5, v5

    .line 208
    div-float/2addr v5, v10

    .line 209
    iget-boolean v6, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLogScale:Z

    .line 210
    .line 211
    if-eqz v6, :cond_6

    .line 212
    .line 213
    const/high16 v6, 0x41000000    # 8.0f

    .line 214
    .line 215
    mul-float v7, v7, v6

    .line 216
    .line 217
    float-to-double v6, v7

    .line 218
    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    .line 219
    .line 220
    .line 221
    move-result-wide v6

    .line 222
    double-to-float v6, v6

    .line 223
    const/high16 v7, 0x40000000    # 2.0f

    .line 224
    .line 225
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    const/high16 v10, 0x41000000    # 8.0f

    .line 230
    .line 231
    mul-float v5, v5, v10

    .line 232
    .line 233
    move-wide/from16 v22, v8

    .line 234
    .line 235
    float-to-double v7, v5

    .line 236
    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    .line 237
    .line 238
    .line 239
    move-result-wide v7

    .line 240
    double-to-float v5, v7

    .line 241
    const/high16 v7, 0x40000000    # 2.0f

    .line 242
    .line 243
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    move v7, v6

    .line 248
    :goto_3
    const/high16 v6, 0x40000000    # 2.0f

    .line 249
    .line 250
    const-wide/16 v8, 0x0

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_6
    move-wide/from16 v22, v8

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :goto_4
    cmp-long v10, v16, v8

    .line 257
    .line 258
    if-lez v10, :cond_7

    .line 259
    .line 260
    iget-wide v8, v2, Lde/blinkt/openvpn/core/TrafficHistory$TrafficDatapoint;->timestamp:J

    .line 261
    .line 262
    sub-long v8, v8, v16

    .line 263
    .line 264
    const-wide/16 v24, 0x2

    .line 265
    .line 266
    mul-long v24, v24, v22

    .line 267
    .line 268
    cmp-long v10, v8, v24

    .line 269
    .line 270
    if-lez v10, :cond_7

    .line 271
    .line 272
    iget-object v8, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->dataIn:Ljava/util/LinkedList;

    .line 273
    .line 274
    new-instance v9, Lcom/github/mikephil/charting/data/Entry;

    .line 275
    .line 276
    sub-long v16, v16, v18

    .line 277
    .line 278
    move v10, v7

    .line 279
    add-long v6, v16, v22

    .line 280
    .line 281
    long-to-float v6, v6

    .line 282
    div-float v6, v6, v27

    .line 283
    .line 284
    invoke-direct {v9, v6, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    iget-object v7, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->dataIn:Ljava/util/LinkedList;

    .line 291
    .line 292
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    .line 293
    .line 294
    move-wide/from16 v24, v11

    .line 295
    .line 296
    move-wide/from16 v11, v22

    .line 297
    .line 298
    long-to-float v9, v11

    .line 299
    div-float v9, v9, v27

    .line 300
    .line 301
    sub-float v9, v4, v9

    .line 302
    .line 303
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    iget-object v7, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->dataOut:Ljava/util/LinkedList;

    .line 310
    .line 311
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    .line 312
    .line 313
    invoke-direct {v8, v6, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    iget-object v6, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->dataOut:Ljava/util/LinkedList;

    .line 320
    .line 321
    new-instance v7, Lcom/github/mikephil/charting/data/Entry;

    .line 322
    .line 323
    invoke-direct {v7, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    goto :goto_5

    .line 330
    :cond_7
    move v10, v7

    .line 331
    move-wide/from16 v24, v11

    .line 332
    .line 333
    move-wide/from16 v11, v22

    .line 334
    .line 335
    :goto_5
    iget-wide v6, v2, Lde/blinkt/openvpn/core/TrafficHistory$TrafficDatapoint;->timestamp:J

    .line 336
    .line 337
    iget-object v2, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->dataIn:Ljava/util/LinkedList;

    .line 338
    .line 339
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    .line 340
    .line 341
    invoke-direct {v8, v4, v10}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    iget-object v2, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->dataOut:Ljava/util/LinkedList;

    .line 348
    .line 349
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    .line 350
    .line 351
    invoke-direct {v8, v4, v5}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-wide/from16 v16, v6

    .line 358
    .line 359
    move-wide v8, v11

    .line 360
    move-wide/from16 v22, v24

    .line 361
    .line 362
    move-wide/from16 v10, v28

    .line 363
    .line 364
    const/4 v2, 0x2

    .line 365
    const-wide/16 v6, 0x0

    .line 366
    .line 367
    goto/16 :goto_2

    .line 368
    .line 369
    :cond_8
    move-wide v11, v8

    .line 370
    sub-long v1, v13, v11

    .line 371
    .line 372
    cmp-long v4, v16, v1

    .line 373
    .line 374
    if-gez v4, :cond_a

    .line 375
    .line 376
    sub-long v1, v13, v16

    .line 377
    .line 378
    const-wide/16 v4, 0x7d0

    .line 379
    .line 380
    mul-long v8, v11, v4

    .line 381
    .line 382
    cmp-long v4, v1, v8

    .line 383
    .line 384
    if-lez v4, :cond_9

    .line 385
    .line 386
    iget-object v1, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->dataIn:Ljava/util/LinkedList;

    .line 387
    .line 388
    new-instance v2, Lcom/github/mikephil/charting/data/Entry;

    .line 389
    .line 390
    sub-long v16, v16, v18

    .line 391
    .line 392
    mul-long v8, v11, v25

    .line 393
    .line 394
    add-long v8, v8, v16

    .line 395
    .line 396
    long-to-float v4, v8

    .line 397
    div-float v4, v4, v27

    .line 398
    .line 399
    invoke-direct {v2, v4, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    iget-object v1, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->dataOut:Ljava/util/LinkedList;

    .line 406
    .line 407
    new-instance v2, Lcom/github/mikephil/charting/data/Entry;

    .line 408
    .line 409
    invoke-direct {v2, v4, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    :cond_9
    iget-object v1, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->dataOut:Ljava/util/LinkedList;

    .line 416
    .line 417
    new-instance v2, Lcom/github/mikephil/charting/data/Entry;

    .line 418
    .line 419
    sub-long v13, v13, v18

    .line 420
    .line 421
    const-wide/16 v4, 0x64

    .line 422
    .line 423
    div-long/2addr v13, v4

    .line 424
    long-to-float v4, v13

    .line 425
    invoke-direct {v2, v4, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    iget-object v1, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->dataIn:Ljava/util/LinkedList;

    .line 432
    .line 433
    new-instance v2, Lcom/github/mikephil/charting/data/Entry;

    .line 434
    .line 435
    invoke-direct {v2, v4, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    .line 442
    .line 443
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .line 445
    .line 446
    new-instance v2, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 447
    .line 448
    iget-object v3, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->dataOut:Ljava/util/LinkedList;

    .line 449
    .line 450
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 451
    .line 452
    const/4 v5, 0x3

    .line 453
    new-array v5, v5, [J

    .line 454
    .line 455
    fill-array-data v5, :array_0

    .line 456
    .line 457
    .line 458
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    invoke-direct {v2, v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    new-instance v3, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 469
    .line 470
    iget-object v4, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->dataIn:Ljava/util/LinkedList;

    .line 471
    .line 472
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 473
    .line 474
    const/4 v6, 0x2

    .line 475
    new-array v6, v6, [J

    .line 476
    .line 477
    fill-array-data v6, :array_1

    .line 478
    .line 479
    .line 480
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    invoke-direct {v3, v4, v5}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    const/high16 v4, -0x1000000

    .line 491
    .line 492
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColor(I)V

    .line 493
    .line 494
    .line 495
    iget v4, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->mColourOut:I

    .line 496
    .line 497
    invoke-direct {v0, v2, v4}, Lcom/tknetwork/tunnel/view/GraphHelper;->setLineDataAttributes(Lcom/github/mikephil/charting/data/LineDataSet;I)V

    .line 498
    .line 499
    .line 500
    iget v4, v0, Lcom/tknetwork/tunnel/view/GraphHelper;->mColourIn:I

    .line 501
    .line 502
    invoke-direct {v0, v3, v4}, Lcom/tknetwork/tunnel/view/GraphHelper;->setLineDataAttributes(Lcom/github/mikephil/charting/data/LineDataSet;I)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    new-instance v2, Lcom/github/mikephil/charting/data/LineData;

    .line 512
    .line 513
    invoke-direct {v2, v1}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;)V

    .line 514
    .line 515
    .line 516
    return-object v2

    .line 517
    :array_0
    .array-data 8
        0x58004505317725daL    # 8.013191167888599E115
        0x77ff35a8bf917814L    # 1.0304915153286826E270
        -0x57ff4092e71020bbL    # -5.313104604652527E-116
    .end array-data

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    :array_1
    .array-data 8
        0x1cdf741a4cdcf9daL
        -0x7cafb623b3aa7d76L
    .end array-data
.end method

.method public static declared-synchronized getHelper()Lcom/tknetwork/tunnel/view/GraphHelper;
    .locals 3

    .line 1
    const-class v0, Lcom/tknetwork/tunnel/view/GraphHelper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-class v1, Lcom/tknetwork/tunnel/view/GraphHelper;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    sget-object v2, Lcom/tknetwork/tunnel/view/GraphHelper;->m_GraphHelper:Lcom/tknetwork/tunnel/view/GraphHelper;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    new-instance v2, Lcom/tknetwork/tunnel/view/GraphHelper;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/tknetwork/tunnel/view/GraphHelper;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v2, Lcom/tknetwork/tunnel/view/GraphHelper;->m_GraphHelper:Lcom/tknetwork/tunnel/view/GraphHelper;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v2

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    sget-object v2, Lcom/tknetwork/tunnel/view/GraphHelper;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    new-instance v2, Landroid/os/Handler;

    .line 26
    .line 27
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v2, Lcom/tknetwork/tunnel/view/GraphHelper;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    :cond_1
    sget-object v2, Lcom/tknetwork/tunnel/view/GraphHelper;->m_GraphHelper:Lcom/tknetwork/tunnel/view/GraphHelper;

    .line 33
    .line 34
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit v0

    .line 36
    return-object v2

    .line 37
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :try_start_3
    throw v2

    .line 39
    :catchall_1
    move-exception v1

    .line 40
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    throw v1
.end method

.method private humanReadableByteCount(JZ)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-wide/16 v2, 0x8

    .line 6
    .line 7
    mul-long p1, p1, v2

    .line 8
    .line 9
    :cond_0
    if-eqz p3, :cond_1

    .line 10
    .line 11
    const/16 v2, 0x3e8

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/16 v2, 0x400

    .line 15
    .line 16
    :goto_0
    long-to-double p1, p1

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    int-to-double v5, v2

    .line 22
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v7

    .line 26
    div-double/2addr v3, v7

    .line 27
    double-to-int v2, v3

    .line 28
    const/4 v3, 0x3

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    int-to-double v3, v2

    .line 38
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    div-double/2addr p1, v3

    .line 43
    double-to-float p1, p1

    .line 44
    if-eqz p3, :cond_5

    .line 45
    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    if-eq v2, v0, :cond_3

    .line 49
    .line 50
    const/4 p2, 0x2

    .line 51
    if-eq v2, p2, :cond_2

    .line 52
    .line 53
    iget-object p2, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-array p3, v0, [Ljava/lang/Object;

    .line 60
    .line 61
    aput-object p1, p3, v1

    .line 62
    .line 63
    const p1, 0x7f1300c8

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget-object p2, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-array p3, v0, [Ljava/lang/Object;

    .line 78
    .line 79
    aput-object p1, p3, v1

    .line 80
    .line 81
    const p1, 0x7f130115

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    iget-object p2, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    new-array p3, v0, [Ljava/lang/Object;

    .line 96
    .line 97
    aput-object p1, p3, v1

    .line 98
    .line 99
    const p1, 0x7f1300de

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    goto :goto_1

    .line 107
    :cond_4
    iget-object p2, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    new-array p3, v0, [Ljava/lang/Object;

    .line 114
    .line 115
    aput-object p1, p3, v1

    .line 116
    .line 117
    const p1, 0x7f13003d

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :goto_1
    return-object p1

    .line 125
    :cond_5
    const/4 p1, 0x0

    .line 126
    return-object p1
.end method

.method private static synthetic lambda$getGraphView$0(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMaximum()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    sub-float/2addr p1, p0

    .line 25
    const/high16 p0, 0x41200000    # 10.0f

    .line 26
    .line 27
    div-float/2addr p1, p0

    .line 28
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 p1, 0x1

    .line 33
    new-array p1, p1, [Ljava/lang/Object;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    aput-object p0, p1, v2

    .line 37
    .line 38
    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :array_0
    .array-data 8
        0x4d07bf8598b9b280L    # 1.2211768712995785E63
        0x3436edffccc3117bL    # 3.652909481570452E-57
        0x15f3adea10edec8fL    # 6.276734272819901E-203
    .end array-data
.end method

.method private synthetic lambda$getGraphView$1(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean p2, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLogScale:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const v0, 0x40066666    # 2.1f

    .line 6
    .line 7
    .line 8
    cmpg-float v0, p1, v0

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 p2, 0x3

    .line 15
    new-array p2, p2, [J

    .line 16
    .line 17
    fill-array-data p2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    if-eqz p2, :cond_1

    .line 29
    .line 30
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 31
    .line 32
    float-to-double p1, p1

    .line 33
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    .line 34
    .line 35
    .line 36
    move-result-wide p1

    .line 37
    double-to-float p1, p1

    .line 38
    const/high16 p2, 0x41000000    # 8.0f

    .line 39
    .line 40
    div-float/2addr p1, p2

    .line 41
    :cond_1
    float-to-long p1, p1

    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/tknetwork/tunnel/view/GraphHelper;->humanReadableByteCount(JZ)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        0x1603face90cb48bcL
        -0x2774496f46536e6cL
        0x3df2192d5cddf850L    # 2.6336563213868857E-10
    .end array-data
.end method

.method private setLineDataAttributes(Lcom/github/mikephil/charting/data/LineDataSet;I)V
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setLineWidth(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setDrawFilled(Z)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x50

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setFillAlpha(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const v2, 0x7f060037

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setFillColor(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColor(I)V

    .line 35
    .line 36
    .line 37
    sget-object p2, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->LINEAR:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawValues(Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tknetwork/tunnel/view/GraphHelper;->lambda$getGraphView$0(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/view/GraphHelper;FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/view/GraphHelper;->lambda$getGraphView$1(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/view/GraphHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public chart(Lcom/github/mikephil/charting/charts/LineChart;)Lcom/tknetwork/tunnel/view/GraphHelper;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 2
    .line 3
    sget-object p1, Lcom/tknetwork/tunnel/view/GraphHelper;->m_GraphHelper:Lcom/tknetwork/tunnel/view/GraphHelper;

    .line 4
    .line 5
    return-object p1
.end method

.method public color(I)Lcom/tknetwork/tunnel/view/GraphHelper;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mColor:I

    .line 2
    .line 3
    sget-object p1, Lcom/tknetwork/tunnel/view/GraphHelper;->m_GraphHelper:Lcom/tknetwork/tunnel/view/GraphHelper;

    .line 4
    .line 5
    return-object p1
.end method

.method public getGraphView()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/Chart;->setTouchEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDrawGridBackground(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/high16 v3, -0x1000000

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    .line 49
    .line 50
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawAxisLine(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawLabels(Z)V

    .line 63
    .line 64
    .line 65
    const/high16 v4, 0x40e00000    # 7.0f

    .line 66
    .line 67
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 71
    .line 72
    .line 73
    new-instance v4, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;

    .line 74
    .line 75
    const/16 v5, 0xf

    .line 76
    .line 77
    invoke-direct {v4, v5}, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/4 v4, 0x5

    .line 90
    invoke-virtual {v0, v4, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawAxisLine(Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 97
    .line 98
    .line 99
    new-instance v3, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;

    .line 100
    .line 101
    const/16 v5, 0xb

    .line 102
    .line 103
    invoke-direct {v3, p0, v5}, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;-><init>(Ljava/lang/Object;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/AxisBase;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;)V

    .line 107
    .line 108
    .line 109
    iget-object v3, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, v1}, Lcom/tknetwork/tunnel/view/GraphHelper;->getDataSet1(I)Lcom/github/mikephil/charting/data/LineData;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/ChartData;->getYMax()F

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    iget-boolean v6, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLogScale:Z

    .line 127
    .line 128
    if-eqz v6, :cond_0

    .line 129
    .line 130
    const/high16 v4, 0x40000000    # 2.0f

    .line 131
    .line 132
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 133
    .line 134
    .line 135
    float-to-double v6, v5

    .line 136
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 137
    .line 138
    .line 139
    move-result-wide v6

    .line 140
    double-to-float v6, v6

    .line 141
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    .line 142
    .line 143
    .line 144
    sub-float/2addr v5, v4

    .line 145
    float-to-double v4, v5

    .line 146
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 147
    .line 148
    .line 149
    move-result-wide v4

    .line 150
    double-to-int v4, v4

    .line 151
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(I)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    goto :goto_2

    .line 157
    :cond_0
    const/4 v5, 0x0

    .line 158
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->resetAxisMaximum()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(I)V

    .line 165
    .line 166
    .line 167
    :goto_0
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 172
    .line 173
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-ge v0, v2, :cond_1

    .line 178
    .line 179
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 180
    .line 181
    const/4 v1, 0x0

    .line 182
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 187
    .line 188
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 189
    .line 190
    .line 191
    :goto_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    :goto_3
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/view/GraphHelper;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->triggerRefresh:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/view/GraphHelper;->getGraphView()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/tknetwork/tunnel/view/GraphHelper;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->triggerRefresh:Ljava/lang/Runnable;

    .line 14
    .line 15
    const-wide/16 v2, 0x3e8

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/view/GraphHelper;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->triggerRefresh:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public with(Landroid/content/Context;)Lcom/tknetwork/tunnel/view/GraphHelper;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mConfig:Lconfig/ConfigUtil;

    .line 8
    .line 9
    const p1, -0xff0100

    .line 10
    .line 11
    .line 12
    iput p1, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mColourIn:I

    .line 13
    .line 14
    const/high16 p1, -0x10000

    .line 15
    .line 16
    iput p1, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->mColourOut:I

    .line 17
    .line 18
    invoke-static {}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;->getStatisticData()Lcom/tknetwork/tunnel/utils/StatisticsGraphData;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;->getDataTransferStats()Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/GraphHelper;->_upDateBytes:Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

    .line 27
    .line 28
    sget-object p1, Lcom/tknetwork/tunnel/view/GraphHelper;->m_GraphHelper:Lcom/tknetwork/tunnel/view/GraphHelper;

    .line 29
    .line 30
    return-object p1
.end method
