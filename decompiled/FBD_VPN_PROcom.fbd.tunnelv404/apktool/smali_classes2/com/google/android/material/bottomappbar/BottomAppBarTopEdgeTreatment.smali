.class public Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ANGLE_LEFT:I = 0xb4

.field private static final ANGLE_UP:I = 0x10e

.field private static final ARC_HALF:I = 0xb4

.field private static final ARC_QUARTER:I = 0x5a

.field private static final ROUNDED_CORNER_FAB_OFFSET:F = 1.75f


# instance fields
.field private cradleVerticalOffset:F

.field private fabCornerSize:F

.field private fabDiameter:F

.field private fabMargin:F

.field private horizontalOffset:F

.field private roundedCornerRadius:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 9
    .line 10
    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 11
    .line 12
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setCradleVerticalOffset(F)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getCradleVerticalOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 23
    .param p4    # Lcom/google/android/material/shape/ShapePath;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v9, p4

    .line 8
    .line 9
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    cmpl-float v4, v3, v10

    .line 13
    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 21
    .line 22
    const/high16 v11, 0x40000000    # 2.0f

    .line 23
    .line 24
    mul-float v4, v4, v11

    .line 25
    .line 26
    add-float/2addr v4, v3

    .line 27
    div-float v12, v4, v11

    .line 28
    .line 29
    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 30
    .line 31
    mul-float v13, v2, v4

    .line 32
    .line 33
    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 34
    .line 35
    add-float v14, p2, v4

    .line 36
    .line 37
    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 38
    .line 39
    mul-float v4, v4, v2

    .line 40
    .line 41
    const/high16 v5, 0x3f800000    # 1.0f

    .line 42
    .line 43
    invoke-static {v5, v2, v12, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(FFFF)F

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    div-float v6, v4, v12

    .line 48
    .line 49
    cmpl-float v5, v6, v5

    .line 50
    .line 51
    if-ltz v5, :cond_1

    .line 52
    .line 53
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    iget v5, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    .line 58
    .line 59
    mul-float v15, v5, v2

    .line 60
    .line 61
    const/high16 v2, -0x40800000    # -1.0f

    .line 62
    .line 63
    cmpl-float v2, v5, v2

    .line 64
    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    mul-float v5, v5, v11

    .line 68
    .line 69
    sub-float/2addr v5, v3

    .line 70
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    const v3, 0x3dcccccd    # 0.1f

    .line 75
    .line 76
    .line 77
    cmpg-float v2, v2, v3

    .line 78
    .line 79
    if-gez v2, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/4 v2, 0x0

    .line 83
    const/16 v16, 0x0

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 87
    const/16 v16, 0x1

    .line 88
    .line 89
    :goto_1
    if-nez v16, :cond_4

    .line 90
    .line 91
    const/high16 v2, 0x3fe00000    # 1.75f

    .line 92
    .line 93
    const/16 v17, 0x0

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    move/from16 v17, v4

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    :goto_2
    add-float v3, v12, v13

    .line 100
    .line 101
    mul-float v3, v3, v3

    .line 102
    .line 103
    add-float v4, v17, v13

    .line 104
    .line 105
    mul-float v5, v4, v4

    .line 106
    .line 107
    sub-float/2addr v3, v5

    .line 108
    float-to-double v5, v3

    .line 109
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 110
    .line 111
    .line 112
    move-result-wide v5

    .line 113
    double-to-float v3, v5

    .line 114
    sub-float v5, v14, v3

    .line 115
    .line 116
    add-float v18, v14, v3

    .line 117
    .line 118
    div-float/2addr v3, v4

    .line 119
    float-to-double v3, v3

    .line 120
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    .line 125
    .line 126
    .line 127
    move-result-wide v3

    .line 128
    double-to-float v8, v3

    .line 129
    const/high16 v3, 0x42b40000    # 90.0f

    .line 130
    .line 131
    sub-float/2addr v3, v8

    .line 132
    add-float v19, v3, v2

    .line 133
    .line 134
    invoke-virtual {v9, v5, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 135
    .line 136
    .line 137
    sub-float v3, v5, v13

    .line 138
    .line 139
    add-float/2addr v5, v13

    .line 140
    mul-float v20, v13, v11

    .line 141
    .line 142
    const/high16 v7, 0x43870000    # 270.0f

    .line 143
    .line 144
    const/4 v4, 0x0

    .line 145
    move-object/from16 v2, p4

    .line 146
    .line 147
    move/from16 v6, v20

    .line 148
    .line 149
    move/from16 v21, v8

    .line 150
    .line 151
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 152
    .line 153
    .line 154
    const/high16 v2, 0x43340000    # 180.0f

    .line 155
    .line 156
    if-eqz v16, :cond_5

    .line 157
    .line 158
    sub-float v3, v14, v12

    .line 159
    .line 160
    neg-float v4, v12

    .line 161
    sub-float v4, v4, v17

    .line 162
    .line 163
    add-float v5, v14, v12

    .line 164
    .line 165
    sub-float v6, v12, v17

    .line 166
    .line 167
    sub-float v7, v2, v19

    .line 168
    .line 169
    mul-float v19, v19, v11

    .line 170
    .line 171
    sub-float v8, v19, v2

    .line 172
    .line 173
    move-object/from16 v2, p4

    .line 174
    .line 175
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_5
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 180
    .line 181
    mul-float v16, v15, v11

    .line 182
    .line 183
    add-float v4, v3, v16

    .line 184
    .line 185
    sub-float v5, v14, v12

    .line 186
    .line 187
    add-float v6, v15, v3

    .line 188
    .line 189
    neg-float v6, v6

    .line 190
    add-float v7, v5, v4

    .line 191
    .line 192
    add-float v8, v3, v15

    .line 193
    .line 194
    sub-float v17, v2, v19

    .line 195
    .line 196
    mul-float v3, v19, v11

    .line 197
    .line 198
    sub-float/2addr v3, v2

    .line 199
    div-float v22, v3, v11

    .line 200
    .line 201
    move-object/from16 v2, p4

    .line 202
    .line 203
    move v3, v5

    .line 204
    move v4, v6

    .line 205
    move v5, v7

    .line 206
    move v6, v8

    .line 207
    move/from16 v7, v17

    .line 208
    .line 209
    move/from16 v8, v22

    .line 210
    .line 211
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 212
    .line 213
    .line 214
    add-float v5, v14, v12

    .line 215
    .line 216
    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 217
    .line 218
    div-float v3, v2, v11

    .line 219
    .line 220
    add-float/2addr v3, v15

    .line 221
    sub-float v3, v5, v3

    .line 222
    .line 223
    add-float/2addr v2, v15

    .line 224
    invoke-virtual {v9, v3, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 225
    .line 226
    .line 227
    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 228
    .line 229
    add-float v16, v16, v2

    .line 230
    .line 231
    sub-float v3, v5, v16

    .line 232
    .line 233
    add-float v4, v15, v2

    .line 234
    .line 235
    neg-float v4, v4

    .line 236
    add-float v6, v2, v15

    .line 237
    .line 238
    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 239
    .line 240
    add-float v8, v19, v2

    .line 241
    .line 242
    const/high16 v7, 0x42b40000    # 90.0f

    .line 243
    .line 244
    move-object/from16 v2, p4

    .line 245
    .line 246
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 247
    .line 248
    .line 249
    :goto_3
    sub-float v3, v18, v13

    .line 250
    .line 251
    add-float v5, v18, v13

    .line 252
    .line 253
    const/high16 v2, 0x43870000    # 270.0f

    .line 254
    .line 255
    sub-float v7, v2, v21

    .line 256
    .line 257
    const/4 v4, 0x0

    .line 258
    move-object/from16 v2, p4

    .line 259
    .line 260
    move/from16 v6, v20

    .line 261
    .line 262
    move/from16 v8, v21

    .line 263
    .line 264
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 268
    .line 269
    .line 270
    return-void
.end method

.method public getFabCornerRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    .line 2
    .line 3
    return v0
.end method

.method public getFabCradleMargin()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 2
    .line 3
    return v0
.end method

.method public getFabCradleRoundedCornerRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 2
    .line 3
    return v0
.end method

.method public getFabDiameter()F
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    .line 2
    .line 3
    return v0
.end method

.method public getHorizontalOffset()F
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public setCradleVerticalOffset(F)V
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
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v1, 0x6

    .line 14
    new-array v1, v1, [J

    .line 15
    .line 16
    fill-array-data v1, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x4d7d74718124efd2L
        -0x7c70044443d4627dL
        -0x78621999681ddfefL    # -5.527072477456507E-272
        0x7feb5eff0ab214f1L    # 1.5376500326085524E308
        0x45f7a5409b7cc200L    # 1.1708692937307733E29
        -0x2f77bcc789837f07L    # -8.990127563996735E79
    .end array-data
.end method

.method public setFabCornerSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    .line 2
    .line 3
    return-void
.end method

.method public setFabCradleMargin(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 2
    .line 3
    return-void
.end method

.method public setFabCradleRoundedCornerRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 2
    .line 3
    return-void
.end method

.method public setFabDiameter(F)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 2
    .line 3
    return-void
.end method
