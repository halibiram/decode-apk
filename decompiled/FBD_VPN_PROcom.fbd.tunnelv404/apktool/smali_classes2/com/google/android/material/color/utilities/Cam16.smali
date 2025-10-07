.class public final Lcom/google/android/material/color/utilities/Cam16;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field static final CAM16RGB_TO_XYZ:[[D

.field static final XYZ_TO_CAM16RGB:[[D


# instance fields
.field private final astar:D

.field private final bstar:D

.field private final chroma:D

.field private final hue:D

.field private final j:D

.field private final jstar:D

.field private final m:D

.field private final q:D

.field private final s:D

.field private final tempArray:[D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [D

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    new-array v2, v0, [D

    .line 8
    .line 9
    fill-array-data v2, :array_1

    .line 10
    .line 11
    .line 12
    new-array v3, v0, [D

    .line 13
    .line 14
    fill-array-data v3, :array_2

    .line 15
    .line 16
    .line 17
    new-array v4, v0, [[D

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    aput-object v1, v4, v5

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    aput-object v2, v4, v1

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    aput-object v3, v4, v2

    .line 27
    .line 28
    sput-object v4, Lcom/google/android/material/color/utilities/Cam16;->XYZ_TO_CAM16RGB:[[D

    .line 29
    .line 30
    new-array v3, v0, [D

    .line 31
    .line 32
    fill-array-data v3, :array_3

    .line 33
    .line 34
    .line 35
    new-array v4, v0, [D

    .line 36
    .line 37
    fill-array-data v4, :array_4

    .line 38
    .line 39
    .line 40
    new-array v6, v0, [D

    .line 41
    .line 42
    fill-array-data v6, :array_5

    .line 43
    .line 44
    .line 45
    new-array v0, v0, [[D

    .line 46
    .line 47
    aput-object v3, v0, v5

    .line 48
    .line 49
    aput-object v4, v0, v1

    .line 50
    .line 51
    aput-object v6, v0, v2

    .line 52
    .line 53
    sput-object v0, Lcom/google/android/material/color/utilities/Cam16;->CAM16RGB_TO_XYZ:[[D

    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        0x3fd9aeb3dd11be6eL    # 0.401288
        0x3fe4ce379b77c02bL    # 0.650173
        -0x4055a6e75ff609ddL    # -0.051461
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 8
        -0x402ffb9bed30f063L    # -0.250268
        0x3ff345479d4d8341L    # 1.204414
        0x3fa77a2cecc814d7L    # 0.045854
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_2
    .array-data 8
        -0x409ef8055fbb517aL    # -0.002079
        0x3fa9103c8e25c811L    # 0.048952
        0x3fee800431bde82dL    # 0.953127
    .end array-data

    :array_3
    .array-data 8
        0x3ffdcb079afef467L    # 1.8620678
        -0x400fd1e697792de9L    # -1.0112547
        0x3fc3188d6a8c3ae1L    # 0.14918678
    .end array-data

    :array_4
    .array-data 8
        0x3fd8cd3c1de87346L    # 0.38752654
        0x3fe3e2e5bddf7419L    # 0.62144744
        -0x407d9f0ccb1490dcL    # -0.00897398
    .end array-data

    :array_5
    .array-data 8
        -0x406fc73eee525892L    # -0.0158415
        -0x405e8770215031c7L    # -0.03412294
        0x3ff0cca7787f6d9eL    # 1.0499644
    .end array-data
.end method

.method private constructor <init>(DDDDDDDDD)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [D

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/google/android/material/color/utilities/Cam16;->tempArray:[D

    .line 12
    .line 13
    move-wide v1, p1

    .line 14
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->hue:D

    .line 15
    .line 16
    move-wide v1, p3

    .line 17
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->chroma:D

    .line 18
    .line 19
    move-wide v1, p5

    .line 20
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->j:D

    .line 21
    .line 22
    move-wide v1, p7

    .line 23
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->q:D

    .line 24
    .line 25
    move-wide v1, p9

    .line 26
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->m:D

    .line 27
    .line 28
    move-wide v1, p11

    .line 29
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->s:D

    .line 30
    .line 31
    move-wide/from16 v1, p13

    .line 32
    .line 33
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->jstar:D

    .line 34
    .line 35
    move-wide/from16 v1, p15

    .line 36
    .line 37
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->astar:D

    .line 38
    .line 39
    move-wide/from16 v1, p17

    .line 40
    .line 41
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->bstar:D

    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static fromInt(I)Lcom/google/android/material/color/utilities/Cam16;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/google/android/material/color/utilities/Cam16;->fromIntInViewingConditions(ILcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static fromIntInViewingConditions(ILcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;
    .locals 18

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    const/high16 v1, 0xff0000

    .line 4
    .line 5
    and-int/2addr v1, v0

    .line 6
    shr-int/lit8 v1, v1, 0x10

    .line 7
    .line 8
    const v2, 0xff00

    .line 9
    .line 10
    .line 11
    and-int/2addr v2, v0

    .line 12
    shr-int/lit8 v2, v2, 0x8

    .line 13
    .line 14
    and-int/lit16 v0, v0, 0xff

    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    invoke-static {v2}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-static {v0}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    const-wide v7, 0x3fda63c2e8477c96L    # 0.41233895

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    mul-double v7, v7, v3

    .line 34
    .line 35
    const-wide v9, 0x3fd6e341ae4b2c79L    # 0.35762064

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    mul-double v9, v9, v1

    .line 41
    .line 42
    add-double/2addr v9, v7

    .line 43
    const-wide v7, 0x3fc71af7273e5d5eL    # 0.18051042

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    mul-double v7, v7, v5

    .line 49
    .line 50
    add-double v11, v7, v9

    .line 51
    .line 52
    const-wide v7, 0x3fcb367a0f9096bcL    # 0.2126

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    mul-double v7, v7, v3

    .line 58
    .line 59
    const-wide v9, 0x3fe6e2eb1c432ca5L    # 0.7152

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    mul-double v9, v9, v1

    .line 65
    .line 66
    add-double/2addr v9, v7

    .line 67
    const-wide v7, 0x3fb27bb2fec56d5dL    # 0.0722

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    mul-double v7, v7, v5

    .line 73
    .line 74
    add-double v13, v7, v9

    .line 75
    .line 76
    const-wide v7, 0x3f93c8fde0401c25L    # 0.01932141

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    mul-double v3, v3, v7

    .line 82
    .line 83
    const-wide v7, 0x3fbe818525c434ceL    # 0.11916382

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    mul-double v1, v1, v7

    .line 89
    .line 90
    add-double/2addr v1, v3

    .line 91
    const-wide v3, 0x3fee693974c0c730L    # 0.95034478

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    mul-double v5, v5, v3

    .line 97
    .line 98
    add-double v15, v5, v1

    .line 99
    .line 100
    move-object/from16 v17, p1

    .line 101
    .line 102
    invoke-static/range {v11 .. v17}, Lcom/google/android/material/color/utilities/Cam16;->fromXyzInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method

.method public static fromJch(DDD)Lcom/google/android/material/color/utilities/Cam16;
    .locals 7

    .line 1
    sget-object v6, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 2
    .line 3
    move-wide v0, p0

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    invoke-static/range {v0 .. v6}, Lcom/google/android/material/color/utilities/Cam16;->fromJchInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static fromJchInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;
    .locals 23

    .line 1
    move-wide/from16 v5, p0

    .line 2
    .line 3
    move-wide/from16 v3, p2

    .line 4
    .line 5
    move-wide/from16 v1, p4

    .line 6
    .line 7
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    .line 8
    .line 9
    .line 10
    move-result-wide v7

    .line 11
    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    .line 12
    .line 13
    div-double v7, v11, v7

    .line 14
    .line 15
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    .line 16
    .line 17
    div-double v13, p0, v9

    .line 18
    .line 19
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v9

    .line 23
    mul-double v9, v9, v7

    .line 24
    .line 25
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    .line 26
    .line 27
    .line 28
    move-result-wide v7

    .line 29
    add-double/2addr v7, v11

    .line 30
    mul-double v7, v7, v9

    .line 31
    .line 32
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFlRoot()D

    .line 33
    .line 34
    .line 35
    move-result-wide v9

    .line 36
    mul-double v7, v7, v9

    .line 37
    .line 38
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFlRoot()D

    .line 39
    .line 40
    .line 41
    move-result-wide v9

    .line 42
    mul-double v15, v9, p2

    .line 43
    .line 44
    move-wide v9, v15

    .line 45
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v13

    .line 49
    div-double v13, p2, v13

    .line 50
    .line 51
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    .line 52
    .line 53
    .line 54
    move-result-wide v17

    .line 55
    mul-double v17, v17, v13

    .line 56
    .line 57
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    .line 58
    .line 59
    .line 60
    move-result-wide v13

    .line 61
    add-double/2addr v13, v11

    .line 62
    div-double v17, v17, v13

    .line 63
    .line 64
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    .line 65
    .line 66
    .line 67
    move-result-wide v11

    .line 68
    const-wide/high16 v13, 0x4049000000000000L    # 50.0

    .line 69
    .line 70
    mul-double v11, v11, v13

    .line 71
    .line 72
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    .line 73
    .line 74
    .line 75
    move-result-wide v17

    .line 76
    const-wide v13, 0x3ffb333333333334L    # 1.7000000000000002

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    mul-double v13, v13, p0

    .line 82
    .line 83
    const-wide v19, 0x3f7cac083126e979L    # 0.007

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    mul-double v19, v19, p0

    .line 89
    .line 90
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    .line 91
    .line 92
    add-double v19, v19, v21

    .line 93
    .line 94
    div-double v13, v13, v19

    .line 95
    .line 96
    const-wide v19, 0x3f9758e219652bd4L    # 0.0228

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    mul-double v15, v15, v19

    .line 102
    .line 103
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->log1p(D)D

    .line 104
    .line 105
    .line 106
    move-result-wide v15

    .line 107
    const-wide v19, 0x4045ee08fb823ee0L    # 43.859649122807014

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    mul-double v19, v19, v15

    .line 113
    .line 114
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    .line 115
    .line 116
    .line 117
    move-result-wide v15

    .line 118
    mul-double v15, v15, v19

    .line 119
    .line 120
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    .line 121
    .line 122
    .line 123
    move-result-wide v17

    .line 124
    mul-double v17, v17, v19

    .line 125
    .line 126
    new-instance v19, Lcom/google/android/material/color/utilities/Cam16;

    .line 127
    .line 128
    move-object/from16 v0, v19

    .line 129
    .line 130
    invoke-direct/range {v0 .. v18}, Lcom/google/android/material/color/utilities/Cam16;-><init>(DDDDDDDDD)V

    .line 131
    .line 132
    .line 133
    return-object v19
.end method

.method public static fromUcs(DDD)Lcom/google/android/material/color/utilities/Cam16;
    .locals 7

    .line 1
    sget-object v6, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 2
    .line 3
    move-wide v0, p0

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    invoke-static/range {v0 .. v6}, Lcom/google/android/material/color/utilities/Cam16;->fromUcsInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static fromUcsInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;
    .locals 11

    .line 1
    invoke-static/range {p2 .. p5}, Ljava/lang/Math;->hypot(DD)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x3f9758e219652bd4L    # 0.0228

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    mul-double v0, v0, v2

    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->expm1(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    div-double/2addr v0, v2

    .line 17
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFlRoot()D

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    div-double v6, v0, v2

    .line 22
    .line 23
    move-wide v0, p2

    .line 24
    move-wide v2, p4

    .line 25
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    mul-double v0, v0, v2

    .line 35
    .line 36
    const-wide/16 v2, 0x0

    .line 37
    .line 38
    cmpg-double v4, v0, v2

    .line 39
    .line 40
    if-gez v4, :cond_0

    .line 41
    .line 42
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    add-double/2addr v0, v2

    .line 48
    :cond_0
    move-wide v8, v0

    .line 49
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 50
    .line 51
    sub-double v0, p0, v0

    .line 52
    .line 53
    const-wide v2, 0x3f7cac083126e979L    # 0.007

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    mul-double v0, v0, v2

    .line 59
    .line 60
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 61
    .line 62
    sub-double/2addr v2, v0

    .line 63
    div-double v4, p0, v2

    .line 64
    .line 65
    move-object/from16 v10, p6

    .line 66
    .line 67
    invoke-static/range {v4 .. v10}, Lcom/google/android/material/color/utilities/Cam16;->fromJchInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    return-object v0
.end method

.method public static fromXyzInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;
    .locals 39

    .line 1
    sget-object v0, Lcom/google/android/material/color/utilities/Cam16;->XYZ_TO_CAM16RGB:[[D

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v2, v0, v1

    .line 5
    .line 6
    aget-wide v3, v2, v1

    .line 7
    .line 8
    mul-double v3, v3, p0

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    aget-wide v6, v2, v5

    .line 12
    .line 13
    mul-double v6, v6, p2

    .line 14
    .line 15
    add-double/2addr v6, v3

    .line 16
    const/4 v3, 0x2

    .line 17
    aget-wide v8, v2, v3

    .line 18
    .line 19
    mul-double v8, v8, p4

    .line 20
    .line 21
    add-double/2addr v8, v6

    .line 22
    aget-object v2, v0, v5

    .line 23
    .line 24
    aget-wide v6, v2, v1

    .line 25
    .line 26
    mul-double v6, v6, p0

    .line 27
    .line 28
    aget-wide v10, v2, v5

    .line 29
    .line 30
    mul-double v10, v10, p2

    .line 31
    .line 32
    add-double/2addr v10, v6

    .line 33
    aget-wide v6, v2, v3

    .line 34
    .line 35
    mul-double v6, v6, p4

    .line 36
    .line 37
    add-double/2addr v6, v10

    .line 38
    aget-object v0, v0, v3

    .line 39
    .line 40
    aget-wide v10, v0, v1

    .line 41
    .line 42
    mul-double v10, v10, p0

    .line 43
    .line 44
    aget-wide v12, v0, v5

    .line 45
    .line 46
    mul-double v12, v12, p2

    .line 47
    .line 48
    add-double/2addr v12, v10

    .line 49
    aget-wide v10, v0, v3

    .line 50
    .line 51
    mul-double v10, v10, p4

    .line 52
    .line 53
    add-double/2addr v10, v12

    .line 54
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    aget-wide v1, v0, v1

    .line 59
    .line 60
    mul-double v1, v1, v8

    .line 61
    .line 62
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    aget-wide v4, v0, v5

    .line 67
    .line 68
    mul-double v4, v4, v6

    .line 69
    .line 70
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    aget-wide v6, v0, v3

    .line 75
    .line 76
    mul-double v6, v6, v10

    .line 77
    .line 78
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    .line 79
    .line 80
    .line 81
    move-result-wide v8

    .line 82
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 83
    .line 84
    .line 85
    move-result-wide v10

    .line 86
    mul-double v10, v10, v8

    .line 87
    .line 88
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 89
    .line 90
    div-double/2addr v10, v8

    .line 91
    const-wide v12, 0x3fdae147ae147ae1L    # 0.42

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 97
    .line 98
    .line 99
    move-result-wide v10

    .line 100
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    .line 101
    .line 102
    .line 103
    move-result-wide v14

    .line 104
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 105
    .line 106
    .line 107
    move-result-wide v16

    .line 108
    mul-double v16, v16, v14

    .line 109
    .line 110
    div-double v14, v16, v8

    .line 111
    .line 112
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 113
    .line 114
    .line 115
    move-result-wide v14

    .line 116
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    .line 117
    .line 118
    .line 119
    move-result-wide v16

    .line 120
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    .line 121
    .line 122
    .line 123
    move-result-wide v18

    .line 124
    mul-double v18, v18, v16

    .line 125
    .line 126
    move-wide/from16 p0, v6

    .line 127
    .line 128
    div-double v6, v18, v8

    .line 129
    .line 130
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 131
    .line 132
    .line 133
    move-result-wide v6

    .line 134
    invoke-static {v1, v2}, Ljava/lang/Math;->signum(D)D

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    const-wide/high16 v2, 0x4079000000000000L    # 400.0

    .line 139
    .line 140
    mul-double v0, v0, v2

    .line 141
    .line 142
    mul-double v0, v0, v10

    .line 143
    .line 144
    const-wide v12, 0x403b2147ae147ae1L    # 27.13

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    add-double/2addr v10, v12

    .line 150
    div-double/2addr v0, v10

    .line 151
    invoke-static {v4, v5}, Ljava/lang/Math;->signum(D)D

    .line 152
    .line 153
    .line 154
    move-result-wide v4

    .line 155
    mul-double v4, v4, v2

    .line 156
    .line 157
    mul-double v4, v4, v14

    .line 158
    .line 159
    add-double/2addr v14, v12

    .line 160
    div-double/2addr v4, v14

    .line 161
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->signum(D)D

    .line 162
    .line 163
    .line 164
    move-result-wide v10

    .line 165
    mul-double v10, v10, v2

    .line 166
    .line 167
    mul-double v10, v10, v6

    .line 168
    .line 169
    add-double/2addr v6, v12

    .line 170
    div-double/2addr v10, v6

    .line 171
    const-wide/high16 v2, 0x4026000000000000L    # 11.0

    .line 172
    .line 173
    mul-double v6, v0, v2

    .line 174
    .line 175
    const-wide/high16 v12, -0x3fd8000000000000L    # -12.0

    .line 176
    .line 177
    mul-double v12, v12, v4

    .line 178
    .line 179
    add-double/2addr v12, v6

    .line 180
    add-double/2addr v12, v10

    .line 181
    div-double/2addr v12, v2

    .line 182
    add-double v2, v0, v4

    .line 183
    .line 184
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 185
    .line 186
    mul-double v14, v10, v6

    .line 187
    .line 188
    sub-double/2addr v2, v14

    .line 189
    const-wide/high16 v14, 0x4022000000000000L    # 9.0

    .line 190
    .line 191
    div-double/2addr v2, v14

    .line 192
    const-wide/high16 v14, 0x4034000000000000L    # 20.0

    .line 193
    .line 194
    mul-double v16, v0, v14

    .line 195
    .line 196
    mul-double v4, v4, v14

    .line 197
    .line 198
    add-double v16, v16, v4

    .line 199
    .line 200
    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    .line 201
    .line 202
    mul-double v18, v18, v10

    .line 203
    .line 204
    add-double v18, v18, v16

    .line 205
    .line 206
    div-double v18, v18, v14

    .line 207
    .line 208
    const-wide/high16 v16, 0x4044000000000000L    # 40.0

    .line 209
    .line 210
    mul-double v0, v0, v16

    .line 211
    .line 212
    add-double/2addr v0, v4

    .line 213
    add-double/2addr v0, v10

    .line 214
    div-double/2addr v0, v14

    .line 215
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    .line 216
    .line 217
    .line 218
    move-result-wide v4

    .line 219
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    .line 220
    .line 221
    .line 222
    move-result-wide v4

    .line 223
    const-wide/16 v10, 0x0

    .line 224
    .line 225
    const-wide v14, 0x4076800000000000L    # 360.0

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    cmpg-double v16, v4, v10

    .line 231
    .line 232
    if-gez v16, :cond_1

    .line 233
    .line 234
    add-double/2addr v4, v14

    .line 235
    :cond_0
    :goto_0
    move-wide/from16 v21, v4

    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_1
    cmpl-double v10, v4, v14

    .line 239
    .line 240
    if-ltz v10, :cond_0

    .line 241
    .line 242
    sub-double/2addr v4, v14

    .line 243
    goto :goto_0

    .line 244
    :goto_1
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    .line 245
    .line 246
    .line 247
    move-result-wide v4

    .line 248
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNbb()D

    .line 249
    .line 250
    .line 251
    move-result-wide v10

    .line 252
    mul-double v10, v10, v0

    .line 253
    .line 254
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    .line 255
    .line 256
    .line 257
    move-result-wide v0

    .line 258
    div-double/2addr v10, v0

    .line 259
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    .line 260
    .line 261
    .line 262
    move-result-wide v0

    .line 263
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getZ()D

    .line 264
    .line 265
    .line 266
    move-result-wide v16

    .line 267
    mul-double v0, v0, v16

    .line 268
    .line 269
    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 270
    .line 271
    .line 272
    move-result-wide v0

    .line 273
    mul-double v25, v0, v8

    .line 274
    .line 275
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    .line 276
    .line 277
    .line 278
    move-result-wide v0

    .line 279
    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    .line 280
    .line 281
    div-double v0, v10, v0

    .line 282
    .line 283
    div-double v8, v25, v8

    .line 284
    .line 285
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 286
    .line 287
    .line 288
    move-result-wide v16

    .line 289
    mul-double v16, v16, v0

    .line 290
    .line 291
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    .line 292
    .line 293
    .line 294
    move-result-wide v0

    .line 295
    add-double/2addr v0, v10

    .line 296
    mul-double v0, v0, v16

    .line 297
    .line 298
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFlRoot()D

    .line 299
    .line 300
    .line 301
    move-result-wide v16

    .line 302
    mul-double v27, v16, v0

    .line 303
    .line 304
    const-wide v0, 0x403423d70a3d70a4L    # 20.14

    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    cmpg-double v16, v21, v0

    .line 310
    .line 311
    if-gez v16, :cond_2

    .line 312
    .line 313
    add-double v14, v21, v14

    .line 314
    .line 315
    goto :goto_2

    .line 316
    :cond_2
    move-wide/from16 v14, v21

    .line 317
    .line 318
    :goto_2
    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    .line 319
    .line 320
    .line 321
    move-result-wide v0

    .line 322
    add-double/2addr v0, v6

    .line 323
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 324
    .line 325
    .line 326
    move-result-wide v0

    .line 327
    const-wide v6, 0x400e666666666666L    # 3.8

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    add-double/2addr v0, v6

    .line 333
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    .line 334
    .line 335
    mul-double v0, v0, v6

    .line 336
    .line 337
    const-wide v6, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    mul-double v0, v0, v6

    .line 343
    .line 344
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNc()D

    .line 345
    .line 346
    .line 347
    move-result-wide v6

    .line 348
    mul-double v6, v6, v0

    .line 349
    .line 350
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNcb()D

    .line 351
    .line 352
    .line 353
    move-result-wide v0

    .line 354
    mul-double v0, v0, v6

    .line 355
    .line 356
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 357
    .line 358
    .line 359
    move-result-wide v2

    .line 360
    mul-double v2, v2, v0

    .line 361
    .line 362
    const-wide v0, 0x3fd3851eb851eb85L    # 0.305

    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    add-double v18, v18, v0

    .line 368
    .line 369
    div-double v2, v2, v18

    .line 370
    .line 371
    const-wide v0, 0x3fd28f5c28f5c28fL    # 0.29

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getN()D

    .line 377
    .line 378
    .line 379
    move-result-wide v6

    .line 380
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 381
    .line 382
    .line 383
    move-result-wide v0

    .line 384
    const-wide v6, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    sub-double/2addr v6, v0

    .line 390
    const-wide v0, 0x3fe75c28f5c28f5cL    # 0.73

    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 396
    .line 397
    .line 398
    move-result-wide v0

    .line 399
    const-wide v6, 0x3feccccccccccccdL    # 0.9

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 405
    .line 406
    .line 407
    move-result-wide v2

    .line 408
    mul-double v2, v2, v0

    .line 409
    .line 410
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 411
    .line 412
    .line 413
    move-result-wide v0

    .line 414
    mul-double v0, v0, v2

    .line 415
    .line 416
    move-wide/from16 v23, v0

    .line 417
    .line 418
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFlRoot()D

    .line 419
    .line 420
    .line 421
    move-result-wide v6

    .line 422
    mul-double v6, v6, v0

    .line 423
    .line 424
    move-wide/from16 v29, v6

    .line 425
    .line 426
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    .line 427
    .line 428
    .line 429
    move-result-wide v0

    .line 430
    mul-double v0, v0, v2

    .line 431
    .line 432
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    .line 433
    .line 434
    .line 435
    move-result-wide v2

    .line 436
    add-double/2addr v2, v10

    .line 437
    div-double/2addr v0, v2

    .line 438
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 439
    .line 440
    .line 441
    move-result-wide v0

    .line 442
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    .line 443
    .line 444
    mul-double v31, v0, v2

    .line 445
    .line 446
    const-wide v0, 0x3ffb333333333334L    # 1.7000000000000002

    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    mul-double v0, v0, v25

    .line 452
    .line 453
    const-wide v2, 0x3f7cac083126e979L    # 0.007

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    mul-double v2, v2, v25

    .line 459
    .line 460
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 461
    .line 462
    add-double/2addr v2, v8

    .line 463
    div-double v33, v0, v2

    .line 464
    .line 465
    const-wide v0, 0x3f9758e219652bd4L    # 0.0228

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    mul-double v6, v6, v0

    .line 471
    .line 472
    invoke-static {v6, v7}, Ljava/lang/Math;->log1p(D)D

    .line 473
    .line 474
    .line 475
    move-result-wide v0

    .line 476
    const-wide v2, 0x4045ee08fb823ee0L    # 43.859649122807014

    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    mul-double v0, v0, v2

    .line 482
    .line 483
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 484
    .line 485
    .line 486
    move-result-wide v2

    .line 487
    mul-double v35, v2, v0

    .line 488
    .line 489
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 490
    .line 491
    .line 492
    move-result-wide v2

    .line 493
    mul-double v37, v2, v0

    .line 494
    .line 495
    new-instance v0, Lcom/google/android/material/color/utilities/Cam16;

    .line 496
    .line 497
    move-object/from16 v20, v0

    .line 498
    .line 499
    invoke-direct/range {v20 .. v38}, Lcom/google/android/material/color/utilities/Cam16;-><init>(DDDDDDDDD)V

    .line 500
    .line 501
    .line 502
    return-object v0
.end method


# virtual methods
.method public distance(Lcom/google/android/material/color/utilities/Cam16;)D
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Cam16;->getJstar()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Cam16;->getJstar()D

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    sub-double/2addr v0, v2

    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Cam16;->getAstar()D

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Cam16;->getAstar()D

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    sub-double/2addr v2, v4

    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Cam16;->getBstar()D

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Cam16;->getBstar()D

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    sub-double/2addr v4, v6

    .line 28
    mul-double v0, v0, v0

    .line 29
    .line 30
    mul-double v2, v2, v2

    .line 31
    .line 32
    add-double/2addr v2, v0

    .line 33
    mul-double v4, v4, v4

    .line 34
    .line 35
    add-double/2addr v4, v2

    .line 36
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    const-wide v2, 0x3fe428f5c28f5c29L    # 0.63

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    const-wide v2, 0x3ff68f5c28f5c28fL    # 1.41

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    mul-double v0, v0, v2

    .line 55
    .line 56
    return-wide v0
.end method

.method public getAstar()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->astar:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getBstar()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->bstar:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getChroma()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->chroma:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getHue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->hue:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getJ()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->j:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getJstar()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->jstar:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getM()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->m:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getQ()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->q:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getS()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->s:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public toInt()I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/Cam16;->viewed(Lcom/google/android/material/color/utilities/ViewingConditions;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public viewed(Lcom/google/android/material/color/utilities/ViewingConditions;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/utilities/Cam16;->tempArray:[D

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/color/utilities/Cam16;->xyzInViewingConditions(Lcom/google/android/material/color/utilities/ViewingConditions;[D)[D

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    aget-wide v1, p1, v0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    aget-wide v3, p1, v0

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    aget-wide v5, p1, v0

    .line 15
    .line 16
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromXyz(DDD)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public xyzInViewingConditions(Lcom/google/android/material/color/utilities/ViewingConditions;[D)[D
    .locals 21

    .line 1
    const/4 v2, 0x0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    .line 3
    .line 4
    .line 5
    move-result-wide v3

    .line 6
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 7
    .line 8
    const-wide/16 v7, 0x0

    .line 9
    .line 10
    cmpl-double v9, v3, v7

    .line 11
    .line 12
    if-eqz v9, :cond_1

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getJ()D

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    cmpl-double v9, v3, v7

    .line 19
    .line 20
    if-nez v9, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getJ()D

    .line 28
    .line 29
    .line 30
    move-result-wide v9

    .line 31
    div-double/2addr v9, v5

    .line 32
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide v9

    .line 36
    div-double/2addr v3, v9

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    move-wide v3, v7

    .line 39
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getN()D

    .line 40
    .line 41
    .line 42
    move-result-wide v9

    .line 43
    const-wide v11, 0x3fd28f5c28f5c28fL    # 0.29

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 49
    .line 50
    .line 51
    move-result-wide v9

    .line 52
    const-wide v11, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    sub-double/2addr v11, v9

    .line 58
    const-wide v9, 0x3fe75c28f5c28f5cL    # 0.73

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 64
    .line 65
    .line 66
    move-result-wide v9

    .line 67
    div-double/2addr v3, v9

    .line 68
    const-wide v9, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    .line 78
    .line 79
    .line 80
    move-result-wide v9

    .line 81
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    .line 82
    .line 83
    .line 84
    move-result-wide v9

    .line 85
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 86
    .line 87
    add-double/2addr v11, v9

    .line 88
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 89
    .line 90
    .line 91
    move-result-wide v11

    .line 92
    const-wide v13, 0x400e666666666666L    # 3.8

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    add-double/2addr v11, v13

    .line 98
    const-wide/high16 v13, 0x3fd0000000000000L    # 0.25

    .line 99
    .line 100
    mul-double v11, v11, v13

    .line 101
    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    .line 103
    .line 104
    .line 105
    move-result-wide v13

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getJ()D

    .line 107
    .line 108
    .line 109
    move-result-wide v15

    .line 110
    div-double v0, v15, v5

    .line 111
    .line 112
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 113
    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    .line 115
    .line 116
    .line 117
    move-result-wide v17

    .line 118
    div-double v15, v15, v17

    .line 119
    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getZ()D

    .line 121
    .line 122
    .line 123
    move-result-wide v17

    .line 124
    div-double v5, v15, v17

    .line 125
    .line 126
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 127
    .line 128
    .line 129
    move-result-wide v0

    .line 130
    mul-double v0, v0, v13

    .line 131
    .line 132
    const-wide v5, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    mul-double v11, v11, v5

    .line 138
    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNc()D

    .line 140
    .line 141
    .line 142
    move-result-wide v5

    .line 143
    mul-double v5, v5, v11

    .line 144
    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNcb()D

    .line 146
    .line 147
    .line 148
    move-result-wide v11

    .line 149
    mul-double v11, v11, v5

    .line 150
    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNbb()D

    .line 152
    .line 153
    .line 154
    move-result-wide v5

    .line 155
    div-double/2addr v0, v5

    .line 156
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 157
    .line 158
    .line 159
    move-result-wide v5

    .line 160
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 161
    .line 162
    .line 163
    move-result-wide v9

    .line 164
    const-wide v13, 0x3fd3851eb851eb85L    # 0.305

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    add-double/2addr v13, v0

    .line 170
    const-wide/high16 v15, 0x4037000000000000L    # 23.0

    .line 171
    .line 172
    mul-double v13, v13, v15

    .line 173
    .line 174
    mul-double v13, v13, v3

    .line 175
    .line 176
    mul-double v11, v11, v15

    .line 177
    .line 178
    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    .line 179
    .line 180
    mul-double v15, v15, v3

    .line 181
    .line 182
    mul-double v15, v15, v9

    .line 183
    .line 184
    add-double/2addr v15, v11

    .line 185
    const-wide/high16 v11, 0x405b000000000000L    # 108.0

    .line 186
    .line 187
    mul-double v3, v3, v11

    .line 188
    .line 189
    mul-double v3, v3, v5

    .line 190
    .line 191
    add-double/2addr v3, v15

    .line 192
    div-double/2addr v13, v3

    .line 193
    mul-double v9, v9, v13

    .line 194
    .line 195
    mul-double v13, v13, v5

    .line 196
    .line 197
    const-wide v3, 0x407cc00000000000L    # 460.0

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    mul-double v0, v0, v3

    .line 203
    .line 204
    const-wide v3, 0x407c300000000000L    # 451.0

    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    mul-double v3, v3, v9

    .line 210
    .line 211
    add-double/2addr v3, v0

    .line 212
    const-wide/high16 v5, 0x4072000000000000L    # 288.0

    .line 213
    .line 214
    mul-double v5, v5, v13

    .line 215
    .line 216
    add-double/2addr v5, v3

    .line 217
    const-wide v3, 0x4095ec0000000000L    # 1403.0

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    div-double/2addr v5, v3

    .line 223
    const-wide v11, 0x408bd80000000000L    # 891.0

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    mul-double v11, v11, v9

    .line 229
    .line 230
    sub-double v11, v0, v11

    .line 231
    .line 232
    const-wide v15, 0x4070500000000000L    # 261.0

    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    mul-double v15, v15, v13

    .line 238
    .line 239
    sub-double/2addr v11, v15

    .line 240
    div-double/2addr v11, v3

    .line 241
    const-wide v15, 0x406b800000000000L    # 220.0

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    mul-double v9, v9, v15

    .line 247
    .line 248
    sub-double/2addr v0, v9

    .line 249
    const-wide v9, 0x40b89c0000000000L    # 6300.0

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    mul-double v13, v13, v9

    .line 255
    .line 256
    sub-double/2addr v0, v13

    .line 257
    div-double/2addr v0, v3

    .line 258
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .line 259
    .line 260
    .line 261
    move-result-wide v3

    .line 262
    const-wide v9, 0x403b2147ae147ae1L    # 27.13

    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    mul-double v3, v3, v9

    .line 268
    .line 269
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .line 270
    .line 271
    .line 272
    move-result-wide v13

    .line 273
    const-wide/high16 v15, 0x4079000000000000L    # 400.0

    .line 274
    .line 275
    sub-double v13, v15, v13

    .line 276
    .line 277
    div-double/2addr v3, v13

    .line 278
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 279
    .line 280
    .line 281
    move-result-wide v3

    .line 282
    invoke-static {v5, v6}, Ljava/lang/Math;->signum(D)D

    .line 283
    .line 284
    .line 285
    move-result-wide v5

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    .line 287
    .line 288
    .line 289
    move-result-wide v13

    .line 290
    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    .line 291
    .line 292
    div-double v13, v17, v13

    .line 293
    .line 294
    mul-double v13, v13, v5

    .line 295
    .line 296
    const-wide v5, 0x40030c30c30c30c3L    # 2.380952380952381

    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 302
    .line 303
    .line 304
    move-result-wide v3

    .line 305
    mul-double v3, v3, v13

    .line 306
    .line 307
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    .line 308
    .line 309
    .line 310
    move-result-wide v13

    .line 311
    mul-double v13, v13, v9

    .line 312
    .line 313
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    .line 314
    .line 315
    .line 316
    move-result-wide v17

    .line 317
    sub-double v17, v15, v17

    .line 318
    .line 319
    div-double v13, v13, v17

    .line 320
    .line 321
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->max(DD)D

    .line 322
    .line 323
    .line 324
    move-result-wide v13

    .line 325
    invoke-static {v11, v12}, Ljava/lang/Math;->signum(D)D

    .line 326
    .line 327
    .line 328
    move-result-wide v11

    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    .line 330
    .line 331
    .line 332
    move-result-wide v17

    .line 333
    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    .line 334
    .line 335
    div-double v17, v19, v17

    .line 336
    .line 337
    mul-double v17, v17, v11

    .line 338
    .line 339
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 340
    .line 341
    .line 342
    move-result-wide v11

    .line 343
    mul-double v11, v11, v17

    .line 344
    .line 345
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 346
    .line 347
    .line 348
    move-result-wide v13

    .line 349
    mul-double v13, v13, v9

    .line 350
    .line 351
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 352
    .line 353
    .line 354
    move-result-wide v9

    .line 355
    sub-double/2addr v15, v9

    .line 356
    div-double/2addr v13, v15

    .line 357
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->max(DD)D

    .line 358
    .line 359
    .line 360
    move-result-wide v7

    .line 361
    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    .line 362
    .line 363
    .line 364
    move-result-wide v0

    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    .line 366
    .line 367
    .line 368
    move-result-wide v9

    .line 369
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    .line 370
    .line 371
    div-double v9, v13, v9

    .line 372
    .line 373
    mul-double v9, v9, v0

    .line 374
    .line 375
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 376
    .line 377
    .line 378
    move-result-wide v0

    .line 379
    mul-double v0, v0, v9

    .line 380
    .line 381
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    aget-wide v6, v5, v2

    .line 386
    .line 387
    div-double/2addr v3, v6

    .line 388
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    const/4 v6, 0x1

    .line 393
    aget-wide v7, v5, v6

    .line 394
    .line 395
    div-double/2addr v11, v7

    .line 396
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    const/4 v7, 0x2

    .line 401
    aget-wide v8, v5, v7

    .line 402
    .line 403
    div-double/2addr v0, v8

    .line 404
    sget-object v5, Lcom/google/android/material/color/utilities/Cam16;->CAM16RGB_TO_XYZ:[[D

    .line 405
    .line 406
    aget-object v8, v5, v2

    .line 407
    .line 408
    aget-wide v9, v8, v2

    .line 409
    .line 410
    mul-double v9, v9, v3

    .line 411
    .line 412
    aget-wide v13, v8, v6

    .line 413
    .line 414
    mul-double v13, v13, v11

    .line 415
    .line 416
    add-double/2addr v13, v9

    .line 417
    aget-wide v9, v8, v7

    .line 418
    .line 419
    mul-double v9, v9, v0

    .line 420
    .line 421
    add-double/2addr v9, v13

    .line 422
    aget-object v8, v5, v6

    .line 423
    .line 424
    aget-wide v13, v8, v2

    .line 425
    .line 426
    mul-double v13, v13, v3

    .line 427
    .line 428
    aget-wide v15, v8, v6

    .line 429
    .line 430
    mul-double v15, v15, v11

    .line 431
    .line 432
    add-double/2addr v15, v13

    .line 433
    aget-wide v13, v8, v7

    .line 434
    .line 435
    mul-double v13, v13, v0

    .line 436
    .line 437
    add-double/2addr v13, v15

    .line 438
    aget-object v5, v5, v7

    .line 439
    .line 440
    aget-wide v15, v5, v2

    .line 441
    .line 442
    mul-double v3, v3, v15

    .line 443
    .line 444
    aget-wide v15, v5, v6

    .line 445
    .line 446
    mul-double v11, v11, v15

    .line 447
    .line 448
    add-double/2addr v11, v3

    .line 449
    aget-wide v3, v5, v7

    .line 450
    .line 451
    mul-double v0, v0, v3

    .line 452
    .line 453
    add-double/2addr v0, v11

    .line 454
    if-eqz p2, :cond_2

    .line 455
    .line 456
    aput-wide v9, p2, v2

    .line 457
    .line 458
    aput-wide v13, p2, v6

    .line 459
    .line 460
    aput-wide v0, p2, v7

    .line 461
    .line 462
    return-object p2

    .line 463
    :cond_2
    const/4 v3, 0x3

    .line 464
    new-array v3, v3, [D

    .line 465
    .line 466
    aput-wide v9, v3, v2

    .line 467
    .line 468
    aput-wide v13, v3, v6

    .line 469
    .line 470
    aput-wide v0, v3, v7

    .line 471
    .line 472
    return-object v3
.end method
