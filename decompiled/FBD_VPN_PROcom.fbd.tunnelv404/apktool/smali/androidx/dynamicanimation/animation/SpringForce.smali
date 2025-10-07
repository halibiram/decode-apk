.class public final Landroidx/dynamicanimation/animation/SpringForce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/Force;


# static fields
.field public static final DAMPING_RATIO_HIGH_BOUNCY:F = 0.2f

.field public static final DAMPING_RATIO_LOW_BOUNCY:F = 0.75f

.field public static final DAMPING_RATIO_MEDIUM_BOUNCY:F = 0.5f

.field public static final DAMPING_RATIO_NO_BOUNCY:F = 1.0f

.field public static final STIFFNESS_HIGH:F = 10000.0f

.field public static final STIFFNESS_LOW:F = 200.0f

.field public static final STIFFNESS_MEDIUM:F = 1500.0f

.field public static final STIFFNESS_VERY_LOW:F = 50.0f

.field private static final UNSET:D = 1.7976931348623157E308

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:D = 62.5


# instance fields
.field private mDampedFreq:D

.field mDampingRatio:D

.field private mFinalPosition:D

.field private mGammaMinus:D

.field private mGammaPlus:D

.field private mInitialized:Z

.field private final mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

.field mNaturalFreq:D

.field private mValueThreshold:D

.field private mVelocityThreshold:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L    # 1500.0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 3
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 5
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 6
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L    # 1500.0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 9
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 11
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 12
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    float-to-double v0, p1

    .line 13
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    return-void
.end method

.method private init()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 7
    .line 8
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    cmpl-double v4, v0, v2

    .line 14
    .line 15
    if-eqz v4, :cond_3

    .line 16
    .line 17
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 18
    .line 19
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 20
    .line 21
    cmpl-double v4, v0, v2

    .line 22
    .line 23
    if-lez v4, :cond_1

    .line 24
    .line 25
    neg-double v4, v0

    .line 26
    iget-wide v6, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 27
    .line 28
    mul-double v4, v4, v6

    .line 29
    .line 30
    mul-double v0, v0, v0

    .line 31
    .line 32
    sub-double/2addr v0, v2

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    mul-double v0, v0, v6

    .line 38
    .line 39
    add-double/2addr v0, v4

    .line 40
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 41
    .line 42
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 43
    .line 44
    neg-double v4, v0

    .line 45
    iget-wide v6, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 46
    .line 47
    mul-double v4, v4, v6

    .line 48
    .line 49
    mul-double v0, v0, v0

    .line 50
    .line 51
    sub-double/2addr v0, v2

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    mul-double v0, v0, v6

    .line 57
    .line 58
    sub-double/2addr v4, v0

    .line 59
    iput-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-wide/16 v4, 0x0

    .line 63
    .line 64
    cmpl-double v6, v0, v4

    .line 65
    .line 66
    if-ltz v6, :cond_2

    .line 67
    .line 68
    cmpg-double v4, v0, v2

    .line 69
    .line 70
    if-gez v4, :cond_2

    .line 71
    .line 72
    iget-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 73
    .line 74
    mul-double v0, v0, v0

    .line 75
    .line 76
    sub-double/2addr v2, v0

    .line 77
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    mul-double v0, v0, v4

    .line 82
    .line 83
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 84
    .line 85
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string v1, "Error: Final position of the spring must be set before the animation starts"

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0
.end method


# virtual methods
.method public getAcceleration(FF)F
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-float/2addr p1, v0

    .line 6
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 7
    .line 8
    mul-double v2, v0, v0

    .line 9
    .line 10
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 11
    .line 12
    mul-double v0, v0, v4

    .line 13
    .line 14
    iget-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 15
    .line 16
    mul-double v0, v0, v4

    .line 17
    .line 18
    neg-double v2, v2

    .line 19
    float-to-double v4, p1

    .line 20
    mul-double v2, v2, v4

    .line 21
    .line 22
    float-to-double p1, p2

    .line 23
    mul-double v0, v0, p1

    .line 24
    .line 25
    sub-double/2addr v2, v0

    .line 26
    double-to-float p1, v2

    .line 27
    return p1
.end method

.method public getDampingRatio()F
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 2
    .line 3
    double-to-float v0, v0

    .line 4
    return v0
