.class public Landroidx/constraintlayout/widget/ConstraintSet$Layout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Layout"
.end annotation


# static fields
.field private static final BARRIER_ALLOWS_GONE_WIDGETS:I = 0x4b

.field private static final BARRIER_DIRECTION:I = 0x48

.field private static final BARRIER_MARGIN:I = 0x49

.field private static final BASELINE_MARGIN:I = 0x50

.field private static final BASELINE_TO_BASELINE:I = 0x1

.field private static final BASELINE_TO_BOTTOM:I = 0x4e

.field private static final BASELINE_TO_TOP:I = 0x4d

.field private static final BOTTOM_MARGIN:I = 0x2

.field private static final BOTTOM_TO_BOTTOM:I = 0x3

.field private static final BOTTOM_TO_TOP:I = 0x4

.field private static final CHAIN_USE_RTL:I = 0x47

.field private static final CIRCLE:I = 0x3d

.field private static final CIRCLE_ANGLE:I = 0x3f

.field private static final CIRCLE_RADIUS:I = 0x3e

.field private static final CONSTRAINED_HEIGHT:I = 0x58

.field private static final CONSTRAINED_WIDTH:I = 0x57

.field private static final CONSTRAINT_REFERENCED_IDS:I = 0x4a

.field private static final CONSTRAINT_TAG:I = 0x59

.field private static final DIMENSION_RATIO:I = 0x5

.field private static final EDITOR_ABSOLUTE_X:I = 0x6

.field private static final EDITOR_ABSOLUTE_Y:I = 0x7

.field private static final END_MARGIN:I = 0x8

.field private static final END_TO_END:I = 0x9

.field private static final END_TO_START:I = 0xa

.field private static final GONE_BASELINE_MARGIN:I = 0x4f

.field private static final GONE_BOTTOM_MARGIN:I = 0xb

.field private static final GONE_END_MARGIN:I = 0xc

.field private static final GONE_LEFT_MARGIN:I = 0xd

.field private static final GONE_RIGHT_MARGIN:I = 0xe

.field private static final GONE_START_MARGIN:I = 0xf

.field private static final GONE_TOP_MARGIN:I = 0x10

.field private static final GUIDE_BEGIN:I = 0x11

.field private static final GUIDE_END:I = 0x12

.field private static final GUIDE_PERCENT:I = 0x13

.field private static final GUIDE_USE_RTL:I = 0x5a

.field private static final HEIGHT_DEFAULT:I = 0x52

.field private static final HEIGHT_MAX:I = 0x53

.field private static final HEIGHT_MIN:I = 0x55

.field private static final HEIGHT_PERCENT:I = 0x46

.field private static final HORIZONTAL_BIAS:I = 0x14

.field private static final HORIZONTAL_STYLE:I = 0x27

.field private static final HORIZONTAL_WEIGHT:I = 0x25

.field private static final LAYOUT_CONSTRAINT_HEIGHT:I = 0x2a

.field private static final LAYOUT_CONSTRAINT_WIDTH:I = 0x29

.field private static final LAYOUT_HEIGHT:I = 0x15

.field private static final LAYOUT_WIDTH:I = 0x16

.field private static final LAYOUT_WRAP_BEHAVIOR:I = 0x4c

.field private static final LEFT_MARGIN:I = 0x17

.field private static final LEFT_TO_LEFT:I = 0x18

.field private static final LEFT_TO_RIGHT:I = 0x19

.field private static final ORIENTATION:I = 0x1a

.field private static final RIGHT_MARGIN:I = 0x1b

.field private static final RIGHT_TO_LEFT:I = 0x1c

.field private static final RIGHT_TO_RIGHT:I = 0x1d

.field private static final START_MARGIN:I = 0x1e

.field private static final START_TO_END:I = 0x1f

.field private static final START_TO_START:I = 0x20

.field private static final TOP_MARGIN:I = 0x21

.field private static final TOP_TO_BOTTOM:I = 0x22

.field private static final TOP_TO_TOP:I = 0x23

.field public static final UNSET:I = -0x1

.field public static final UNSET_GONE_MARGIN:I = -0x80000000

.field private static final UNUSED:I = 0x5b

.field private static final VERTICAL_BIAS:I = 0x24

.field private static final VERTICAL_STYLE:I = 0x28

