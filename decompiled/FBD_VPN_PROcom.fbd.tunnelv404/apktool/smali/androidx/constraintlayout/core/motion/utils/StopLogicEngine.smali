.class public Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/StopEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$Decelerate;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 1.0E-5f


# instance fields
.field private mBackwards:Z

.field private mDone:Z

.field private mLastPosition:F

.field private mLastTime:F

.field private mNumberOfStages:I

.field private mStage1Duration:F

.field private mStage1EndPosition:F

.field private mStage1Velocity:F

.field private mStage2Duration:F

.field private mStage2EndPosition:F

.field private mStage2Velocity:F

.field private mStage3Duration:F

.field private mStage3EndPosition:F

.field private mStage3Velocity:F

.field private mStartPosition:F

.field private mType:Ljava/lang/String;


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
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mDone:Z

    .line 8
    .line 9
    return-void
.end method

.method private calcY(F)F
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mDone:Z

    .line 3
    .line 4
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    .line 5
    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    .line 8
    cmpg-float v2, p1, v0

    .line 9
    .line 10
    if-gtz v2, :cond_0

    .line 11
    .line 12
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    .line 13
    .line 14
    mul-float v3, v2, p1

    .line 15
    .line 16
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    .line 17
    .line 18
    sub-float/2addr v4, v2

    .line 19
    mul-float v4, v4, p1

    .line 20
    .line 21
    mul-float v4, v4, p1

    .line 22
    .line 23
    mul-float v0, v0, v1

    .line 24
    .line 25
    div-float/2addr v4, v0

    .line 26
    add-float/2addr v4, v3

    .line 27
    return v4

    .line 28
    :cond_0
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-ne v2, v3, :cond_1

    .line 32
    .line 33
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    .line 34
    .line 35
    return p1

    .line 36
    :cond_1
    sub-float/2addr p1, v0

    .line 37
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    .line 38
    .line 39
    cmpg-float v4, p1, v0

    .line 40
    .line 41
    if-gez v4, :cond_2

    .line 42
    .line 43
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    .line 44
    .line 45
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    .line 46
    .line 47
    mul-float v4, v3, p1

    .line 48
    .line 49
    add-float/2addr v4, v2

    .line 50
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    .line 51
    .line 52
    sub-float/2addr v2, v3

    .line 53
    mul-float v2, v2, p1

    .line 54
    .line 55
    mul-float v2, v2, p1

    .line 56
    .line 57
    mul-float v0, v0, v1

    .line 58
    .line 59
    div-float/2addr v2, v0

    .line 60
    add-float/2addr v2, v4

    .line 61
    return v2

    .line 62
    :cond_2
    const/4 v4, 0x2

    .line 63
    if-ne v2, v4, :cond_3

    .line 64
    .line 65
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    .line 66
    .line 67
    return p1

    .line 68
    :cond_3
    sub-float/2addr p1, v0

    .line 69
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

    .line 70
    .line 71
    cmpg-float v2, p1, v0

    .line 72
    .line 73
    if-gtz v2, :cond_4

    .line 74
    .line 75
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    .line 76
    .line 77
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    .line 78
    .line 79
    mul-float v4, v3, p1

    .line 80
    .line 81
    add-float/2addr v4, v2

    .line 82
    mul-float v3, v3, p1

    .line 83
    .line 84
    mul-float v3, v3, p1

    .line 85
    .line 86
    mul-float v0, v0, v1

    .line 87
    .line 88
    div-float/2addr v3, v0

    .line 89
    sub-float/2addr v4, v3

    .line 90
    return v4

    .line 91
    :cond_4
    iput-boolean v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mDone:Z

    .line 92
    .line 93
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    .line 94
    .line 95
    return p1
.end method

