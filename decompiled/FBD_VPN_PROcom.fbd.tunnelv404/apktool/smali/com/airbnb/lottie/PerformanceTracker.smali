.class public Lcom/airbnb/lottie/PerformanceTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/PerformanceTracker$FrameListener;
    }
.end annotation


# instance fields
.field private enabled:Z

.field private final floatComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final frameListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/PerformanceTracker$FrameListener;",
            ">;"
        }
    .end annotation
.end field

.field private final layerRenderTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/utils/MeanCalculator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 6
    .line 7
    new-instance v0, Landroidx/collection/ArraySet;

    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 20
    .line 21
    new-instance v0, Lcom/airbnb/lottie/PerformanceTracker$1;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/PerformanceTracker$1;-><init>(Lcom/airbnb/lottie/PerformanceTracker;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->floatComparator:Ljava/util/Comparator;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public addFrameListener(Lcom/airbnb/lottie/PerformanceTracker$FrameListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearRenderTimes()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getSortedRenderTimes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/Map$Entry;

    .line 42
    .line 43
    new-instance v3, Landroidx/core/util/Pair;

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/airbnb/lottie/utils/MeanCalculator;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/MeanCalculator;->getMean()F

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-direct {v3, v4, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/PerformanceTracker;->floatComparator:Ljava/util/Comparator;

    .line 73
    .line 74
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 75
    .line 76
    .line 77
    return-object v0
.end method

.method public logRenderTimes()V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    iget-boolean v4, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/PerformanceTracker;->getSortedRenderTimes()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    new-array v6, v3, [J

    .line 17
    .line 18
    fill-array-data v6, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v6, v2, [J

    .line 30
    .line 31
    fill-array-data v6, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-ge v5, v6, :cond_1

    .line 46
    .line 47
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Landroidx/core/util/Pair;

    .line 52
    .line 53
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v8, v3, [J

    .line 56
    .line 57
    fill-array-data v8, :array_2

    .line 58
    .line 59
    .line 60
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v8, v2, [J

    .line 69
    .line 70
    fill-array-data v8, :array_3

    .line 71
    .line 72
    .line 73
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    iget-object v8, v6, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    .line 81
    .line 82
    iget-object v6, v6, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    .line 83
    .line 84
    new-array v9, v3, [Ljava/lang/Object;

    .line 85
    .line 86
    aput-object v8, v9, v1

    .line 87
    .line 88
    aput-object v6, v9, v0

    .line 89
    .line 90
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    add-int/2addr v5, v0

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    return-void

    .line 96
    nop

    .line 97
    :array_0
    .array-data 8
        -0x4583d818e40706a5L    # -5.686032704342659E-27
        0x7649d22bca6791aaL    # 6.352124218009104E261
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_1
    .array-data 8
        -0x446df7f52759e03dL    # -9.545751884453228E-22
        -0x2bc9973cd3849543L    # -4.7865820739076105E97
        0x2eac657c145f1027L    # 7.3086115363530295E-84
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_2
    .array-data 8
        0x7e498c0aef04c12eL    # 2.1385840010798982E300
        0x61ae5ba8822cbc42L    # 3.41445512166073E162
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_3
    .array-data 8
        -0x56baf701aa0ceb19L    # -6.997401750911495E-110
        -0x5e57bf7588452978L
        0x4a4582fa7a1153b3L    # 6.287857800810126E49
    .end array-data
.end method

.method public recordRenderTime(Ljava/lang/String;F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/airbnb/lottie/utils/MeanCalculator;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lcom/airbnb/lottie/utils/MeanCalculator;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/airbnb/lottie/utils/MeanCalculator;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/utils/MeanCalculator;->add(F)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    new-array v1, v1, [J

    .line 33
    .line 34
    fill-array-data v1, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/airbnb/lottie/PerformanceTracker$FrameListener;

    .line 67
    .line 68
    invoke-interface {v0, p2}, Lcom/airbnb/lottie/PerformanceTracker$FrameListener;->onFrameRendered(F)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return-void

    .line 73
    :array_0
    .array-data 8
        0x410a253ecbff851cL    # 214183.8496084594
        0x77097aaa79fce63bL    # 2.5673871755709515E265
        0x5bd5628f9032cf0fL    # 2.428663808362875E134
    .end array-data
.end method

.method public removeFrameListener(Lcom/airbnb/lottie/PerformanceTracker$FrameListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 2
    .line 3
    return-void
.end method