.field private static final VERTICAL_WEIGHT:I = 0x26

.field private static final WIDTH_DEFAULT:I = 0x51

.field private static final WIDTH_MAX:I = 0x54

.field private static final WIDTH_MIN:I = 0x56

.field private static final WIDTH_PERCENT:I = 0x45

.field private static sMapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field public baselineMargin:I

.field public baselineToBaseline:I

.field public baselineToBottom:I

.field public baselineToTop:I

.field public bottomMargin:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public circleAngle:F

.field public circleConstraint:I

.field public circleRadius:I

.field public constrainedHeight:Z

.field public constrainedWidth:Z

.field public dimensionRatio:Ljava/lang/String;

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public endMargin:I

.field public endToEnd:I

.field public endToStart:I

.field public goneBaselineMargin:I

.field public goneBottomMargin:I

.field public goneEndMargin:I

.field public goneLeftMargin:I

.field public goneRightMargin:I

.field public goneStartMargin:I

.field public goneTopMargin:I

.field public guideBegin:I

.field public guideEnd:I

.field public guidePercent:F

.field public guidelineUseRtl:Z

.field public heightDefault:I

.field public heightMax:I

.field public heightMin:I

.field public heightPercent:F

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field public horizontalWeight:F

.field public leftMargin:I

.field public leftToLeft:I

.field public leftToRight:I

.field public mApply:Z

.field public mBarrierAllowsGoneWidgets:Z

.field public mBarrierDirection:I

.field public mBarrierMargin:I

.field public mConstraintTag:Ljava/lang/String;

.field public mHeight:I

.field public mHelperType:I

.field public mIsGuideline:Z

.field public mOverride:Z

.field public mReferenceIdString:Ljava/lang/String;