.method private setup(FFFFF)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mDone:Z

    .line 3
    .line 4
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    cmpl-float v1, p1, v0

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const p1, 0x38d1b717    # 1.0E-4f

    .line 12
    .line 13
    .line 14
    :cond_0
    div-float v1, p1, p3

    .line 15
    .line 16
    mul-float v2, v1, p1

    .line 17
    .line 18
    const/high16 v3, 0x40000000    # 2.0f

    .line 19
    .line 20
    div-float/2addr v2, v3

    .line 21
    const/4 v4, 0x3

    .line 22
    const/4 v5, 0x2

    .line 23
    cmpg-float v6, p1, v0

    .line 24
    .line 25
    if-gez v6, :cond_2

    .line 26
    .line 27
    neg-float p5, p1

    .line 28
    div-float/2addr p5, p3

    .line 29
    mul-float p5, p5, p1

    .line 30
    .line 31
    div-float/2addr p5, v3

    .line 32
    sub-float p5, p2, p5

    .line 33
    .line 34
    mul-float p5, p5, p3

    .line 35
    .line 36
    float-to-double v1, p5

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    double-to-float p5, v1

    .line 42
    cmpg-float v1, p5, p4

    .line 43
    .line 44
    if-gez v1, :cond_1

    .line 45
    .line 46
    const-string p4, "backward accelerate, decelerate"

    .line 47
    .line 48
    iput-object p4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    .line 49
    .line 50
    iput v5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    .line 51
    .line 52
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    .line 53
    .line 54
    iput p5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    .line 55
    .line 56
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    .line 57
    .line 58
    sub-float p4, p5, p1

    .line 59
    .line 60
    div-float/2addr p4, p3

    .line 61
    iput p4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    .line 62
    .line 63
    div-float p3, p5, p3

    .line 64
    .line 65
    iput p3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    .line 66
    .line 67
    add-float/2addr p1, p5

    .line 68
    mul-float p1, p1, p4

    .line 69
    .line 70
    div-float/2addr p1, v3

    .line 71
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    .line 72
    .line 73
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    .line 74
    .line 75
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    const-string p5, "backward accelerate cruse decelerate"

    .line 79
    .line 80
    iput-object p5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    .line 81
    .line 82
    iput v4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    .line 83
    .line 84
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    .line 85
    .line 86
    iput p4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    .line 87
    .line 88
    iput p4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    .line 89
    .line 90
    sub-float p5, p4, p1

    .line 91
    .line 92
    div-float/2addr p5, p3

    .line 93
    iput p5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    .line 94
    .line 95
    div-float p3, p4, p3

    .line 96
    .line 97
    iput p3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

    .line 98
    .line 99
    add-float/2addr p1, p4

    .line 100
    mul-float p1, p1, p5

    .line 101
    .line 102
    div-float/2addr p1, v3

    .line 103
    mul-float p3, p3, p4

    .line 104
    .line 105
    div-float/2addr p3, v3

    .line 106
    sub-float p5, p2, p1

    .line 107
    .line 108
    sub-float/2addr p5, p3

    .line 109
    div-float/2addr p5, p4

    .line 110
    iput p5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    .line 111
    .line 112
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    .line 113
    .line 114
    sub-float p1, p2, p3

    .line 115
    .line 116
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    .line 117
    .line 118
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    .line 119
    .line 120
    return-void

    .line 121
    :cond_2
    cmpl-float v6, v2, p2

    .line 122
    .line 123
    if-ltz v6, :cond_3

    .line 124
    .line 125
    const-string p3, "hard stop"

    .line 126
    .line 127
    iput-object p3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    .line 128
    .line 129
    mul-float v3, v3, p2

    .line 130
    .line 131
    div-float/2addr v3, p1

    .line 132
    const/4 p3, 0x1

    .line 133
    iput p3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    .line 134
    .line 135
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    .line 136
    .line 137
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    .line 138
    .line 139
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    .line 140
    .line 141
    iput v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    .line 142
    .line 143
    return-void

    .line 144
    :cond_3
    sub-float v2, p2, v2

    .line 145
    .line 146
    div-float v6, v2, p1

    .line 147
    .line 148
    add-float v7, v6, v1

    .line 149
    .line 150
    cmpg-float p5, v7, p5

    .line 151
    .line 152
    if-gez p5, :cond_4

    .line 153
    .line 154
    const-string p3, "cruse decelerate"

    .line 155
    .line 156
    iput-object p3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    .line 157
    .line 158
    iput v5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    .line 159
    .line 160
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    .line 161
    .line 162
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    .line 163
    .line 164
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    .line 165
    .line 166
    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    .line 167
    .line 168
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    .line 169
    .line 170
    iput v6, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    .line 171
    .line 172
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    .line 173
    .line 174
    return-void

    .line 175
    :cond_4
    mul-float p5, p3, p2

    .line 176
    .line 177
    mul-float v1, p1, p1

    .line 178
    .line 179
    div-float/2addr v1, v3

    .line 180
    add-float/2addr v1, p5

    .line 181
    float-to-double v1, v1

    .line 182
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 183
    .line 184
    .line 185
    move-result-wide v1

    .line 186
    double-to-float p5, v1

    .line 187
    sub-float v1, p5, p1

    .line 188
    .line 189
    div-float/2addr v1, p3

    .line 190
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    .line 191
    .line 192
    div-float v2, p5, p3

    .line 193
    .line 194
    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    .line 195
    .line 196
    cmpg-float v6, p5, p4

    .line 197
    .line 198
    if-gez v6, :cond_5

    .line 199
    .line 200
    const-string p3, "accelerate decelerate"

    .line 201
    .line 202
    iput-object p3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    .line 203
    .line 204
    iput v5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    .line 205
    .line 206
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    .line 207
    .line 208
    iput p5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    .line 209
    .line 210
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    .line 211
    .line 212
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    .line 213
    .line 214
    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    .line 215
    .line 216
    add-float/2addr p1, p5

    .line 217
    mul-float p1, p1, v1

    .line 218
    .line 219
    div-float/2addr p1, v3

    .line 220
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    .line 221
    .line 222
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    .line 223
    .line 224
    return-void

    .line 225
    :cond_5
    const-string p5, "accelerate cruse decelerate"

    .line 226
    .line 227
    iput-object p5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    .line 228
    .line 229
    iput v4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    .line 230
    .line 231
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    .line 232
    .line 233
    iput p4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    .line 234
    .line 235
    iput p4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    .line 236
    .line 237
    sub-float p5, p4, p1

    .line 238
    .line 239
    div-float/2addr p5, p3

    .line 240
    iput p5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    .line 241
    .line 242
    div-float p3, p4, p3

    .line 243
    .line 244
    iput p3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

    .line 245
    .line 246
    add-float/2addr p1, p4

    .line 247
    mul-float p1, p1, p5

    .line 248
    .line 249
    div-float/2addr p1, v3

    .line 250
    mul-float p3, p3, p4

    .line 251
    .line 252
    div-float/2addr p3, v3

    .line 253
    sub-float p5, p2, p1

    .line 254
    .line 255
    sub-float/2addr p5, p3

    .line 256
    div-float/2addr p5, p4

    .line 257
    iput p5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    .line 258
    .line 259
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    .line 260
    .line 261
    sub-float p1, p2, p3

    .line 262
    .line 263
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    .line 264
    .line 265
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    .line 266
    .line 267
    return-void
