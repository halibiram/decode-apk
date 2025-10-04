.class public final Landroidx/camera/core/impl/utils/MatrixExt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sTemp:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    sput-object v0, Landroidx/camera/core/impl/utils/MatrixExt;->sTemp:[F

    .line 6
    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static denormalize([FFF)V
    .locals 2

    .line 1
    neg-float p1, p1

    .line 2
    neg-float p2, p2

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0, v1, p1, p2, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static normalize([FFF)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, p1, p2, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static postRotate([FFFF)V
    .locals 7
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v6, Landroidx/camera/core/impl/utils/MatrixExt;->sTemp:[F

    .line 2
    .line 3
    monitor-enter v6

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-static {v6, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 6
    .line 7
    .line 8
    invoke-static {v6, p2, p3}, Landroidx/camera/core/impl/utils/MatrixExt;->normalize([FFF)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/high16 v5, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v0, v6

    .line 17
    move v2, p1

    .line 18
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 19
    .line 20
    .line 21
    invoke-static {v6, p2, p3}, Landroidx/camera/core/impl/utils/MatrixExt;->denormalize([FFF)V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v1, 0x0

    .line 27
    move-object v0, p0

    .line 28
    move-object v2, v6

    .line 29
    move-object v4, p0

    .line 30
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 31
    .line 32
    .line 33
    monitor-exit v6

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public static preRotate([FFFF)V
    .locals 6
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p2, p3}, Landroidx/camera/core/impl/utils/MatrixExt;->normalize([FFF)V

    .line 2
    .line 3
    .line 4
    const/4 v4, 0x0

    .line 5
    const/high16 v5, 0x3f800000    # 1.0f

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move v2, p1

    .line 11
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p2, p3}, Landroidx/camera/core/impl/utils/MatrixExt;->denormalize([FFF)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static preVerticalFlip([FF)V
    .locals 4
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Landroidx/camera/core/impl/utils/MatrixExt;->normalize([FFF)V

    .line 3
    .line 4
    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    const/high16 v2, -0x40800000    # -1.0f

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {p0, v3, v1, v2, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0, p1}, Landroidx/camera/core/impl/utils/MatrixExt;->denormalize([FFF)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static setRotate([FFFF)V
    .locals 1
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/core/impl/utils/MatrixExt;->preRotate([FFFF)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static toString([FI)Ljava/lang/String;
    .locals 33
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    aget v1, p0, p1

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x4

    .line 10
    add-int/lit8 v3, p1, 0x4

    .line 11
    .line 12
    aget v3, p0, v3

    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/16 v4, 0x8

    .line 19
    .line 20
    add-int/lit8 v5, p1, 0x8

    .line 21
    .line 22
    aget v5, p0, v5

    .line 23
    .line 24
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const/16 v6, 0xc

    .line 29
    .line 30
    add-int/lit8 v7, p1, 0xc

    .line 31
    .line 32
    aget v7, p0, v7

    .line 33
    .line 34
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    const/4 v8, 0x1

    .line 39
    add-int/lit8 v9, p1, 0x1

    .line 40
    .line 41
    aget v9, p0, v9

    .line 42
    .line 43
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    const/4 v10, 0x5

    .line 48
    add-int/lit8 v11, p1, 0x5

    .line 49
    .line 50
    aget v11, p0, v11

    .line 51
    .line 52
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    const/16 v12, 0x9

    .line 57
    .line 58
    add-int/lit8 v13, p1, 0x9

    .line 59
    .line 60
    aget v13, p0, v13

    .line 61
    .line 62
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 63
    .line 64
    .line 65
    move-result-object v13

    .line 66
    const/16 v14, 0xd

    .line 67
    .line 68
    add-int/lit8 v15, p1, 0xd

    .line 69
    .line 70
    aget v15, p0, v15

    .line 71
    .line 72
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 73
    .line 74
    .line 75
    move-result-object v15

    .line 76
    const/16 v16, 0x2

    .line 77
    .line 78
    add-int/lit8 v17, p1, 0x2

    .line 79
    .line 80
    aget v17, p0, v17

    .line 81
    .line 82
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 83
    .line 84
    .line 85
    move-result-object v17

    .line 86
    const/16 v18, 0x6

    .line 87
    .line 88
    add-int/lit8 v19, p1, 0x6

    .line 89
    .line 90
    aget v19, p0, v19

    .line 91
    .line 92
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 93
    .line 94
    .line 95
    move-result-object v19

    .line 96
    const/16 v20, 0xa

    .line 97
    .line 98
    add-int/lit8 v21, p1, 0xa

    .line 99
    .line 100
    aget v21, p0, v21

    .line 101
    .line 102
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 103
    .line 104
    .line 105
    move-result-object v21

    .line 106
    const/16 v22, 0xe

    .line 107
    .line 108
    add-int/lit8 v23, p1, 0xe

    .line 109
    .line 110
    aget v23, p0, v23

    .line 111
    .line 112
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 113
    .line 114
    .line 115
    move-result-object v23

    .line 116
    const/16 v24, 0x3

    .line 117
    .line 118
    add-int/lit8 v25, p1, 0x3

    .line 119
    .line 120
    aget v25, p0, v25

    .line 121
    .line 122
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 123
    .line 124
    .line 125
    move-result-object v25

    .line 126
    const/16 v26, 0x7

    .line 127
    .line 128
    add-int/lit8 v27, p1, 0x7

    .line 129
    .line 130
    aget v27, p0, v27

    .line 131
    .line 132
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 133
    .line 134
    .line 135
    move-result-object v27

    .line 136
    const/16 v28, 0xb

    .line 137
    .line 138
    add-int/lit8 v29, p1, 0xb

    .line 139
    .line 140
    aget v29, p0, v29

    .line 141
    .line 142
    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 143
    .line 144
    .line 145
    move-result-object v29

    .line 146
    const/16 v30, 0xf

    .line 147
    .line 148
    add-int/lit8 v31, p1, 0xf

    .line 149
    .line 150
    aget v31, p0, v31

    .line 151
    .line 152
    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 153
    .line 154
    .line 155
    move-result-object v31

    .line 156
    const/16 v14, 0x10

    .line 157
    .line 158
    new-array v14, v14, [Ljava/lang/Object;

    .line 159
    .line 160
    const/16 v32, 0x0

    .line 161
    .line 162
    aput-object v1, v14, v32

    .line 163
    .line 164
    aput-object v3, v14, v8

    .line 165
    .line 166
    aput-object v5, v14, v16

    .line 167
    .line 168
    aput-object v7, v14, v24

    .line 169
    .line 170
    aput-object v9, v14, v2

    .line 171
    .line 172
    aput-object v11, v14, v10

    .line 173
    .line 174
    aput-object v13, v14, v18

    .line 175
    .line 176
    aput-object v15, v14, v26

    .line 177
    .line 178
    aput-object v17, v14, v4

    .line 179
    .line 180
    aput-object v19, v14, v12

    .line 181
    .line 182
    aput-object v21, v14, v20

    .line 183
    .line 184
    aput-object v23, v14, v28

    .line 185
    .line 186
    aput-object v25, v14, v6

    .line 187
    .line 188
    const/16 v1, 0xd

    .line 189
    .line 190
    aput-object v27, v14, v1

    .line 191
    .line 192
    aput-object v29, v14, v22

    .line 193
    .line 194
    aput-object v31, v14, v30

    .line 195
    .line 196
    const-string v1, "Matrix:\n%2.1f %2.1f %2.1f %2.1f\n%2.1f %2.1f %2.1f %2.1f\n%2.1f %2.1f %2.1f %2.1f\n%2.1f %2.1f %2.1f %2.1f"

    .line 197
    .line 198
    invoke-static {v0, v1, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    return-object v0
.end method
