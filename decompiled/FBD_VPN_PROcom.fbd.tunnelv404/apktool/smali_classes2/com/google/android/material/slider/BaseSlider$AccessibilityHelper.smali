.class Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/BaseSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityHelper"
.end annotation


# instance fields
.field private final slider:Lcom/google/android/material/slider/BaseSlider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/slider/BaseSlider<",
            "***>;"
        }
    .end annotation
.end field

.field final virtualViewBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/slider/BaseSlider<",
            "***>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 12
    .line 13
    return-void
.end method

.method private startOrEndDescription(I)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget v0, Lcom/google/android/material/R$string;->material_slider_range_end:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    if-nez p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget v0, Lcom/google/android/material/R$string;->material_slider_range_start:I

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v0, v1, [J

    .line 46
    .line 47
    const-wide v1, -0x15941413f8eb01c9L    # -4.377104463588389E204

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    aput-wide v1, v0, v3

    .line 54
    .line 55
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/slider/BaseSlider;->updateBoundsForVirtualViewId(ILandroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    .line 22
    .line 23
    float-to-int v2, p1

    .line 24
    float-to-int v3, p2

    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    return v0

    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, -0x1

    .line 36
    return p1
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 5

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    const/16 v1, 0x1000

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/16 v4, 0x2000

    .line 17
    .line 18
    if-eq p2, v1, :cond_4

    .line 19
    .line 20
    if-eq p2, v4, :cond_4

    .line 21
    .line 22
    const v1, 0x102003d

    .line 23
    .line 24
    .line 25
    if-eq p2, v1, :cond_1

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    if-eqz p3, :cond_3

    .line 29
    .line 30
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v1, v0, [J

    .line 33
    .line 34
    fill-array-data v1, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v0, v0, [J

    .line 54
    .line 55
    fill-array-data v0, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 70
    .line 71
    invoke-static {p3, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->access$500(Lcom/google/android/material/slider/BaseSlider;IF)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 78
    .line 79
    invoke-static {p2}, Lcom/google/android/material/slider/BaseSlider;->access$600(Lcom/google/android/material/slider/BaseSlider;)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/view/View;->postInvalidate()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 88
    .line 89
    .line 90
    return v3

    .line 91
    :cond_3
    :goto_0
    return v2

    .line 92
    :cond_4
    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 93
    .line 94
    const/16 v0, 0x14

    .line 95
    .line 96
    invoke-static {p3, v0}, Lcom/google/android/material/slider/BaseSlider;->access$700(Lcom/google/android/material/slider/BaseSlider;I)F

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    if-ne p2, v4, :cond_5

    .line 101
    .line 102
    neg-float p3, p3

    .line 103
    :cond_5
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-eqz p2, :cond_6

    .line 110
    .line 111
    neg-float p3, p3

    .line 112
    :cond_6
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    check-cast p2, Ljava/lang/Float;

    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    add-float/2addr p2, p3

    .line 129
    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 130
    .line 131
    invoke-virtual {p3}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-static {p2, p3, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 146
    .line 147
    invoke-static {p3, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->access$500(Lcom/google/android/material/slider/BaseSlider;IF)Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_7

    .line 152
    .line 153
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 154
    .line 155
    invoke-static {p2}, Lcom/google/android/material/slider/BaseSlider;->access$600(Lcom/google/android/material/slider/BaseSlider;)V

    .line 156
    .line 157
    .line 158
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 159
    .line 160
    invoke-virtual {p2}, Landroid/view/View;->postInvalidate()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 164
    .line 165
    .line 166
    return v3

    .line 167
    :cond_7
    return v2

    .line 168
    nop

    .line 169
    :array_0
    .array-data 8
        0x2b11bbbb28aa7e9aL
        -0x11bbe9a18c82f023L    # -1.4522121694822922E223
        0x7af1b4d5272075daL    # 1.6456051663936825E284
        0x14a64914df45ca2eL    # 3.389338245394957E-209
        -0x6022794d3a2ae7e3L    # -3.44087815175269E-155
        0x586a1df6342f3447L    # 8.2325095519652E117
        0x37fb886bc2bed3f8L    # 5.056994017074355E-39
        -0xc64198995ec9b7L
        -0x4295f94ea20ba8b7L    # -7.397074996841323E-13
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
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
    :array_1
    .array-data 8
        0x149d217e2b5a680eL
        0x1259d68443c010dfL
        -0x1ae9e490018e9738L    # -8.958406035909778E178
        -0x1a716adf8284ea8dL    # -1.5862833995718073E181
        -0xa1b3b4652ae26bL
        -0x257e2a46294a17c1L    # -9.658241214470232E127
        0x6b0c478a43c9e762L
        0x51c7d6e45b753153L    # 9.262420688207838E85
        -0x426ae032a07438efL    # -4.803093246833572E-12
    .end array-data
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SET_PROGRESS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 4
    .line 5
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Ljava/lang/Float;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 31
    .line 32
    invoke-virtual {v5}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 37
    .line 38
    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    cmpl-float v6, v3, v4

    .line 45
    .line 46
    if-lez v6, :cond_0

    .line 47
    .line 48
    const/16 v6, 0x2000

    .line 49
    .line 50
    invoke-virtual {p2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 51
    .line 52
    .line 53
    :cond_0
    cmpg-float v6, v3, v5

    .line 54
    .line 55
    if-gez v6, :cond_1

    .line 56
    .line 57
    const/16 v6, 0x1000

    .line 58
    .line 59
    invoke-virtual {p2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-static {v0, v4, v5, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->obtain(IFFF)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V

    .line 67
    .line 68
    .line 69
    const-class v4, Landroid/widget/SeekBar;

    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 84
    .line 85
    invoke-virtual {v5}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    if-eqz v5, :cond_2

    .line 90
    .line 91
    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 92
    .line 93
    invoke-virtual {v5}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v6, v1, [J

    .line 103
    .line 104
    fill-array-data v6, :array_0

    .line 105
    .line 106
    .line 107
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    :cond_2
    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 118
    .line 119
    invoke-static {v5, v3}, Lcom/google/android/material/slider/BaseSlider;->access$400(Lcom/google/android/material/slider/BaseSlider;F)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 124
    .line 125
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    sget v6, Lcom/google/android/material/R$string;->material_slider_value:I

    .line 130
    .line 131
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-le v2, v0, :cond_3

    .line 140
    .line 141
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->startOrEndDescription(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    :cond_3
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 146
    .line 147
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    new-array v7, v1, [J

    .line 150
    .line 151
    fill-array-data v7, :array_1

    .line 152
    .line 153
    .line 154
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    new-array v1, v1, [Ljava/lang/Object;

    .line 162
    .line 163
    const/4 v7, 0x0

    .line 164
    aput-object v5, v1, v7

    .line 165
    .line 166
    aput-object v3, v1, v0

    .line 167
    .line 168
    invoke-static {v2, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 183
    .line 184
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    .line 185
    .line 186
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/slider/BaseSlider;->updateBoundsForVirtualViewId(ILandroid/graphics/Rect;)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    .line 190
    .line 191
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :array_0
    .array-data 8
        -0x466ec283f911283bL    # -2.125015480159913E-31
        -0x59af97938d98fdd8L    # -3.878242147502727E-124
    .end array-data

    .line 196
    .line 197
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
    :array_1
    .array-data 8
        -0x6e5763df396d54b3L
        0x6cbdb3b5a02f89dbL    # 6.399447231514763E215
    .end array-data
.end method