.end method


# virtual methods
.method public config(FFFFFF)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mDone:Z

    .line 3
    .line 4
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStartPosition:F

    .line 5
    .line 6
    cmpl-float v2, p1, p2

    .line 7
    .line 8
    if-lez v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    :cond_0
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    neg-float v1, p3

    .line 16
    sub-float v2, p1, p2

    .line 17
    .line 18
    move-object v0, p0

    .line 19
    move v3, p5

    .line 20
    move v4, p6

    .line 21
    move v5, p4

    .line 22
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->setup(FFFFF)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    sub-float v2, p2, p1

    .line 27
    .line 28
    move-object v0, p0

    .line 29
    move v1, p3

    .line 30
    move v3, p5

    .line 31
    move v4, p6

    .line 32
    move v5, p4

    .line 33
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->setup(FFFFF)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public debug(Ljava/lang/String;F)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, " ===== "

    .line 2
    .line 3
    invoke-static {p1, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "\n"

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-boolean v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string v1, "backwards"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v1, "forward "

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " time = "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "  stages "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    .line 45
    .line 46
    invoke-static {v0, v2, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, " dur "

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v3, " vel "

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    .line 77
    .line 78
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v4, " pos "

    .line 82
    .line 83
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget v5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    .line 87
    .line 88
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget v5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    .line 99
    .line 100
    const/4 v6, 0x1

    .line 101
    if-le v5, v6, :cond_1

    .line 102
    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    .line 118
    .line 119
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    .line 126
    .line 127
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    .line 134
    .line 135
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    :cond_1
    iget v5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    .line 146
    .line 147
    const/4 v7, 0x2

    .line 148
    if-le v5, v7, :cond_2

    .line 149
    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

    .line 165
    .line 166
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    .line 173
    .line 174
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    .line 181
    .line 182
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    .line 193
    .line 194
    cmpg-float v2, p2, v0

    .line 195
    .line 196
    if-gtz v2, :cond_3

    .line 197
    .line 198
    const-string p2, "stage 0\n"

    .line 199
    .line 200
    invoke-static {v1, p1, p2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    return-object p1

    .line 205
    :cond_3
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    .line 206
    .line 207
    if-ne v2, v6, :cond_4

    .line 208
    .line 209
    const-string p2, "end stage 0\n"

    .line 210
    .line 211
    invoke-static {v1, p1, p2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    return-object p1

    .line 216
    :cond_4
    sub-float/2addr p2, v0

    .line 217
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    .line 218
    .line 219
    cmpg-float v3, p2, v0

    .line 220
    .line 221
    if-gez v3, :cond_5

    .line 222
    .line 223
    const-string p2, " stage 1\n"

    .line 224
    .line 225
    invoke-static {v1, p1, p2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    return-object p1

    .line 230
    :cond_5
    if-ne v2, v7, :cond_6

    .line 231
    .line 232
    const-string p2, "end stage 1\n"

    .line 233
    .line 234
    invoke-static {v1, p1, p2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    return-object p1

    .line 239
    :cond_6
    sub-float/2addr p2, v0

    .line 240
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

    .line 241
    .line 242
    cmpg-float p2, p2, v0

    .line 243
    .line 244
    if-gez p2, :cond_7

    .line 245
    .line 246
    const-string p2, " stage 2\n"

    .line 247
    .line 248
    invoke-static {v1, p1, p2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    return-object p1

    .line 253
    :cond_7
    const-string p2, " end stage 2\n"

    .line 254
    .line 255
    invoke-static {v1, p1, p2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    return-object p1
.end method

.method public getInterpolation(F)F
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->calcY(F)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mLastPosition:F

    .line 6
    .line 7
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mLastTime:F

    .line 8
    .line 9
    iget-boolean p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStartPosition:F

    .line 14
    .line 15
    sub-float/2addr p1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStartPosition:F

    .line 18
    .line 19
    add-float/2addr p1, v0

    .line 20
    :goto_0
    return p1
.end method

.method public getVelocity()F
    .locals 1

    .line 8
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mLastTime:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->getVelocity(F)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mLastTime:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->getVelocity(F)F

    move-result v0

    :goto_0
    return v0
.end method

.method public getVelocity(F)F
    .locals 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 2
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    :goto_0
    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    div-float/2addr v2, v0

    add-float/2addr v2, v1

    return v2

    .line 3
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    return v3

    :cond_1
    sub-float/2addr p1, v0

    .line 4
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    cmpg-float v2, p1, v0

    if-gez v2, :cond_2

    .line 5
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    return v3

    :cond_3
    sub-float/2addr p1, v0

    .line 6
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    .line 7
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    mul-float p1, p1, v1

    div-float/2addr p1, v0

    sub-float/2addr v1, p1

    return v1

    :cond_4
    return v3
.end method

.method public isStopped()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->getVelocity()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x3727c5ac    # 1.0E-5f

    .line 6
    .line 7
    .line 8
    cmpg-float v0, v0, v1

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    .line 13
    .line 14
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mLastPosition:F

    .line 15
    .line 16
    sub-float/2addr v0, v2

    .line 17
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    cmpg-float v0, v0, v1

    .line 22
    .line 23
    if-gez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method
