.class public Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sTag:Ljava/lang/String; = "VelocityMatrix"


# instance fields
.field mDRotate:F

.field mDScaleX:F

.field mDScaleY:F

.field mDTranslateX:F

.field mDTranslateY:F

.field mRotate:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public applyTransform(FFII[F)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget v3, p5, v2

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    aget v5, p5, v4

    .line 10
    .line 11
    const/high16 v6, 0x3f000000    # 0.5f

    .line 12
    .line 13
    sub-float v7, p1, v6

    .line 14
    .line 15
    const/high16 v8, 0x40000000    # 2.0f

    .line 16
    .line 17
    mul-float v7, v7, v8

    .line 18
    .line 19
    sub-float v6, p2, v6

    .line 20
    .line 21
    mul-float v6, v6, v8

    .line 22
    .line 23
    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 24
    .line 25
    add-float/2addr v3, v8

    .line 26
    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 27
    .line 28
    add-float/2addr v5, v8

    .line 29
    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 30
    .line 31
    mul-float v8, v8, v7

    .line 32
    .line 33
    add-float/2addr v8, v3

    .line 34
    iget v3, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 35
    .line 36
    mul-float v3, v3, v6

    .line 37
    .line 38
    add-float/2addr v3, v5

    .line 39
    iget v5, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mRotate:F

    .line 40
    .line 41
    float-to-double v9, v5

    .line 42
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide v9

    .line 46
    double-to-float v5, v9

    .line 47
    iget v9, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 48
    .line 49
    float-to-double v9, v9

    .line 50
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    .line 51
    .line 52
    .line 53
    move-result-wide v9

    .line 54
    double-to-float v9, v9

    .line 55
    neg-int v10, v1

    .line 56
    int-to-float v10, v10

    .line 57
    mul-float v10, v10, v7

    .line 58
    .line 59
    float-to-double v10, v10

    .line 60
    float-to-double v12, v5

    .line 61
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 62
    .line 63
    .line 64
    move-result-wide v14

    .line 65
    mul-double v14, v14, v10

    .line 66
    .line 67
    move/from16 v5, p4

    .line 68
    .line 69
    int-to-float v5, v5

    .line 70
    mul-float v5, v5, v6

    .line 71
    .line 72
    float-to-double v5, v5

    .line 73
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide v10

    .line 77
    mul-double v10, v10, v5

    .line 78
    .line 79
    sub-double/2addr v14, v10

    .line 80
    double-to-float v10, v14

    .line 81
    mul-float v10, v10, v9

    .line 82
    .line 83
    add-float/2addr v10, v8

    .line 84
    int-to-float v1, v1

    .line 85
    mul-float v1, v1, v7

    .line 86
    .line 87
    float-to-double v7, v1

    .line 88
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    .line 89
    .line 90
    .line 91
    move-result-wide v14

    .line 92
    mul-double v14, v14, v7

    .line 93
    .line 94
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 95
    .line 96
    .line 97
    move-result-wide v7

    .line 98
    mul-double v7, v7, v5

    .line 99
    .line 100
    sub-double/2addr v14, v7

    .line 101
    double-to-float v1, v14

    .line 102
    mul-float v9, v9, v1

    .line 103
    .line 104
    add-float/2addr v9, v3

    .line 105
    aput v10, p5, v2

    .line 106
    .line 107
    aput v9, p5, v4

    .line 108
    .line 109
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 3
    .line 4
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 5
    .line 6
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 7
    .line 8
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 9
    .line 10
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 11
    .line 12
    return-void
.end method

.method public setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    :cond_0
    return-void
.end method

.method public setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 2
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mRotate:F

    :cond_0
    return-void
.end method

.method public setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    :cond_1
    return-void
.end method

.method public setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    :cond_1
    return-void
.end method

.method public setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    :cond_1
    return-void
.end method

.method public setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    :cond_1
    return-void
.end method
