.class public Lcom/github/mikephil/charting/data/BarData;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData<",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
        ">;"
    }
.end annotation


# instance fields
.field private mBarWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>()V

    const v0, 0x3f59999a    # 0.85f

    .line 2
    iput v0, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>(Ljava/util/List;)V

    const p1, 0x3f59999a    # 0.85f

    .line 6
    iput p1, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    return-void
.end method

.method public varargs constructor <init>([Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    const p1, 0x3f59999a    # 0.85f

    .line 4
    iput p1, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    return-void
.end method


# virtual methods
.method public getBarWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public getGroupWidth(FF)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    iget v1, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    .line 9
    .line 10
    add-float/2addr v1, p2

    .line 11
    mul-float v1, v1, v0

    .line 12
    .line 13
    add-float/2addr v1, p1

    .line 14
    return v1
.end method

.method public groupBars(FFF)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_5

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getMaxEntryCountSet()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/high16 v2, 0x40000000    # 2.0f

    .line 21
    .line 22
    div-float v3, p2, v2

    .line 23
    .line 24
    div-float v4, p3, v2

    .line 25
    .line 26
    iget v5, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    .line 27
    .line 28
    div-float/2addr v5, v2

    .line 29
    invoke-virtual {p0, p2, p3}, Lcom/github/mikephil/charting/data/BarData;->getGroupWidth(FF)F

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    const/4 p3, 0x0

    .line 34
    :goto_0
    if-ge p3, v0, :cond_4

    .line 35
    .line 36
    add-float v2, p1, v3

    .line 37
    .line 38
    iget-object v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 55
    .line 56
    add-float/2addr v2, v4

    .line 57
    add-float/2addr v2, v5

    .line 58
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-ge p3, v8, :cond_0

    .line 63
    .line 64
    invoke-interface {v7, p3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    check-cast v7, Lcom/github/mikephil/charting/data/BarEntry;

    .line 69
    .line 70
    if-eqz v7, :cond_0

    .line 71
    .line 72
    invoke-virtual {v7, v2}, Lcom/github/mikephil/charting/data/Entry;->setX(F)V

    .line 73
    .line 74
    .line 75
    :cond_0
    add-float/2addr v2, v5

    .line 76
    add-float/2addr v2, v4

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    add-float/2addr v2, v3

    .line 79
    sub-float p1, v2, p1

    .line 80
    .line 81
    sub-float p1, p2, p1

    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    cmpl-float v7, p1, v6

    .line 85
    .line 86
    if-gtz v7, :cond_3

    .line 87
    .line 88
    cmpg-float v6, p1, v6

    .line 89
    .line 90
    if-gez v6, :cond_2

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_2
    :goto_2
    move p1, v2

    .line 94
    goto :goto_4

    .line 95
    :cond_3
    :goto_3
    add-float/2addr v2, p1

    .line 96
    goto :goto_2

    .line 97
    :goto_4
    add-int/2addr p3, v1

    .line 98
    goto :goto_0

    .line 99
    :cond_4
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->notifyDataChanged()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 104
    .line 105
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    const/16 p3, 0x9

    .line 108
    .line 109
    new-array p3, p3, [J

    .line 110
    .line 111
    fill-array-data p3, :array_0

    .line 112
    .line 113
    .line 114
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1

    .line 125
    :array_0
    .array-data 8
        -0x1f1c98ad5a8ea49bL    # -5.328072841914747E158
        0x29aff93ccf749500L    # 6.807111861026063E-108
        0x54ebe9ac4d5f02aaL    # 1.2210452007735369E101
        -0x7f8ce5429fca4b3L    # -1.531659785536419E270
        -0x17fd1d4a53a6e560L    # -1.0770544791058919E193
        0x343ec5cd6d4c4d01L    # 4.902368499613557E-57
        -0x11bb3d99b932ecc7L    # -1.5007938420528603E223
        0x9df4631d858d22bL
        -0x296e11095d1212b9L    # -1.0529368258099967E109
    .end array-data
.end method

.method public setBarWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    .line 2
    .line 3
    return-void
.end method