.field public mReferenceIds:[I

.field public mWidth:I

.field public mWrapBehavior:I

.field public orientation:I

.field public rightMargin:I

.field public rightToLeft:I

.field public rightToRight:I

.field public startMargin:I

.field public startToEnd:I

.field public startToStart:I

.field public topMargin:I

.field public topToBottom:I

.field public topToTop:I

.field public verticalBias:F

.field public verticalChainStyle:I

.field public verticalWeight:F

.field public widthDefault:I

.field public widthMax:I

.field public widthMin:I

.field public widthPercent:F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintLeft_toLeftOf:I

    .line 9
    .line 10
    const/16 v2, 0x18

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintLeft_toRightOf:I

    .line 18
    .line 19
    const/16 v2, 0x19

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 25
    .line 26
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintRight_toLeftOf:I

    .line 27
    .line 28
    const/16 v2, 0x1c

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 34
    .line 35
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintRight_toRightOf:I

    .line 36
    .line 37
    const/16 v2, 0x1d

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 43
    .line 44
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintTop_toTopOf:I

    .line 45
    .line 46
    const/16 v2, 0x23

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 52
    .line 53
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintTop_toBottomOf:I

    .line 54
    .line 55
    const/16 v2, 0x22

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 61
    .line 62
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBottom_toTopOf:I

    .line 63
    .line 64
    const/4 v2, 0x4

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 66
    .line 67
    .line 68
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 69
    .line 70
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBottom_toBottomOf:I

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 74
    .line 75
    .line 76
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 77
    .line 78
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBaseline_toBaselineOf:I

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 85
    .line 86
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_editor_absoluteX:I

    .line 87
    .line 88
    const/4 v2, 0x6

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 90
    .line 91
    .line 92
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 93
    .line 94
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_editor_absoluteY:I

    .line 95
    .line 96
    const/4 v2, 0x7

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 101
    .line 102
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintGuide_begin:I

    .line 103
    .line 104
    const/16 v2, 0x11

    .line 105
    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 107
    .line 108
    .line 109
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 110
    .line 111
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintGuide_end:I

    .line 112
    .line 113
    const/16 v2, 0x12

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 116
    .line 117
    .line 118
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 119
    .line 120
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintGuide_percent:I

    .line 121
    .line 122
    const/16 v2, 0x13

    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 125
    .line 126
    .line 127
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 128
    .line 129
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_guidelineUseRtl:I

    .line 130
    .line 131
    const/16 v2, 0x5a

    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 134
    .line 135
    .line 136
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 137
    .line 138
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_orientation:I

    .line 139
    .line 140
    const/16 v4, 0x1a

    .line 141
    .line 142
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 143
    .line 144
    .line 145
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 146
    .line 147
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintStart_toEndOf:I

    .line 148
    .line 149
    const/16 v4, 0x1f

    .line 150
    .line 151
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 152
    .line 153
    .line 154
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 155
    .line 156
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintStart_toStartOf:I

    .line 157
    .line 158
    const/16 v4, 0x20

    .line 159
    .line 160
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 161
    .line 162
    .line 163
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 164
    .line 165
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintEnd_toStartOf:I

    .line 166
    .line 167
    const/16 v4, 0xa

    .line 168
    .line 169
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 170
    .line 171
    .line 172
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 173
    .line 174
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintEnd_toEndOf:I

    .line 175
    .line 176
    const/16 v4, 0x9

    .line 177
    .line 178
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 179
    .line 180
    .line 181
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 182
    .line 183
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginLeft:I

    .line 184
    .line 185
    const/16 v4, 0xd

    .line 186
    .line 187
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 188
    .line 189
    .line 190
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 191
    .line 192
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginTop:I

    .line 193
    .line 194
    const/16 v4, 0x10

    .line 195
    .line 196
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 197
    .line 198
    .line 199
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 200
    .line 201
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginRight:I

    .line 202
    .line 203
    const/16 v4, 0xe

    .line 204
    .line 205
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 206
    .line 207
    .line 208
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 209
    .line 210
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginBottom:I

    .line 211
    .line 212
    const/16 v4, 0xb

    .line 213
    .line 214
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 215
    .line 216
    .line 217
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 218
    .line 219
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginStart:I

    .line 220
    .line 221
    const/16 v4, 0xf

    .line 222
    .line 223
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 224
    .line 225
    .line 226
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 227
    .line 228
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginEnd:I

    .line 229
    .line 230
    const/16 v4, 0xc

    .line 231
    .line 232
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 233
    .line 234
    .line 235
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 236
    .line 237
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintVertical_weight:I

    .line 238
    .line 239
    const/16 v4, 0x26

    .line 240
    .line 241
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 242
    .line 243
    .line 244
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 245
    .line 246
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHorizontal_weight:I

    .line 247
    .line 248
    const/16 v4, 0x25

    .line 249
    .line 250
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 251
    .line 252
    .line 253
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 254
    .line 255
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHorizontal_chainStyle:I

    .line 256
    .line 257
    const/16 v4, 0x27

    .line 258
    .line 259
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 260
    .line 261
    .line 262
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 263
    .line 264
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintVertical_chainStyle:I

    .line 265
    .line 266
    const/16 v4, 0x28

    .line 267
    .line 268
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 269
    .line 270
    .line 271
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 272
    .line 273
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHorizontal_bias:I

    .line 274
    .line 275
    const/16 v4, 0x14

    .line 276
    .line 277
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 278
    .line 279
    .line 280
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 281
    .line 282
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintVertical_bias:I

    .line 283
    .line 284
    const/16 v4, 0x24

    .line 285
    .line 286
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 287
    .line 288
    .line 289
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 290
    .line 291
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintDimensionRatio:I

    .line 292
    .line 293
    const/4 v4, 0x5

    .line 294
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 295
    .line 296
    .line 297
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 298
    .line 299
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintLeft_creator:I

    .line 300
    .line 301
    const/16 v4, 0x5b

    .line 302
    .line 303
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 304
    .line 305
    .line 306
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 307
    .line 308
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintTop_creator:I

    .line 309
    .line 310
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 311
    .line 312
    .line 313
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 314
    .line 315
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintRight_creator:I

    .line 316
    .line 317
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 318
    .line 319
    .line 320
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 321
    .line 322
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBottom_creator:I

    .line 323
    .line 324
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 325
    .line 326
    .line 327
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 328
    .line 329
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBaseline_creator:I

    .line 330
    .line 331
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 332
    .line 333
    .line 334
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 335
    .line 336
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginLeft:I

    .line 337
    .line 338
    const/16 v4, 0x17

    .line 339
    .line 340
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 341
    .line 342
    .line 343
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 344
    .line 345
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginRight:I

    .line 346
    .line 347
    const/16 v4, 0x1b

    .line 348
    .line 349
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 350
    .line 351
    .line 352
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 353
    .line 354
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginStart:I

    .line 355
    .line 356
    const/16 v4, 0x1e

    .line 357
    .line 358
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 359
    .line 360
    .line 361
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 362
    .line 363
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginEnd:I

    .line 364
    .line 365
    const/16 v4, 0x8

    .line 366
    .line 367
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 368
    .line 369
    .line 370
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 371
    .line 372
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginTop:I

    .line 373
    .line 374
    const/16 v4, 0x21

    .line 375
    .line 376
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 377
    .line 378
    .line 379
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 380
    .line 381
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginBottom:I

    .line 382
    .line 383
    const/4 v4, 0x2

    .line 384
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 385
    .line 386
    .line 387
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 388
    .line 389
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_width:I

    .line 390
    .line 391
    const/16 v4, 0x16

    .line 392
    .line 393
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 394
    .line 395
    .line 396
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 397
    .line 398
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_height:I

    .line 399
    .line 400
    const/16 v4, 0x15

    .line 401
    .line 402
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 403
    .line 404
    .line 405
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 406
    .line 407
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintWidth:I

    .line 408
    .line 409
    const/16 v4, 0x29

    .line 410
    .line 411
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 412
    .line 413
    .line 414
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 415
    .line 416
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHeight:I

    .line 417
    .line 418
    const/16 v5, 0x2a

    .line 419
    .line 420
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 421
    .line 422
    .line 423
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 424
    .line 425
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constrainedWidth:I

    .line 426
    .line 427
    const/16 v6, 0x57

    .line 428
    .line 429
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 430
    .line 431
    .line 432
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 433
    .line 434
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constrainedHeight:I

    .line 435
    .line 436
    const/16 v7, 0x58

    .line 437
    .line 438
    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 439
    .line 440
    .line 441
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 442
    .line 443
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_wrapBehaviorInParent:I

    .line 444
    .line 445
    const/16 v8, 0x4c

    .line 446
    .line 447
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 448
    .line 449
    .line 450
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 451
    .line 452
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintCircle:I

    .line 453
    .line 454
    const/16 v8, 0x3d

    .line 455
    .line 456
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 457
    .line 458
    .line 459
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 460
    .line 461
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintCircleRadius:I

    .line 462
    .line 463
    const/16 v8, 0x3e

    .line 464
    .line 465
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 466
    .line 467
    .line 468
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 469
    .line 470
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintCircleAngle:I

    .line 471
    .line 472
    const/16 v8, 0x3f

    .line 473
    .line 474
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 475
    .line 476
    .line 477
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 478
    .line 479
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintWidth_percent:I

    .line 480
    .line 481
    const/16 v8, 0x45

    .line 482
    .line 483
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 484
    .line 485
    .line 486
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 487
    .line 488
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHeight_percent:I

    .line 489
    .line 490
    const/16 v8, 0x46

    .line 491
    .line 492
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 493
    .line 494
    .line 495
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 496
    .line 497
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Layout_chainUseRtl:I

    .line 498
    .line 499
    const/16 v8, 0x47

    .line 500
    .line 501
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 502
    .line 503
    .line 504
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 505
    .line 506
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Layout_barrierDirection:I

    .line 507
    .line 508
    const/16 v8, 0x48

    .line 509
    .line 510
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 511
    .line 512
    .line 513
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 514
    .line 515
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Layout_barrierMargin:I

    .line 516
    .line 517
    const/16 v8, 0x49

    .line 518
    .line 519
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 520
    .line 521
    .line 522
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 523
    .line 524
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Layout_constraint_referenced_ids:I

    .line 525
    .line 526
    const/16 v8, 0x4a

    .line 527
    .line 528
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 529
    .line 530
    .line 531
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 532
    .line 533
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Layout_barrierAllowsGoneWidgets:I

    .line 534
    .line 535
    const/16 v8, 0x4b

    .line 536
    .line 537
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 538
    .line 539
    .line 540
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 541
    .line 542
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintWidth_max:I

    .line 543
    .line 544
    const/16 v8, 0x54

    .line 545
    .line 546
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 547
    .line 548
    .line 549
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 550
    .line 551
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintWidth_min:I

    .line 552
    .line 553
    const/16 v9, 0x56

    .line 554
    .line 555
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 556
    .line 557
    .line 558
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 559
    .line 560
    const/16 v8, 0x53

    .line 561
    .line 562
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 563
    .line 564
    .line 565
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 566
    .line 567
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHeight_min:I

    .line 568
    .line 569
    const/16 v8, 0x55

    .line 570
    .line 571
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 572
    .line 573
    .line 574
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 575
    .line 576
    invoke-virtual {v0, v3, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 577
    .line 578
    .line 579
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 580
    .line 581
    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 582
    .line 583
    .line 584
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 585
    .line 586
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layout_constraintTag:I

    .line 587
    .line 588
    const/16 v4, 0x59

    .line 589
    .line 590
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 591
    .line 592
    .line 593
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 594
    .line 595
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 596
    .line 597
    .line 598
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mOverride:Z

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 13
    .line 14
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 15
    .line 16
    const/high16 v2, -0x40800000    # -1.0f

    .line 17
    .line 18
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    .line 22
    .line 23
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 24
    .line 25
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 26
    .line 27
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 28
    .line 29
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 30
    .line 31
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 32
    .line 33
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 34
    .line 35
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 36
    .line 37
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 38
    .line 39
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 40
    .line 41
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 42
    .line 43
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 44
    .line 45
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 46
    .line 47
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 48
    .line 49
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 50
    .line 51
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 52
    .line 53
    const/high16 v4, 0x3f000000    # 0.5f

    .line 54
    .line 55
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 56
    .line 57
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 61
    .line 62
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 63
    .line 64
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 68
    .line 69
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 70
    .line 71
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 72
    .line 73
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 74
    .line 75
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 76
    .line 77
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 78
    .line 79
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 80
    .line 81
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 82
    .line 83
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 84
    .line 85
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 86
    .line 87
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 88
    .line 89
    const/high16 v4, -0x80000000

    .line 90
    .line 91
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 92
    .line 93
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 94
    .line 95
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 96
    .line 97
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 98
    .line 99
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 100
    .line 101
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 102
    .line 103
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 104
    .line 105
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 106
    .line 107
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 108
    .line 109
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 110
    .line 111
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 112
    .line 113
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 114
    .line 115
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 116
    .line 117
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 118
    .line 119
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 120
    .line 121
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 122
    .line 123
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 124
    .line 125
    const/high16 v2, 0x3f800000    # 1.0f

    .line 126
    .line 127
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 128
    .line 129
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 130
    .line 131
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 132
    .line 133
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 134
    .line 135
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 136
    .line 137
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 138
    .line 139
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 140
    .line 141
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 142
    .line 143
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 144
    .line 145
    return-void
.end method


# virtual methods
.method public copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Layout;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 4
    .line 5
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 8
    .line 9
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 12
    .line 13
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 14
    .line 15
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 16
    .line 17
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 18
    .line 19
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 20
    .line 21
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 22
    .line 23
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 24
    .line 25
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 26
    .line 27
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 28
    .line 29
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    .line 32
    .line 33
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 34
    .line 35
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 36
    .line 37
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 38
    .line 39
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 40
    .line 41
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 42
    .line 43
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 44
    .line 45
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 46
    .line 47
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 48
    .line 49
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 50
    .line 51
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 52
    .line 53
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 54
    .line 55
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 56
    .line 57
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 58
    .line 59
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 60
    .line 61
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 62
    .line 63
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 64
    .line 65
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 66
    .line 67
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 68
    .line 69
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 70
    .line 71
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 72
    .line 73
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 74
    .line 75
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 76
    .line 77
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 78
    .line 79
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 80
    .line 81
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 82
    .line 83
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 84
    .line 85
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 86
    .line 87
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 88
    .line 89
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 90
    .line 91
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 92
    .line 93
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 94
    .line 95
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 96
    .line 97
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 98
    .line 99
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 100
    .line 101
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 102
    .line 103
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 104
    .line 105
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 106
    .line 107
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 108
    .line 109
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 110
    .line 111
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 112
    .line 113
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 114
    .line 115
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 116
    .line 117
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 118
    .line 119
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 120
    .line 121
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 122
    .line 123
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 124
    .line 125
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 126
    .line 127
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 128
    .line 129
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 130
    .line 131
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 132
    .line 133
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 134
    .line 135
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 136
    .line 137
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 138
    .line 139
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 140
    .line 141
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 142
    .line 143
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 144
    .line 145
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 146
    .line 147
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 148
    .line 149
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 150
    .line 151
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 152
    .line 153
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 154
    .line 155
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 156
    .line 157
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 158
    .line 159
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 160
    .line 161
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 162
    .line 163
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 164
    .line 165
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 166
    .line 167
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 168
    .line 169
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 170
    .line 171
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 172
    .line 173
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 174
    .line 175
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 176
    .line 177
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 178
    .line 179
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 180
    .line 181
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 182
    .line 183
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 184
    .line 185
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 186
    .line 187
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 188
    .line 189
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 190
    .line 191
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 192
    .line 193
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 194
    .line 195
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 196
    .line 197
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 198
    .line 199
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 200
    .line 201
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 202
    .line 203
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 204
    .line 205
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 206
    .line 207
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 208
    .line 209
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 210
    .line 211
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 212
    .line 213
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 214
    .line 215
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 216
    .line 217
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 218
    .line 219
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 220
    .line 221
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 222
    .line 223
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 224
    .line 225
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 226
    .line 227
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 228
    .line 229
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 230
    .line 231
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 232
    .line 233
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 234
    .line 235
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 236
    .line 237
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 238
    .line 239
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 240
    .line 241
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 242
    .line 243
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 244
    .line 245
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 246
    .line 247
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 248
    .line 249
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 250
    .line 251
    if-eqz v0, :cond_0

    .line 252
    .line 253
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 254
    .line 255
    if-nez v1, :cond_0

    .line 256
    .line 257
    array-length v1, v0

    .line 258
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 263
    .line 264
    goto :goto_0

    .line 265
    :cond_0
    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 267
    .line 268
    :goto_0
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 269
    .line 270
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 271
    .line 272
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 273
    .line 274
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 275
    .line 276
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 277
    .line 278
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 279
    .line 280
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 281
    .line 282
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 283
    .line 284
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 285
    .line 286
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 287
    .line 288
    return-void
.end method

.method public dump(Landroidx/constraintlayout/motion/widget/MotionScene;Ljava/lang/StringBuilder;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "\n"

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    array-length v2, v0

    .line 16
    if-ge v1, v2, :cond_4

    .line 17
    .line 18
    aget-object v2, v0, v1

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    const-string v6, "\"\n"

    .line 46
    .line 47
    const-string v7, " = \""

    .line 48
    .line 49
    const-string v8, "    "

    .line 50
    .line 51
    if-ne v2, v5, :cond_2

    .line 52
    .line 53
    :try_start_1
    check-cast v4, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/4 v5, -0x1

    .line 60
    if-eq v2, v5, :cond_3

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintName(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    if-nez v2, :cond_1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    move-object v4, v2

    .line 83
    :goto_1
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 91
    .line 92
    if-ne v2, v5, :cond_3

    .line 93
    .line 94
    check-cast v4, Ljava/lang/Float;

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    const/high16 v5, -0x40800000    # -1.0f

    .line 101
    .line 102
    cmpl-float v2, v2, v5

    .line 103
    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    .line 120
    .line 121
    :catch_0
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    return-void
.end method

.method public fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Layout:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    sget-object v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    packed-switch v4, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    packed-switch v4, :pswitch_data_1

    .line 32
    .line 33
    .line 34
    const/high16 v5, 0x3f800000    # 1.0f

    .line 35
    .line 36
    packed-switch v4, :pswitch_data_2

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    sget-object v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 43
    .line 44
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 45
    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :pswitch_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    sget-object v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 53
    .line 54
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 55
    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :pswitch_1
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    .line 60
    .line 61
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :pswitch_3
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 78
    .line 79
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :pswitch_4
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 88
    .line 89
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 94
    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :pswitch_5
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 98
    .line 99
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 104
    .line 105
    goto/16 :goto_1

    .line 106
    .line 107
    :pswitch_6
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 108
    .line 109
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :pswitch_7
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 118
    .line 119
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :pswitch_8
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 128
    .line 129
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 134
    .line 135
    goto/16 :goto_1

    .line 136
    .line 137
    :pswitch_9
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 138
    .line 139
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 144
    .line 145
    goto/16 :goto_1

    .line 146
    .line 147
    :pswitch_a
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 148
    .line 149
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :pswitch_b
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 158
    .line 159
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 164
    .line 165
    goto/16 :goto_1

    .line 166
    .line 167
    :pswitch_c
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 168
    .line 169
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :pswitch_d
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 178
    .line 179
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 184
    .line 185
    goto/16 :goto_1

    .line 186
    .line 187
    :pswitch_e
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 188
    .line 189
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 194
    .line 195
    goto/16 :goto_1

    .line 196
    .line 197
    :pswitch_f
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 198
    .line 199
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 204
    .line 205
    goto/16 :goto_1

    .line 206
    .line 207
    :pswitch_10
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 208
    .line 209
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 214
    .line 215
    goto/16 :goto_1

    .line 216
    .line 217
    :pswitch_11
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 222
    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :pswitch_12
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 226
    .line 227
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 232
    .line 233
    goto/16 :goto_1

    .line 234
    .line 235
    :pswitch_13
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 236
    .line 237
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :pswitch_14
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :pswitch_15
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 258
    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :pswitch_16
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 262
    .line 263
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 268
    .line 269
    goto/16 :goto_1

    .line 270
    .line 271
    :pswitch_17
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 272
    .line 273
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 278
    .line 279
    goto/16 :goto_1

    .line 280
    .line 281
    :pswitch_18
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 282
    .line 283
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 288
    .line 289
    goto/16 :goto_1

    .line 290
    .line 291
    :pswitch_19
    invoke-static {p0, p1, v3, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_1

    .line 295
    .line 296
    :pswitch_1a
    invoke-static {p0, p1, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_1

    .line 300
    .line 301
    :pswitch_1b
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 302
    .line 303
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 308
    .line 309
    goto/16 :goto_1

    .line 310
    .line 311
    :pswitch_1c
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 312
    .line 313
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 318
    .line 319
    goto/16 :goto_1

    .line 320
    .line 321
    :pswitch_1d
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 322
    .line 323
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 328
    .line 329
    goto/16 :goto_1

    .line 330
    .line 331
    :pswitch_1e
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 332
    .line 333
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 338
    .line 339
    goto/16 :goto_1

    .line 340
    .line 341
    :pswitch_1f
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 342
    .line 343
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 348
    .line 349
    goto/16 :goto_1

    .line 350
    .line 351
    :pswitch_20
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 352
    .line 353
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 358
    .line 359
    goto/16 :goto_1

    .line 360
    .line 361
    :pswitch_21
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 362
    .line 363
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 368
    .line 369
    goto/16 :goto_1

    .line 370
    .line 371
    :pswitch_22
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 372
    .line 373
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 378
    .line 379
    goto/16 :goto_1

    .line 380
    .line 381
    :pswitch_23
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 382
    .line 383
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 388
    .line 389
    goto/16 :goto_1

    .line 390
    .line 391
    :pswitch_24
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 392
    .line 393
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 398
    .line 399
    goto/16 :goto_1

    .line 400
    .line 401
    :pswitch_25
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 402
    .line 403
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 408
    .line 409
    goto/16 :goto_1

    .line 410
    .line 411
    :pswitch_26
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 412
    .line 413
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 418
    .line 419
    goto/16 :goto_1

    .line 420
    .line 421
    :pswitch_27
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 422
    .line 423
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 428
    .line 429
    goto/16 :goto_1

    .line 430
    .line 431
    :pswitch_28
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 432
    .line 433
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 438
    .line 439
    goto/16 :goto_1

    .line 440
    .line 441
    :pswitch_29
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 442
    .line 443
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 448
    .line 449
    goto/16 :goto_1

    .line 450
    .line 451
    :pswitch_2a
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 452
    .line 453
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 454
    .line 455
    .line 456
    move-result v3

    .line 457
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 458
    .line 459
    goto/16 :goto_1

    .line 460
    .line 461
    :pswitch_2b
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 462
    .line 463
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 464
    .line 465
    .line 466
    move-result v3

    .line 467
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 468
    .line 469
    goto/16 :goto_1

    .line 470
    .line 471
    :pswitch_2c
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 472
    .line 473
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 478
    .line 479
    goto/16 :goto_1

    .line 480
    .line 481
    :pswitch_2d
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 482
    .line 483
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 488
    .line 489
    goto/16 :goto_1

    .line 490
    .line 491
    :pswitch_2e
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 492
    .line 493
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 498
    .line 499
    goto/16 :goto_1

    .line 500
    .line 501
    :pswitch_2f
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 502
    .line 503
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 508
    .line 509
    goto/16 :goto_1

    .line 510
    .line 511
    :pswitch_30
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 512
    .line 513
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 514
    .line 515
    .line 516
    move-result v3

    .line 517
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 518
    .line 519
    goto/16 :goto_1

    .line 520
    .line 521
    :pswitch_31
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 522
    .line 523
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 524
    .line 525
    .line 526
    move-result v3

    .line 527
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 528
    .line 529
    goto/16 :goto_1

    .line 530
    .line 531
    :pswitch_32
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 532
    .line 533
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 534
    .line 535
    .line 536
    move-result v3

    .line 537
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 538
    .line 539
    goto/16 :goto_1

    .line 540
    .line 541
    :pswitch_33
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 542
    .line 543
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 548
    .line 549
    goto/16 :goto_1

    .line 550
    .line 551
    :pswitch_34
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 552
    .line 553
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 558
    .line 559
    goto/16 :goto_1

    .line 560
    .line 561
    :pswitch_35
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 562
    .line 563
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 564
    .line 565
    .line 566
    move-result v3

    .line 567
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 568
    .line 569
    goto/16 :goto_1

    .line 570
    .line 571
    :pswitch_36
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 572
    .line 573
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 574
    .line 575
    .line 576
    move-result v3

    .line 577
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 578
    .line 579
    goto/16 :goto_1

    .line 580
    .line 581
    :pswitch_37
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 582
    .line 583
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 588
    .line 589
    goto :goto_1

    .line 590
    :pswitch_38
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 591
    .line 592
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 593
    .line 594
    .line 595
    move-result v3

    .line 596
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 597
    .line 598
    goto :goto_1

    .line 599
    :pswitch_39
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 600
    .line 601
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 602
    .line 603
    .line 604
    move-result v3

    .line 605
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 606
    .line 607
    goto :goto_1

    .line 608
    :pswitch_3a
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 609
    .line 610
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 611
    .line 612
    .line 613
    move-result v3

    .line 614
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 615
    .line 616
    goto :goto_1

    .line 617
    :pswitch_3b
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 618
    .line 619
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 620
    .line 621
    .line 622
    move-result v3

    .line 623
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 624
    .line 625
    goto :goto_1

    .line 626
    :pswitch_3c
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 627
    .line 628
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 629
    .line 630
    .line 631
    move-result v3

    .line 632
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 633
    .line 634
    goto :goto_1

    .line 635
    :pswitch_3d
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 636
    .line 637
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 638
    .line 639
    .line 640
    move-result v3

    .line 641
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 642
    .line 643
    goto :goto_1

    .line 644
    :pswitch_3e
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v3

    .line 648
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 649
    .line 650
    goto :goto_1

    .line 651
    :pswitch_3f
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 652
    .line 653
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 654
    .line 655
    .line 656
    move-result v3

    .line 657
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 658
    .line 659
    goto :goto_1

    .line 660
    :pswitch_40
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 661
    .line 662
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 663
    .line 664
    .line 665
    move-result v3

    .line 666
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 667
    .line 668
    goto :goto_1

    .line 669
    :pswitch_41
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 670
    .line 671
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 672
    .line 673
    .line 674
    move-result v3

    .line 675
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 676
    .line 677
    goto :goto_1

    .line 678
    :pswitch_42
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 679
    .line 680
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    .line 681
    .line 682
    .line 683
    move-result v3

    .line 684
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 685
    .line 686
    :goto_1
    :pswitch_43
    add-int/lit8 v2, v2, 0x1

    .line 687
    .line 688
    goto/16 :goto_0

    .line 689
    .line 690
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 691
    .line 692
    .line 693
    return-void

    .line 694
    nop

    .line 695
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    :pswitch_data_1
    .packed-switch 0x3d
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    :pswitch_data_2
    .packed-switch 0x45
        :pswitch_15
        :pswitch_14
        :pswitch_43
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
