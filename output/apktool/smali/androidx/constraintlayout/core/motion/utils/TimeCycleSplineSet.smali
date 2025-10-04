.class public abstract Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;,
        Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;,
        Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;
    }
.end annotation


# static fields
.field protected static final CURVE_OFFSET:I = 0x2

.field protected static final CURVE_PERIOD:I = 0x1

.field protected static final CURVE_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SplineSet"

.field protected static sVal2PI:F = 6.2831855f


# instance fields
.field protected mCache:[F

.field protected mContinue:Z

.field protected mCount:I

.field protected mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field protected mLastCycle:F

.field protected mLastTime:J

.field protected mTimePoints:[I

.field protected mType:Ljava/lang/String;

.field protected mValues:[[F

.field protected mWaveShape:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    new-array v2, v1, [I

    .line 10
    .line 11
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x3

    .line 18
    aput v4, v2, v3

    .line 19
    .line 20
    aput v1, v2, v0

    .line 21
    .line 22
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, [[F

    .line 29
    .line 30
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    .line 31
    .line 32
    new-array v1, v4, [F

    .line 33
    .line 34
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCache:[F

    .line 35
    .line 36
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

    .line 37
    .line 38
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 39
    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mLastCycle:F

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public calcWave(F)F
    .locals 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->sVal2PI:F

    .line 11
    .line 12
    mul-float p1, p1, v0

    .line 13
    .line 14
    float-to-double v0, p1

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    double-to-float p1, v0

    .line 20
    return p1

    .line 21
    :pswitch_0
    const/high16 v0, 0x40800000    # 4.0f

    .line 22
    .line 23
    mul-float p1, p1, v0

    .line 24
    .line 25
    rem-float/2addr p1, v0

    .line 26
    sub-float/2addr p1, v1

    .line 27
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    sub-float p1, v2, p1

    .line 32
    .line 33
    mul-float p1, p1, p1

    .line 34
    .line 35
    :goto_0
    sub-float/2addr v2, p1

    .line 36
    return v2

    .line 37
    :pswitch_1
    sget v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->sVal2PI:F

    .line 38
    .line 39
    mul-float p1, p1, v0

    .line 40
    .line 41
    float-to-double v0, p1

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    double-to-float p1, v0

    .line 47
    return p1

    .line 48
    :pswitch_2
    mul-float p1, p1, v1

    .line 49
    .line 50
    add-float/2addr p1, v2

    .line 51
    rem-float/2addr p1, v1

    .line 52
    goto :goto_0

    .line 53
    :pswitch_3
    mul-float p1, p1, v1

    .line 54
    .line 55
    add-float/2addr p1, v2

    .line 56
    rem-float/2addr p1, v1

    .line 57
    sub-float/2addr p1, v2

    .line 58
    return p1

    .line 59
    :pswitch_4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    goto :goto_0

    .line 64
    :pswitch_5
    sget v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->sVal2PI:F

    .line 65
    .line 66
    mul-float p1, p1, v0

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurveFit()Landroidx/constraintlayout/core/motion/utils/CurveFit;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 2
    .line 3
    return-object v0
.end method

.method public setPoint(IFFIF)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCount:I

    .line 4
    .line 5
    aput p1, v0, v1

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    .line 8
    .line 9
    aget-object p1, p1, v1

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    aput p2, p1, v0

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    aput p3, p1, p2

    .line 16
    .line 17
    const/4 p3, 0x2

    .line 18
    aput p5, p1, p3

    .line 19
    .line 20
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    .line 21
    .line 22
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    .line 27
    .line 28
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCount:I

    .line 29
    .line 30
    add-int/2addr p1, p2

    .line 31
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCount:I

    .line 32
    .line 33
    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mLastTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setup(I)V
    .locals 11

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "Error no points added to "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mType:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    sub-int/2addr v0, v3

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static {v1, v2, v4, v0}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;->doubleQuickSort([I[[FII)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    const/4 v1, 0x0

    .line 39
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    .line 40
    .line 41
    array-length v5, v2

    .line 42
    if-ge v0, v5, :cond_2

    .line 43
    .line 44
    aget v5, v2, v0

    .line 45
    .line 46
    add-int/lit8 v6, v0, -0x1

    .line 47
    .line 48
    aget v2, v2, v6

    .line 49
    .line 50
    if-eq v5, v2, :cond_1

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    if-nez v1, :cond_3

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    :cond_3
    new-array v0, v1, [D

    .line 61
    .line 62
    const/4 v2, 0x2

    .line 63
    new-array v5, v2, [I

    .line 64
    .line 65
    const/4 v6, 0x3

    .line 66
    aput v6, v5, v3

    .line 67
    .line 68
    aput v1, v5, v4

    .line 69
    .line 70
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 71
    .line 72
    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, [[D

    .line 77
    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v6, 0x0

    .line 80
    :goto_1
    iget v7, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCount:I

    .line 81
    .line 82
    if-ge v5, v7, :cond_5

    .line 83
    .line 84
    if-lez v5, :cond_4

    .line 85
    .line 86
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    .line 87
    .line 88
    aget v8, v7, v5

    .line 89
    .line 90
    add-int/lit8 v9, v5, -0x1

    .line 91
    .line 92
    aget v7, v7, v9

    .line 93
    .line 94
    if-ne v8, v7, :cond_4

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    .line 98
    .line 99
    aget v7, v7, v5

    .line 100
    .line 101
    int-to-double v7, v7

    .line 102
    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    mul-double v7, v7, v9

    .line 108
    .line 109
    aput-wide v7, v0, v6

    .line 110
    .line 111
    aget-object v7, v1, v6

    .line 112
    .line 113
    iget-object v8, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    .line 114
    .line 115
    aget-object v8, v8, v5

    .line 116
    .line 117
    aget v9, v8, v4

    .line 118
    .line 119
    float-to-double v9, v9

    .line 120
    aput-wide v9, v7, v4

    .line 121
    .line 122
    aget v9, v8, v3

    .line 123
    .line 124
    float-to-double v9, v9

    .line 125
    aput-wide v9, v7, v3

    .line 126
    .line 127
    aget v8, v8, v2

    .line 128
    .line 129
    float-to-double v8, v8

    .line 130
    aput-wide v8, v7, v2

    .line 131
    .line 132
    add-int/lit8 v6, v6, 0x1

    .line 133
    .line 134
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 142
    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mType:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/text/DecimalFormat;

    .line 4
    .line 5
    const-string v2, "##.##"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCount:I

    .line 12
    .line 13
    if-ge v2, v3, :cond_0

    .line 14
    .line 15
    const-string v3, "["

    .line 16
    .line 17
    invoke-static {v0, v3}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    .line 22
    .line 23
    aget v3, v3, v2

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " , "

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    .line 34
    .line 35
    aget-object v3, v3, v2

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, "] "

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-object v0
.end method
