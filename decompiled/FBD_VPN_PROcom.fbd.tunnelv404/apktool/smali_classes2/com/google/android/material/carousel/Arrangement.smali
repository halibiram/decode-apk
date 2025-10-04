.class final Lcom/google/android/material/carousel/Arrangement;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MEDIUM_ITEM_FLEX_PERCENTAGE:F = 0.1f


# instance fields
.field final cost:F

.field final largeCount:I

.field largeSize:F

.field mediumCount:I

.field mediumSize:F

.field final priority:I

.field smallCount:I

.field smallSize:F


# direct methods
.method public constructor <init>(IFFFIFIFIF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/material/carousel/Arrangement;->priority:I

    .line 5
    .line 6
    invoke-static {p2, p3, p4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    .line 11
    .line 12
    iput p5, p0, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    .line 13
    .line 14
    iput p6, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    .line 15
    .line 16
    iput p7, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    .line 17
    .line 18
    iput p8, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    .line 19
    .line 20
    iput p9, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    .line 21
    .line 22
    invoke-direct {p0, p10, p3, p4, p8}, Lcom/google/android/material/carousel/Arrangement;->fit(FFFF)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p8}, Lcom/google/android/material/carousel/Arrangement;->cost(F)F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/google/android/material/carousel/Arrangement;->cost:F

    .line 30
    .line 31
    return-void
.end method

.method private calculateLargeSize(FIFII)F
    .locals 1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    int-to-float p2, p2

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    add-float/2addr p2, p4

    mul-float p2, p2, p3

    sub-float/2addr p1, p2

    int-to-float p2, p5

    add-float/2addr p2, p4

    div-float/2addr p1, p2

    return p1
.end method

.method private cost(F)F
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/carousel/Arrangement;->isValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 8
    .line 9
    .line 10
    return p1

    .line 11
    :cond_0
    iget v0, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    .line 12
    .line 13
    sub-float/2addr p1, v0

    .line 14
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget v0, p0, Lcom/google/android/material/carousel/Arrangement;->priority:I

    .line 19
    .line 20
    int-to-float v0, v0

    .line 21
    mul-float p1, p1, v0

    .line 22
    .line 23
    return p1
.end method

.method public static findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;
    .locals 25

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    move-object/from16 v1, p6

    .line 4
    .line 5
    move-object/from16 v2, p8

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v7, 0x0

    .line 11
    :goto_0
    if-ge v7, v3, :cond_5

    .line 12
    .line 13
    aget v19, v2, v7

    .line 14
    .line 15
    array-length v15, v1

    .line 16
    const/4 v14, 0x0

    .line 17
    :goto_1
    if-ge v14, v15, :cond_4

    .line 18
    .line 19
    aget v20, v1, v14

    .line 20
    .line 21
    array-length v13, v0

    .line 22
    const/4 v12, 0x0

    .line 23
    :goto_2
    if-ge v12, v13, :cond_3

    .line 24
    .line 25
    aget v16, v0, v12

    .line 26
    .line 27
    new-instance v11, Lcom/google/android/material/carousel/Arrangement;

    .line 28
    .line 29
    move-object v8, v11

    .line 30
    move v9, v5

    .line 31
    move/from16 v10, p1

    .line 32
    .line 33
    move-object v6, v11

    .line 34
    move/from16 v11, p2

    .line 35
    .line 36
    move/from16 v21, v12

    .line 37
    .line 38
    move/from16 v12, p3

    .line 39
    .line 40
    move/from16 v22, v13

    .line 41
    .line 42
    move/from16 v13, v16

    .line 43
    .line 44
    move/from16 v23, v14

    .line 45
    .line 46
    move/from16 v14, p5

    .line 47
    .line 48
    move/from16 v24, v15

    .line 49
    .line 50
    move/from16 v15, v20

    .line 51
    .line 52
    move/from16 v16, p7

    .line 53
    .line 54
    move/from16 v17, v19

    .line 55
    .line 56
    move/from16 v18, p0

    .line 57
    .line 58
    invoke-direct/range {v8 .. v18}, Lcom/google/android/material/carousel/Arrangement;-><init>(IFFFIFIFIF)V

    .line 59
    .line 60
    .line 61
    if-eqz v4, :cond_0

    .line 62
    .line 63
    iget v8, v6, Lcom/google/android/material/carousel/Arrangement;->cost:F

    .line 64
    .line 65
    iget v9, v4, Lcom/google/android/material/carousel/Arrangement;->cost:F

    .line 66
    .line 67
    cmpg-float v8, v8, v9

    .line 68
    .line 69
    if-gez v8, :cond_2

    .line 70
    .line 71
    :cond_0
    iget v4, v6, Lcom/google/android/material/carousel/Arrangement;->cost:F

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    cmpl-float v4, v4, v8

    .line 75
    .line 76
    if-nez v4, :cond_1

    .line 77
    .line 78
    return-object v6

    .line 79
    :cond_1
    move-object v4, v6

    .line 80
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 81
    .line 82
    add-int/lit8 v12, v21, 0x1

    .line 83
    .line 84
    move/from16 v13, v22

    .line 85
    .line 86
    move/from16 v14, v23

    .line 87
    .line 88
    move/from16 v15, v24

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    move/from16 v23, v14

    .line 92
    .line 93
    move/from16 v24, v15

    .line 94
    .line 95
    add-int/lit8 v14, v23, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    return-object v4
.end method

.method private fit(FFFF)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/carousel/Arrangement;->getSpace()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-float v0, p1, v0

    .line 6
    .line 7
    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    cmpl-float v3, v0, v2

    .line 13
    .line 14
    if-lez v3, :cond_0

    .line 15
    .line 16
    iget p2, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    .line 17
    .line 18
    int-to-float v1, v1

    .line 19
    div-float/2addr v0, v1

    .line 20
    sub-float/2addr p3, p2

    .line 21
    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    add-float/2addr p3, p2

    .line 26
    iput p3, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-lez v1, :cond_1

    .line 30
    .line 31
    cmpg-float p3, v0, v2

    .line 32
    .line 33
    if-gez p3, :cond_1

    .line 34
    .line 35
    iget p3, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    .line 36
    .line 37
    int-to-float v1, v1

    .line 38
    div-float/2addr v0, v1

    .line 39
    sub-float/2addr p2, p3

    .line 40
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    add-float/2addr p2, p3

    .line 45
    iput p2, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    .line 46
    .line 47
    :cond_1
    :goto_0
    iget v5, p0, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    .line 48
    .line 49
    if-lez v5, :cond_2

    .line 50
    .line 51
    iget p2, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    .line 52
    .line 53
    move v6, p2

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 v6, 0x0

    .line 56
    :goto_1
    iput v6, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    .line 57
    .line 58
    iget v7, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    .line 59
    .line 60
    iget v8, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    .line 61
    .line 62
    move-object v3, p0

    .line 63
    move v4, p1

    .line 64
    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/carousel/Arrangement;->calculateLargeSize(FIFII)F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    .line 69
    .line 70
    iget p2, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    .line 71
    .line 72
    add-float/2addr p2, p1

    .line 73
    const/high16 p3, 0x40000000    # 2.0f

    .line 74
    .line 75
    div-float/2addr p2, p3

    .line 76
    iput p2, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    .line 77
    .line 78
    iget p3, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    .line 79
    .line 80
    if-lez p3, :cond_4

    .line 81
    .line 82
    cmpl-float v0, p1, p4

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    sub-float/2addr p4, p1

    .line 87
    iget p1, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    .line 88
    .line 89
    int-to-float p1, p1

    .line 90
    mul-float p4, p4, p1

    .line 91
    .line 92
    const p1, 0x3dcccccd    # 0.1f

    .line 93
    .line 94
    .line 95
    mul-float p2, p2, p1

    .line 96
    .line 97
    int-to-float p1, p3

    .line 98
    mul-float p2, p2, p1

    .line 99
    .line 100
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    cmpl-float p2, p4, v2

    .line 109
    .line 110
    if-lez p2, :cond_3

    .line 111
    .line 112
    iget p2, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    .line 113
    .line 114
    iget p3, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    .line 115
    .line 116
    int-to-float p3, p3

    .line 117
    div-float p3, p1, p3

    .line 118
    .line 119
    sub-float/2addr p2, p3

    .line 120
    iput p2, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    .line 121
    .line 122
    iget p2, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    .line 123
    .line 124
    iget p3, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    .line 125
    .line 126
    int-to-float p3, p3

    .line 127
    div-float/2addr p1, p3

    .line 128
    add-float/2addr p1, p2

    .line 129
    iput p1, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    iget p2, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    .line 133
    .line 134
    iget p3, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    .line 135
    .line 136
    int-to-float p3, p3

    .line 137
    div-float p3, p1, p3

    .line 138
    .line 139
    add-float/2addr p3, p2

    .line 140
    iput p3, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    .line 141
    .line 142
    iget p2, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    .line 143
    .line 144
    iget p3, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    .line 145
    .line 146
    int-to-float p3, p3

    .line 147
    div-float/2addr p1, p3

    .line 148
    sub-float/2addr p2, p1

    .line 149
    iput p2, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    .line 150
    .line 151
    :cond_4
    :goto_2
    return-void
.end method

.method private getSpace()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    mul-float v0, v0, v1

    .line 7
    .line 8
    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    .line 9
    .line 10
    iget v2, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    .line 11
    .line 12
    int-to-float v2, v2

    .line 13
    mul-float v1, v1, v2

    .line 14
    .line 15
    add-float/2addr v1, v0

    .line 16
    iget v0, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    .line 17
    .line 18
    iget v2, p0, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    .line 19
    .line 20
    int-to-float v2, v2

    .line 21
    mul-float v0, v0, v2

    .line 22
    .line 23
    add-float/2addr v0, v1

    .line 24
    return v0
.end method

.method private isValid()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    iget v3, p0, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    .line 8
    .line 9
    if-lez v3, :cond_1

    .line 10
    .line 11
    iget v3, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    .line 12
    .line 13
    if-lez v3, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    .line 16
    .line 17
    iget v3, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    .line 18
    .line 19
    cmpl-float v0, v0, v3

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    iget v0, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    .line 24
    .line 25
    cmpl-float v0, v3, v0

    .line 26
    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    :cond_0
    return v1

    .line 31
    :cond_1
    if-lez v0, :cond_3

    .line 32
    .line 33
    iget v0, p0, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    .line 34
    .line 35
    if-lez v0, :cond_3

    .line 36
    .line 37
    iget v0, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    .line 38
    .line 39
    iget v3, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    .line 40
    .line 41
    cmpl-float v0, v0, v3

    .line 42
    .line 43
    if-lez v0, :cond_2

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    :cond_2
    return v1

    .line 47
    :cond_3
    return v2
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->priority:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v2, 0x3

    .line 32
    new-array v3, v2, [J

    .line 33
    .line 34
    fill-array-data v3, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v3, v2, [J

    .line 55
    .line 56
    fill-array-data v3, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v3, v2, [J

    .line 77
    .line 78
    fill-array-data v3, :array_3

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v3, v2, [J

    .line 99
    .line 100
    fill-array-data v3, :array_4

    .line 101
    .line 102
    .line 103
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    new-array v3, v2, [J

    .line 121
    .line 122
    fill-array-data v3, :array_5

    .line 123
    .line 124
    .line 125
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v2, v2, [J

    .line 143
    .line 144
    fill-array-data v2, :array_6

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    const/4 v2, 0x2

    .line 165
    new-array v3, v2, [J

    .line 166
    .line 167
    fill-array-data v3, :array_7

    .line 168
    .line 169
    .line 170
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->cost:F

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 186
    .line 187
    new-array v2, v2, [J

    .line 188
    .line 189
    fill-array-data v2, :array_8

    .line 190
    .line 191
    .line 192
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 193
    .line 194
    .line 195
    invoke-static {v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    return-object v0

    .line 200
    nop

    .line 201
    :array_0
    .array-data 8
        -0x44b96adf0511bf76L    # -3.7359669421374834E-23
        -0x32417e960690fbd8L    # -3.212606566245414E66
        -0x397a6e5842a87510L    # -5.468382476728529E31
        -0x58ee1daf230be62dL
    .end array-data

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
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :array_1
    .array-data 8
        0x58db97f4a9fa4ea6L
        0x1d64d90ed70c771dL    # 4.419309011415742E-167
        0xd9757400c4951a2L
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :array_2
    .array-data 8
        0x57dc31ef7ea1f955L    # 1.7358468037176126E115
        0x2428ee0a4ed4c2bL    # 8.86764228438823E-298
        0x149646ebb3136770L
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :array_3
    .array-data 8
        0x659776ab933babdeL
        0x73f70619e2eac989L    # 4.12110829162855E250
        -0x3b73a788ec958417L    # -1.6732269414704E22
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_4
    .array-data 8
        -0x139af58cd8a11a4aL    # -1.416672903871797E214
        -0x69322ebda837bfacL    # -7.790815444965465E-199
        0x5bc7ff91654ee7faL
    .end array-data

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_5
    .array-data 8
        0x310a5c657a5430bbL    # 1.8649692405869407E-72
        -0x3c9f4c730de1bb72L    # -3.7608140529869936E16
        0x5feb1eb1eb617e3L
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :array_6
    .array-data 8
        0x682bd956a427ac6bL    # 6.352965485537665E193
        0x2bf039e5643dfc9fL    # 4.747850822218493E-97
        0x69d91cf26d55f4adL    # 7.689126237669851E201
    .end array-data

    :array_7
    .array-data 8
        -0x2834dae912af719eL    # -8.355959162860655E114
        0x25dd48fba4b49a09L
    .end array-data

    :array_8
    .array-data 8
        0x3d8983dd62926c37L    # 2.9007306713685574E-12
        0x110589253d7dff61L    # 1.136351685048875E-226
    .end array-data
.end method