.end method

.method public getFinalPosition()F
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 2
    .line 3
    double-to-float v0, v0

    .line 4
    return v0
.end method

.method public getStiffness()F
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 2
    .line 3
    mul-double v0, v0, v0

    .line 4
    .line 5
    double-to-float v0, v0

    .line 6
    return v0
.end method

.method public isAtEquilibrium(FF)Z
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    float-to-double v0, p2

    .line 6
    iget-wide v2, p0, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    .line 7
    .line 8
    cmpg-double p2, v0, v2

    .line 9
    .line 10
    if-gez p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    sub-float/2addr p1, p2

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    float-to-double p1, p1

    .line 22
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    .line 23
    .line 24
    cmpg-double v2, p1, v0

    .line 25
    .line 26
    if-gez v2, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method public setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    float-to-double v0, p1

    .line 7
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "Damping ratio must be non-negative"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 2

    .line 1
    float-to-double v0, p1

    .line 2
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 3
    .line 4
    return-object p0
.end method

.method public setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    float-to-double v0, p1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v0, "Spring stiffness constant must be positive."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public setValueThreshold(D)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    .line 6
    .line 7
    const-wide v0, 0x404f400000000000L    # 62.5

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    mul-double p1, p1, v0

    .line 13
    .line 14
    iput-wide p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    .line 15
    .line 16
    return-void
.end method

