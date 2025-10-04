.class public final Lcom/google/common/cache/CacheStats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/cache/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private final evictionCount:J

.field private final hitCount:J

.field private final loadExceptionCount:J

.field private final loadSuccessCount:J

.field private final missCount:J

.field private final totalLoadTime:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v3, p3

    .line 6
    .line 7
    move-wide/from16 v5, p5

    .line 8
    .line 9
    move-wide/from16 v7, p7

    .line 10
    .line 11
    move-wide/from16 v9, p9

    .line 12
    .line 13
    move-wide/from16 v11, p11

    .line 14
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v13, 0x0

    .line 19
    const/4 v14, 0x1

    .line 20
    const-wide/16 v15, 0x0

    .line 21
    .line 22
    cmp-long v17, v1, v15

    .line 23
    .line 24
    if-ltz v17, :cond_0

    .line 25
    .line 26
    const/16 v17, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v17, 0x0

    .line 30
    .line 31
    :goto_0
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 32
    .line 33
    .line 34
    cmp-long v17, v3, v15

    .line 35
    .line 36
    if-ltz v17, :cond_1

    .line 37
    .line 38
    const/16 v17, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v17, 0x0

    .line 42
    .line 43
    :goto_1
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 44
    .line 45
    .line 46
    cmp-long v17, v5, v15

    .line 47
    .line 48
    if-ltz v17, :cond_2

    .line 49
    .line 50
    const/16 v17, 0x1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v17, 0x0

    .line 54
    .line 55
    :goto_2
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 56
    .line 57
    .line 58
    cmp-long v17, v7, v15

    .line 59
    .line 60
    if-ltz v17, :cond_3

    .line 61
    .line 62
    const/16 v17, 0x1

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/16 v17, 0x0

    .line 66
    .line 67
    :goto_3
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 68
    .line 69
    .line 70
    cmp-long v17, v9, v15

    .line 71
    .line 72
    if-ltz v17, :cond_4

    .line 73
    .line 74
    const/16 v17, 0x1

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    const/16 v17, 0x0

    .line 78
    .line 79
    :goto_4
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 80
    .line 81
    .line 82
    cmp-long v17, v11, v15

    .line 83
    .line 84
    if-ltz v17, :cond_5

    .line 85
    .line 86
    const/4 v13, 0x1

    .line 87
    :cond_5
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 88
    .line 89
    .line 90
    iput-wide v1, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 91
    .line 92
    iput-wide v3, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 93
    .line 94
    iput-wide v5, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 95
    .line 96
    iput-wide v7, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 97
    .line 98
    iput-wide v9, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 99
    .line 100
    iput-wide v11, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 101
    .line 102
    return-void
.end method


# virtual methods
.method public averageLoadPenalty()D
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 19
    .line 20
    long-to-double v2, v2

    .line 21
    long-to-double v0, v0

    .line 22
    div-double v0, v2, v0

    .line 23
    .line 24
    :goto_0
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/cache/CacheStats;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/google/common/cache/CacheStats;

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 9
    .line 10
    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 11
    .line 12
    cmp-long v0, v2, v4

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 17
    .line 18
    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 19
    .line 20
    cmp-long v0, v2, v4

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 25
    .line 26
    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 27
    .line 28
    cmp-long v0, v2, v4

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 33
    .line 34
    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 35
    .line 36
    cmp-long v0, v2, v4

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 41
    .line 42
    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 43
    .line 44
    cmp-long v0, v2, v4

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 49
    .line 50
    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 51
    .line 52
    cmp-long p1, v2, v4

    .line 53
    .line 54
    if-nez p1, :cond_0

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    :cond_0
    return v1
.end method

.method public evictionCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-wide v3, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 20
    .line 21
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-wide v4, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 26
    .line 27
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-wide v5, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 32
    .line 33
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const/4 v6, 0x6

    .line 38
    new-array v6, v6, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    aput-object v0, v6, v7

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    aput-object v1, v6, v0

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    aput-object v2, v6, v0

    .line 48
    .line 49
    const/4 v0, 0x3

    .line 50
    aput-object v3, v6, v0

    .line 51
    .line 52
    const/4 v0, 0x4

    .line 53
    aput-object v4, v6, v0

    .line 54
    .line 55
    const/4 v0, 0x5

    .line 56
    aput-object v5, v6, v0

    .line 57
    .line 58
    invoke-static {v6}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    return v0
.end method

.method public hitCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hitRate()D
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/common/cache/CacheStats;->requestCount()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 15
    .line 16
    long-to-double v2, v2

    .line 17
    long-to-double v0, v0

    .line 18
    div-double v0, v2, v0

    .line 19
    .line 20
    :goto_0
    return-wide v0
.end method

.method public loadCount()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public loadExceptionCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public loadExceptionRate()D
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 19
    .line 20
    long-to-double v2, v2

    .line 21
    long-to-double v0, v0

    .line 22
    div-double v0, v2, v0

    .line 23
    .line 24
    :goto_0
    return-wide v0
.end method