.method public updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;->init()V

    .line 3
    .line 4
    .line 5
    move-wide/from16 v1, p5

    .line 6
    .line 7
    long-to-double v1, v1

    .line 8
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    div-double/2addr v1, v3

    .line 14
    iget-wide v3, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 15
    .line 16
    sub-double v3, p1, v3

    .line 17
    .line 18
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 19
    .line 20
    const-wide v7, 0x4005bf0a8b145769L    # Math.E

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 26
    .line 27
    cmpl-double v11, v5, v9

    .line 28
    .line 29
    if-lez v11, :cond_0

    .line 30
    .line 31
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    .line 32
    .line 33
    mul-double v9, v5, v3

    .line 34
    .line 35
    sub-double v9, v9, p3

    .line 36
    .line 37
    iget-wide v11, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 38
    .line 39
    sub-double v13, v5, v11

    .line 40
    .line 41
    div-double/2addr v9, v13

    .line 42
    sub-double v9, v3, v9

    .line 43
    .line 44
    mul-double v3, v3, v5

    .line 45
    .line 46
    sub-double v3, v3, p3

    .line 47
    .line 48
    sub-double v11, v5, v11

    .line 49
    .line 50
    div-double/2addr v3, v11

    .line 51
    mul-double v5, v5, v1

    .line 52
    .line 53
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    mul-double v5, v5, v9

    .line 58
    .line 59
    iget-wide v11, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 60
    .line 61
    mul-double v11, v11, v1

    .line 62
    .line 63
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 64
    .line 65
    .line 66
    move-result-wide v11

    .line 67
    mul-double v11, v11, v3

    .line 68
    .line 69
    add-double/2addr v11, v5

    .line 70
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    .line 71
    .line 72
    mul-double v9, v9, v5

    .line 73
    .line 74
    mul-double v5, v5, v1

    .line 75
    .line 76
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 77
    .line 78
    .line 79
    move-result-wide v5

    .line 80
    mul-double v5, v5, v9

    .line 81
    .line 82
    iget-wide v9, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 83
    .line 84
    mul-double v3, v3, v9

    .line 85
    .line 86
    mul-double v9, v9, v1

    .line 87
    .line 88
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 89
    .line 90
    .line 91
    move-result-wide v1

    .line 92
    mul-double v1, v1, v3

    .line 93
    .line 94
    add-double/2addr v1, v5

    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_0
    cmpl-double v11, v5, v9

    .line 98
    .line 99
    if-nez v11, :cond_1

    .line 100
    .line 101
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 102
    .line 103
    mul-double v9, v5, v3

    .line 104
    .line 105
    add-double v9, v9, p3

    .line 106
    .line 107
    mul-double v11, v9, v1

    .line 108
    .line 109
    add-double/2addr v11, v3

    .line 110
    neg-double v3, v5

    .line 111
    mul-double v3, v3, v1

    .line 112
    .line 113
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 114
    .line 115
    .line 116
    move-result-wide v3

    .line 117
    mul-double v3, v3, v11

    .line 118
    .line 119
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 120
    .line 121
    neg-double v5, v5

    .line 122
    mul-double v5, v5, v1

    .line 123
    .line 124
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 125
    .line 126
    .line 127
    move-result-wide v5

    .line 128
    mul-double v5, v5, v11

    .line 129
    .line 130
    iget-wide v11, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 131
    .line 132
    neg-double v13, v11

    .line 133
    mul-double v5, v5, v13

    .line 134
    .line 135
    neg-double v11, v11

    .line 136
    mul-double v11, v11, v1

    .line 137
    .line 138
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 139
    .line 140
    .line 141
    move-result-wide v1

    .line 142
    mul-double v1, v1, v9

    .line 143
    .line 144
    add-double/2addr v1, v5

    .line 145
    move-wide v11, v3

    .line 146
    goto :goto_0

    .line 147
    :cond_1
    iget-wide v11, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 148
    .line 149
    div-double/2addr v9, v11

    .line 150
    iget-wide v11, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 151
    .line 152
    mul-double v13, v5, v11

    .line 153
    .line 154
    mul-double v13, v13, v3

    .line 155
    .line 156
    add-double v13, v13, p3

    .line 157
    .line 158
    mul-double v13, v13, v9

    .line 159
    .line 160
    neg-double v5, v5

    .line 161
    mul-double v5, v5, v11

    .line 162
    .line 163
    mul-double v5, v5, v1

    .line 164
    .line 165
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 166
    .line 167
    .line 168
    move-result-wide v5

    .line 169
    iget-wide v9, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 170
    .line 171
    mul-double v9, v9, v1

    .line 172
    .line 173
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 174
    .line 175
    .line 176
    move-result-wide v9

    .line 177
    mul-double v9, v9, v3

    .line 178
    .line 179
    iget-wide v11, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 180
    .line 181
    mul-double v11, v11, v1

    .line 182
    .line 183
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 184
    .line 185
    .line 186
    move-result-wide v11

    .line 187
    mul-double v11, v11, v13

    .line 188
    .line 189
    add-double/2addr v11, v9

    .line 190
    mul-double v11, v11, v5

    .line 191
    .line 192
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 193
    .line 194
    neg-double v9, v5

    .line 195
    mul-double v9, v9, v11

    .line 196
    .line 197
    iget-wide v7, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 198
    .line 199
    mul-double v9, v9, v7

    .line 200
    .line 201
    neg-double v7, v7

    .line 202
    mul-double v7, v7, v5

    .line 203
    .line 204
    mul-double v7, v7, v1

    .line 205
    .line 206
    const-wide v5, 0x4005bf0a8b145769L    # Math.E

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 212
    .line 213
    .line 214
    move-result-wide v5

    .line 215
    iget-wide v7, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 216
    .line 217
    move-wide/from16 p1, v11

    .line 218
    .line 219
    neg-double v11, v7

    .line 220
    mul-double v11, v11, v3

    .line 221
    .line 222
    mul-double v7, v7, v1

    .line 223
    .line 224
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 225
    .line 226
    .line 227
    move-result-wide v3

    .line 228
    mul-double v3, v3, v11

    .line 229
    .line 230
    iget-wide v7, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 231
    .line 232
    mul-double v13, v13, v7

    .line 233
    .line 234
    mul-double v7, v7, v1

    .line 235
    .line 236
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 237
    .line 238
    .line 239
    move-result-wide v1

    .line 240
    mul-double v1, v1, v13

    .line 241
    .line 242
    add-double/2addr v1, v3

    .line 243
    mul-double v1, v1, v5

    .line 244
    .line 245
    add-double/2addr v1, v9

    .line 246
    move-wide/from16 v11, p1

    .line 247
    .line 248
    :goto_0
    iget-object v3, v0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 249
    .line 250
    iget-wide v4, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 251
    .line 252
    add-double/2addr v11, v4

    .line 253
    double-to-float v4, v11

    .line 254
    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 255
    .line 256
    double-to-float v1, v1

    .line 257
    iput v1, v3, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 258
    .line 259
    return-object v3
.end method