.method public loadSuccessCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public minus(Lcom/google/common/cache/CacheStats;)Lcom/google/common/cache/CacheStats;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v14, Lcom/google/common/cache/CacheStats;

    .line 6
    .line 7
    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 8
    .line 9
    iget-wide v4, v1, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 10
    .line 11
    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    iget-wide v6, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 22
    .line 23
    iget-wide v8, v1, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 24
    .line 25
    invoke-static {v6, v7, v8, v9}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    iget-wide v8, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 34
    .line 35
    iget-wide v10, v1, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 36
    .line 37
    invoke-static {v8, v9, v10, v11}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide v8

    .line 41
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v8

    .line 45
    iget-wide v10, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 46
    .line 47
    iget-wide v12, v1, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 48
    .line 49
    invoke-static {v10, v11, v12, v13}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v10

    .line 53
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 54
    .line 55
    .line 56
    move-result-wide v10

    .line 57
    iget-wide v12, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 58
    .line 59
    move-wide v15, v10

    .line 60
    iget-wide v10, v1, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 61
    .line 62
    invoke-static {v12, v13, v10, v11}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    .line 63
    .line 64
    .line 65
    move-result-wide v10

    .line 66
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 67
    .line 68
    .line 69
    move-result-wide v10

    .line 70
    iget-wide v12, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 71
    .line 72
    iget-wide v0, v1, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 73
    .line 74
    invoke-static {v12, v13, v0, v1}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 79
    .line 80
    .line 81
    move-result-wide v12

    .line 82
    move-object v1, v14

    .line 83
    move-wide v4, v6

    .line 84
    move-wide v6, v8

    .line 85
    move-wide v8, v15

    .line 86
    invoke-direct/range {v1 .. v13}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    .line 87
    .line 88
    .line 89
    return-object v14
.end method

.method public missCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public missRate()D
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/common/cache/CacheStats;->requestCount()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 15
    .line 16
    long-to-double v2, v2

    .line 17
    long-to-double v0, v0

    .line 18
    div-double v0, v2, v0

    .line 19
    .line 20
    :goto_0
    return-wide v0
.end method

.method public plus(Lcom/google/common/cache/CacheStats;)Lcom/google/common/cache/CacheStats;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    new-instance v14, Lcom/google/common/cache/CacheStats;

    .line 5
    .line 6
    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 7
    .line 8
    iget-wide v4, v1, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 9
    .line 10
    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 15
    .line 16
    iget-wide v6, v1, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 17
    .line 18
    invoke-static {v4, v5, v6, v7}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    iget-wide v6, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 23
    .line 24
    iget-wide v8, v1, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 25
    .line 26
    invoke-static {v6, v7, v8, v9}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    iget-wide v8, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 31
    .line 32
    iget-wide v10, v1, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 33
    .line 34
    invoke-static {v8, v9, v10, v11}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v8

    .line 38
    iget-wide v10, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 39
    .line 40
    iget-wide v12, v1, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 41
    .line 42
    invoke-static {v10, v11, v12, v13}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide v10

    .line 46
    iget-wide v12, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 47
    .line 48
    iget-wide v0, v1, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 49
    .line 50
    invoke-static {v12, v13, v0, v1}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide v12

    .line 54
    move-object v1, v14

    .line 55
    invoke-direct/range {v1 .. v13}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    .line 56
    .line 57
    .line 58
    return-object v14
.end method

.method public requestCount()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x2

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
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    new-array v3, v2, [J

    .line 30
    .line 31
    fill-array-data v3, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-wide v3, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 42
    .line 43
    invoke-virtual {v0, v1, v3, v4}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v3, v2, [J

    .line 50
    .line 51
    fill-array-data v3, :array_2

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-wide v3, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 62
    .line 63
    invoke-virtual {v0, v1, v3, v4}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    const/4 v3, 0x4

    .line 70
    new-array v3, v3, [J

    .line 71
    .line 72
    fill-array-data v3, :array_3

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-wide v3, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 83
    .line 84
    invoke-virtual {v0, v1, v3, v4}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array v3, v2, [J

    .line 91
    .line 92
    fill-array-data v3, :array_4

    .line 93
    .line 94
    .line 95
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iget-wide v3, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 103
    .line 104
    invoke-virtual {v0, v1, v3, v4}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v2, v2, [J

    .line 111
    .line 112
    fill-array-data v2, :array_5

    .line 113
    .line 114
    .line 115
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 123
    .line 124
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    return-object v0

    .line 133
    :array_0
    .array-data 8
        0x62af537d547170f4L    # 2.3090555040347604E167
        0x4dd7681d1243cd7aL    # 9.86005017088319E66
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_1
    .array-data 8
        0x2a276695826b22baL
        0x2edd2799f537bb43L    # 6.003018440767392E-83
        -0x2525e198bda83f44L    # -4.5261689326212924E129
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_2
    .array-data 8
        -0x1fa9c2e962edd8dfL    # -1.192684920520464E156
        -0x2ddc659e815fc72cL    # -4.874526172057861E87
        0x1f71690d85507d1fL    # 3.170225005598447E-157
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_3
    .array-data 8
        -0x66ddb4204d57364eL
        0xd9ca7db754d0ac8L
        -0x1bf42a7182025eedL    # -8.605306528624277E173
        -0x7ef86945cf87411eL
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :array_4
    .array-data 8
        0x457d5e32fb75179aL    # 5.680590667973169E26
        -0x124520314e98fcefL    # -3.794662522487997E220
        0x36be96682aeb2f58L
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :array_5
    .array-data 8
        0x4ff101aaa23717dbL    # 1.2307620709076178E77
        -0x6142fa1cb1df7790L
        0x156ecf8ee405ed19L
    .end array-data
.end method

.method public totalLoadTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 2
    .line 3
    return-wide v0
.end method
