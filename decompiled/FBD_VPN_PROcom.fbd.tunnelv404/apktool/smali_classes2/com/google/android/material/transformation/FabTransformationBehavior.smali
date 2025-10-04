.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private dependencyOriginalTranslationX:F

.field private dependencyOriginalTranslationY:F

.field private final tmpArray:[I

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF1:Landroid/graphics/RectF;

.field private final tmpRectF2:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    const/4 p1, 0x2

    .line 10
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    return-void
.end method

.method private calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget v0, Lcom/google/android/material/R$id;->mtrl_child_content_container:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/transformation/TransformationChildLayout;

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    instance-of v0, p1, Lcom/google/android/material/transformation/TransformationChildCard;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_2
    :goto_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method private calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;Lcom/google/android/material/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/animation/MotionTiming;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/animation/MotionTiming;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2, p3, p5, p7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-direct {p0, p2, p4, p6, p8}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-object p4, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p1, p4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    iget-object p5, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 15
    .line 16
    invoke-virtual {p5, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    iget-object p4, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 20
    .line 21
    invoke-direct {p0, p1, p4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p4, p3, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p4, p5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p9, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private calculateDependencyWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 7
    .line 8
    invoke-virtual {p2, p1, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;
    .locals 3
    .param p4    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/material/animation/MotionTiming;",
            "Lcom/google/android/material/animation/MotionTiming;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x0

    .line 4
    cmpl-float p1, p1, v2

    .line 5
    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    cmpl-float p1, p2, v2

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-eqz p3, :cond_1

    .line 14
    .line 15
    cmpg-float p2, p2, v2

    .line 16
    .line 17
    if-ltz p2, :cond_2

    .line 18
    .line 19
    :cond_1
    if-nez p3, :cond_3

    .line 20
    .line 21
    if-lez p1, :cond_3

    .line 22
    .line 23
    :cond_2
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 24
    .line 25
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array p3, v1, [J

    .line 28
    .line 29
    fill-array-data p3, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 44
    .line 45
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array p4, v1, [J

    .line 48
    .line 49
    fill-array-data p4, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 65
    .line 66
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array p3, v0, [J

    .line 69
    .line 70
    fill-array-data p3, :array_2

    .line 71
    .line 72
    .line 73
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 85
    .line 86
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array p4, v0, [J

    .line 89
    .line 90
    fill-array-data p4, :array_3

    .line 91
    .line 92
    .line 93
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    :goto_0
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 106
    .line 107
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array p3, v1, [J

    .line 110
    .line 111
    fill-array-data p3, :array_4

    .line 112
    .line 113
    .line 114
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 126
    .line 127
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    new-array p4, v1, [J

    .line 130
    .line 131
    fill-array-data p4, :array_5

    .line 132
    .line 133
    .line 134
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    :goto_1
    new-instance p3, Landroid/util/Pair;

    .line 146
    .line 147
    invoke-direct {p3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    return-object p3

    .line 151
    :array_0
    .array-data 8
        -0x169dbe873048b9a0L    # -4.366835325094569E199
        -0x5ec21446bf21e269L
        0x41a7ef62a1624712L    # 2.0078216069194847E8
        0x1db7944e99b8d2c1L
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_1
    .array-data 8
        -0x16c7a6058f1f7f8cL    # -7.281191868479008E198
        0x4ed0607f871a22d4L    # 4.521181066700608E71
        -0x3de9d98bf7c25751L    # -2.378360475141473E10
        -0x42c7cf1abb9ce4a9L    # -8.59436907024014E-14
    .end array-data

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
    :array_2
    .array-data 8
        -0x4a059a30a053c8e4L    # -1.1288772642979857E-48
        -0x3071c57cff9093daL    # -1.7090958409700902E75
        -0x6d867859654d0da2L
        -0x1e20678ddf9cc9d8L    # -2.842907845012027E163
        -0x3b634b3320a828fcL    # -3.389035951707558E22
    .end array-data

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
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_3
    .array-data 8
        0x47537d14ee78c472L    # 4.047623995171984E35
        -0x11268fc2d1036c6fL    # -9.416014762693789E225
        -0x5beec5dcd4bb7c0fL    # -5.925351305843158E-135
        0xe884d8d30af3f3L
        -0x6c3d83dec9034c5L    # -9.748017128386388E275
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
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
    :array_4
    .array-data 8
        0x3d09d6535409fe28L    # 1.1474025724482297E-14
        0x475b40878ba76e83L    # 5.660033136713693E35
        -0x6f94443d02107f50L    # -1.429081914258045E-229
        -0x6525fb6c2b583621L
    .end array-data

    :array_5
    .array-data 8
        0x1b6d6aca400f02f1L
        -0x1f17fdb0d4cf9ca0L    # -6.592682715125049E158
        -0x7cf9d63e440df11bL    # -4.337754748909138E-294
        0x70ad462abc1729ceL    # 5.817414874739582E234
    .end array-data
.end method

.method private calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/animation/Positioning;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateDependencyWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    neg-float p1, p1

    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget p2, v1, Landroid/graphics/RectF;->left:F

    .line 25
    .line 26
    sub-float/2addr p1, p2

    .line 27
    return p1
.end method

.method private calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/animation/Positioning;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateDependencyWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 p2, 0x0

    .line 16
    neg-float p1, p1

    .line 17
    invoke-virtual {v1, p2, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget p2, v1, Landroid/graphics/RectF;->top:F

    .line 25
    .line 26
    sub-float/2addr p1, p2

    .line 27
    return p1
.end method

.method private calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/animation/Positioning;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateDependencyWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 9
    .line 10
    .line 11
    iget p1, p3, Lcom/google/android/material/animation/Positioning;->gravity:I

    .line 12
    .line 13
    and-int/lit8 p1, p1, 0x7

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    if-eq p1, p2, :cond_2

    .line 17
    .line 18
    const/4 p2, 0x3

    .line 19
    if-eq p1, p2, :cond_1

    .line 20
    .line 21
    const/4 p2, 0x5

    .line 22
    if-eq p1, p2, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget p1, v1, Landroid/graphics/RectF;->right:F

    .line 27
    .line 28
    iget p2, v0, Landroid/graphics/RectF;->right:F

    .line 29
    .line 30
    :goto_0
    sub-float/2addr p1, p2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget p1, v1, Landroid/graphics/RectF;->left:F

    .line 33
    .line 34
    iget p2, v0, Landroid/graphics/RectF;->left:F

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    goto :goto_0

    .line 46
    :goto_1
    iget p2, p3, Lcom/google/android/material/animation/Positioning;->xAdjustment:F

    .line 47
    .line 48
    add-float/2addr p1, p2

    .line 49
    return p1
.end method

.method private calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/animation/Positioning;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateDependencyWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 9
    .line 10
    .line 11
    iget p1, p3, Lcom/google/android/material/animation/Positioning;->gravity:I

    .line 12
    .line 13
    and-int/lit8 p1, p1, 0x70

    .line 14
    .line 15
    const/16 p2, 0x10

    .line 16
    .line 17
    if-eq p1, p2, :cond_2

    .line 18
    .line 19
    const/16 p2, 0x30

    .line 20
    .line 21
    if-eq p1, p2, :cond_1

    .line 22
    .line 23
    const/16 p2, 0x50

    .line 24
    .line 25
    if-eq p1, p2, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget p1, v1, Landroid/graphics/RectF;->bottom:F

    .line 30
    .line 31
    iget p2, v0, Landroid/graphics/RectF;->bottom:F

    .line 32
    .line 33
    :goto_0
    sub-float/2addr p1, p2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget p1, v1, Landroid/graphics/RectF;->top:F

    .line 36
    .line 37
    iget p2, v0, Landroid/graphics/RectF;->top:F

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    goto :goto_0

    .line 49
    :goto_1
    iget p2, p3, Lcom/google/android/material/animation/Positioning;->yAdjustment:F

    .line 50
    .line 51
    add-float/2addr p1, p2

    .line 52
    return p1
.end method

.method private calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F
    .locals 8
    .param p1    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/animation/MotionTiming;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p2}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iget-object p1, p1, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 10
    .line 11
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v5, 0x3

    .line 14
    new-array v5, v5, [J

    .line 15
    .line 16
    fill-array-data v5, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {p1, v4}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    add-long/2addr v6, v4

    .line 39
    const-wide/16 v4, 0x11

    .line 40
    .line 41
    add-long/2addr v6, v4

    .line 42
    sub-long/2addr v6, v0

    .line 43
    long-to-float p1, v6

    .line 44
    long-to-float v0, v2

    .line 45
    div-float/2addr p1, v0

    .line 46
    invoke-virtual {p2}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-static {p3, p4, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :array_0
    .array-data 8
        -0x25ae0a1de5475874L    # -1.2157832586146923E127
        0x292c57123e7635caL
        -0x54a3a9e527e254ebL    # -8.097021865439579E-100
    .end array-data
.end method

.method private calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    aget v1, v0, v1

    .line 22
    .line 23
    int-to-float v1, v1

    .line 24
    const/4 v2, 0x1

    .line 25
    aget v0, v0, v2

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    neg-float v0, v0

    .line 36
    float-to-int v0, v0

    .line 37
    int-to-float v0, v0

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    neg-float p1, p1

    .line 43
    float-to-int p1, p1

    .line 44
    int-to-float p1, p1

    .line 45
    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p5    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 p7, 0x1

    .line 3
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    instance-of v0, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-nez p2, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    const/4 v0, 0x0

    .line 25
    if-eqz p3, :cond_4

    .line 26
    .line 27
    if-nez p4, :cond_3

    .line 28
    .line 29
    sget-object p3, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    invoke-virtual {p3, p2, p4}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    sget-object p3, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    .line 39
    .line 40
    new-array p4, p7, [F

    .line 41
    .line 42
    const/high16 p7, 0x3f800000    # 1.0f

    .line 43
    .line 44
    aput p7, p4, p1

    .line 45
    .line 46
    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    sget-object p3, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    .line 52
    .line 53
    new-array p4, p7, [F

    .line 54
    .line 55
    aput v0, p4, p1

    .line 56
    .line 57
    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_0
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 62
    .line 63
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    const/4 p4, 0x3

    .line 66
    new-array p4, p4, [J

    .line 67
    .line 68
    fill-array-data p4, :array_0

    .line 69
    .line 70
    .line 71
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2, p1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :array_0
    .array-data 8
        0x526044b7711d56fdL    # 6.47253225997979E88
        0x4097dd2c215fca57L    # 1527.2930960623978
        -0x3001050228b48789L    # -2.242055867176774E77
    .end array-data
.end method

.method private createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of p7, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 2
    .line 3
    if-nez p7, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    check-cast p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->getBackgroundTint(Landroid/view/View;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const p7, 0xffffff

    .line 13
    .line 14
    .line 15
    and-int/2addr p7, p1

    .line 16
    if-eqz p3, :cond_2

    .line 17
    .line 18
    if-nez p4, :cond_1

    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    sget-object p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    .line 24
    .line 25
    filled-new-array {p7}, [I

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-static {p2, p1, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget-object p3, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    .line 35
    .line 36
    filled-new-array {p1}, [I

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p2, p3, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_0
    invoke-static {}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->getInstance()Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 52
    .line 53
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    const/4 p4, 0x2

    .line 56
    new-array p4, p4, [J

    .line 57
    .line 58
    fill-array-data p4, :array_0

    .line 59
    .line 60
    .line 61
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2, p1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :array_0
    .array-data 8
        0x3f9eeedb164f8f19L    # 0.03020803760217836
        -0x6785f2cc2bf7cc4fL    # -9.136012680831803E-191
    .end array-data
.end method

.method private createDependencyTranslationAnimation(Landroid/view/View;Landroid/view/View;ZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Z",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    .line 10
    .line 11
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    iget-object v3, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Lcom/google/android/material/animation/MotionTiming;

    .line 22
    .line 23
    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p4, Lcom/google/android/material/animation/MotionTiming;

    .line 26
    .line 27
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 28
    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 33
    .line 34
    :goto_0
    new-array v5, v1, [F

    .line 35
    .line 36
    aput v2, v5, v0

    .line 37
    .line 38
    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 43
    .line 44
    if-eqz p3, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget p2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 48
    .line 49
    :goto_1
    new-array p3, v1, [F

    .line 50
    .line 51
    aput p2, p3, v0

    .line 52
    .line 53
    invoke-static {p1, v4, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v3, v2}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p4, p1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p7, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    sub-float/2addr v1, p1

    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    neg-float p1, v1

    .line 17
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object p1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 21
    .line 22
    new-array p3, v0, [F

    .line 23
    .line 24
    const/4 p4, 0x0

    .line 25
    aput p4, p3, p7

    .line 26
    .line 27
    invoke-static {p2, p1, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object p1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 33
    .line 34
    neg-float p3, v1

    .line 35
    new-array p4, v0, [F

    .line 36
    .line 37
    aput p3, p4, p7

    .line 38
    .line 39
    invoke-static {p2, p1, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 44
    .line 45
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    const/4 p4, 0x3

    .line 48
    new-array p4, p4, [J

    .line 49
    .line 50
    fill-array-data p4, :array_0

    .line 51
    .line 52
    .line 53
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p2, p1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :array_0
    .array-data 8
        0x1f4f593462cbeaacL    # 7.135237525332988E-158
        0x556526606bd9af74L
        -0x3c96c1c78cd8a7d6L    # -5.6842292710523216E16
    .end array-data
.end method

.method private createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V
    .locals 17
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "FF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move-object/from16 v9, p5

    .line 8
    .line 9
    instance-of v1, v8, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    move-object v13, v8

    .line 15
    check-cast v13, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 16
    .line 17
    iget-object v1, v9, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    .line 18
    .line 19
    invoke-direct {v12, v0, v8, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, v9, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    .line 24
    .line 25
    invoke-direct {v12, v0, v8, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 30
    .line 31
    iget-object v2, v12, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, v12, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    int-to-float v0, v0

    .line 43
    const/high16 v2, 0x40000000    # 2.0f

    .line 44
    .line 45
    div-float v11, v0, v2

    .line 46
    .line 47
    iget-object v0, v9, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 48
    .line 49
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v3, 0x3

    .line 52
    new-array v3, v3, [J

    .line 53
    .line 54
    fill-array-data v3, :array_0

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 65
    .line 66
    .line 67
    move-result-object v14

    .line 68
    if-eqz p3, :cond_3

    .line 69
    .line 70
    if-nez p4, :cond_1

    .line 71
    .line 72
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 73
    .line 74
    invoke-direct {v0, v1, v10, v11}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v13, v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    if-eqz p4, :cond_2

    .line 81
    .line 82
    invoke-interface {v13}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 87
    .line 88
    move v11, v0

    .line 89
    :cond_2
    const/4 v4, 0x0

    .line 90
    const/4 v5, 0x0

    .line 91
    move v2, v1

    .line 92
    move v3, v10

    .line 93
    move/from16 v6, p6

    .line 94
    .line 95
    move/from16 v7, p7

    .line 96
    .line 97
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-static {v13, v1, v10, v0}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    new-instance v0, Lcom/google/android/material/transformation/FabTransformationBehavior$4;

    .line 106
    .line 107
    invoke-direct {v0, v12, v13}, Lcom/google/android/material/transformation/FabTransformationBehavior$4;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v9, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    .line 114
    .line 115
    .line 116
    move-result-wide v2

    .line 117
    float-to-int v4, v1

    .line 118
    float-to-int v5, v10

    .line 119
    move-object/from16 v0, p0

    .line 120
    .line 121
    move-object/from16 v1, p2

    .line 122
    .line 123
    move v6, v11

    .line 124
    move-object/from16 v7, p8

    .line 125
    .line 126
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_3
    invoke-interface {v13}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget v6, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 135
    .line 136
    invoke-static {v13, v1, v10, v11}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    .line 137
    .line 138
    .line 139
    move-result-object v15

    .line 140
    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    .line 141
    .line 142
    .line 143
    move-result-wide v2

    .line 144
    float-to-int v7, v1

    .line 145
    float-to-int v10, v10

    .line 146
    move-object/from16 v0, p0

    .line 147
    .line 148
    move-object/from16 v1, p2

    .line 149
    .line 150
    move v4, v7

    .line 151
    move v5, v10

    .line 152
    move/from16 v16, v7

    .line 153
    .line 154
    move-object/from16 v7, p8

    .line 155
    .line 156
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    .line 160
    .line 161
    .line 162
    move-result-wide v2

    .line 163
    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    .line 164
    .line 165
    .line 166
    move-result-wide v4

    .line 167
    iget-object v0, v9, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/google/android/material/animation/MotionSpec;->getTotalDuration()J

    .line 170
    .line 171
    .line 172
    move-result-wide v6

    .line 173
    move-object/from16 v0, p0

    .line 174
    .line 175
    move/from16 v8, v16

    .line 176
    .line 177
    move v9, v10

    .line 178
    move v10, v11

    .line 179
    move-object/from16 v11, p8

    .line 180
    .line 181
    invoke-direct/range {v0 .. v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V

    .line 182
    .line 183
    .line 184
    move-object v9, v15

    .line 185
    :goto_0
    invoke-virtual {v14, v9}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 186
    .line 187
    .line 188
    move-object/from16 v0, p8

    .line 189
    .line 190
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    invoke-static {v13}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularRevealListener(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    move-object/from16 v1, p9

    .line 198
    .line 199
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    return-void

    :array_0
    .array-data 8
        -0x6fbd391ef6943bcfL    # -2.41889242800982E-230
        -0x45a82ea6445253e9L    # -1.2024903626633103E-27
        -0x5a428f4052f36ae0L
    .end array-data
.end method

.method private createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p5    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    instance-of v0, p1, Landroid/widget/ImageView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    move-object v0, p2

    .line 11
    check-cast v0, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 12
    .line 13
    check-cast p1, Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    const/16 v1, 0xff

    .line 26
    .line 27
    if-eqz p3, :cond_3

    .line 28
    .line 29
    if-nez p4, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    sget-object p3, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    .line 35
    .line 36
    const/4 p4, 0x0

    .line 37
    filled-new-array {p4}, [I

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    sget-object p3, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    .line 47
    .line 48
    filled-new-array {v1}, [I

    .line 49
    .line 50
    .line 51
    move-result-object p4

    .line 52
    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    :goto_0
    new-instance p4, Lcom/google/android/material/transformation/FabTransformationBehavior$2;

    .line 57
    .line 58
    invoke-direct {p4, p0, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior$2;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 65
    .line 66
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    const/4 p5, 0x2

    .line 69
    new-array p5, p5, [J

    .line 70
    .line 71
    fill-array-data p5, :array_0

    .line 72
    .line 73
    .line 74
    invoke-direct {p4, p5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p4

    .line 81
    invoke-virtual {p2, p4}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {p6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    new-instance p2, Lcom/google/android/material/transformation/FabTransformationBehavior$3;

    .line 92
    .line 93
    invoke-direct {p2, p0, v0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior$3;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;Landroid/graphics/drawable/Drawable;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p7, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_1
    return-void

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        0xfb7ea888a2dee8dL    # 6.017478669525414E-233
        -0x16c36c1069b82926L    # -8.544901899797946E198
    .end array-data
.end method

.method private createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V
    .locals 0
    .param p11    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JJJIIF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 1
    add-long/2addr p2, p4

    .line 2
    cmp-long p4, p2, p6

    .line 3
    .line 4
    if-gez p4, :cond_0

    .line 5
    .line 6
    invoke-static {p1, p8, p9, p10, p10}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 11
    .line 12
    .line 13
    sub-long/2addr p6, p2

    .line 14
    invoke-virtual {p1, p6, p7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 15
    .line 16
    .line 17
    invoke-interface {p11, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V
    .locals 3
    .param p7    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JIIF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-lez v2, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p4, p5, p6, p6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 15
    .line 16
    .line 17
    invoke-interface {p7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 16
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move/from16 v2, p3

    .line 8
    .line 9
    move-object/from16 v3, p5

    .line 10
    .line 11
    move-object/from16 v11, p6

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    iget-object v6, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    .line 16
    .line 17
    invoke-direct {v10, v0, v1, v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    iget-object v7, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    .line 22
    .line 23
    invoke-direct {v10, v0, v1, v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-direct {v10, v6, v0, v2, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v12, v8

    .line 34
    check-cast v12, Lcom/google/android/material/animation/MotionTiming;

    .line 35
    .line 36
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v13, v7

    .line 39
    check-cast v13, Lcom/google/android/material/animation/MotionTiming;

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    if-nez p4, :cond_0

    .line 44
    .line 45
    neg-float v2, v6

    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 47
    .line 48
    .line 49
    neg-float v2, v0

    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 51
    .line 52
    .line 53
    :cond_0
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 54
    .line 55
    const/4 v7, 0x0

    .line 56
    new-array v8, v5, [F

    .line 57
    .line 58
    aput v7, v8, v4

    .line 59
    .line 60
    invoke-static {v1, v2, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 61
    .line 62
    .line 63
    move-result-object v14

    .line 64
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 65
    .line 66
    new-array v5, v5, [F

    .line 67
    .line 68
    aput v7, v5, v4

    .line 69
    .line 70
    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 71
    .line 72
    .line 73
    move-result-object v15

    .line 74
    neg-float v5, v6

    .line 75
    neg-float v6, v0

    .line 76
    const/4 v8, 0x0

    .line 77
    move-object/from16 v0, p0

    .line 78
    .line 79
    move-object/from16 v1, p2

    .line 80
    .line 81
    move-object/from16 v2, p5

    .line 82
    .line 83
    move-object v3, v12

    .line 84
    move-object v4, v13

    .line 85
    move-object/from16 v9, p8

    .line 86
    .line 87
    invoke-direct/range {v0 .. v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;Lcom/google/android/material/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 92
    .line 93
    neg-float v3, v6

    .line 94
    new-array v6, v5, [F

    .line 95
    .line 96
    aput v3, v6, v4

    .line 97
    .line 98
    invoke-static {v1, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 103
    .line 104
    neg-float v0, v0

    .line 105
    new-array v3, v5, [F

    .line 106
    .line 107
    aput v0, v3, v4

    .line 108
    .line 109
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 110
    .line 111
    .line 112
    move-result-object v15

    .line 113
    :goto_0
    invoke-virtual {v12, v14}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v13, v15}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method private getBackgroundTint(Landroid/view/View;)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method private toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/view/ViewGroup;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method


# virtual methods
.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    instance-of p1, p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-ne p1, p2, :cond_1

    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 29
    :cond_1
    return v0

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/16 p3, 0xc

    .line 35
    .line 36
    new-array p3, p3, [J

    .line 37
    .line 38
    fill-array-data p3, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        -0xc502bf957cec92bL
        0xd3dbdb75229cc1bL
        0x2c7c126cf2f466f2L    # 2.102782420182181E-94
        -0x5d1ff8d68b7a5f5aL
        -0x1e7d9e6c28fa45f4L    # -5.168453985554646E161
        0xec80e570331b5e7L
        -0x52332d36184d69dL    # -6.691915797843177E283
        0x3e608d0ae4f4fbfcL    # 3.082854204771945E-8
        0x7fc929b21260b974L    # 3.533994123617945E307
        -0x7789c62d03389e97L    # -6.731358922748471E-268
        -0x50eec2bc3222c418L    # -5.679383756091375E-82
        0x18ee891b226fee4fL
    .end array-data
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 1
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x50

    .line 6
    .line 7
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 15
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object v10, p0

    .line 2
    move/from16 v11, p3

    .line 3
    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;

    .line 9
    .line 10
    .line 11
    move-result-object v12

    .line 12
    if-eqz v11, :cond_0

    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, v10, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, v10, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 25
    .line 26
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v14, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    move-object v0, p0

    .line 37
    move-object/from16 v1, p1

    .line 38
    .line 39
    move-object/from16 v2, p2

    .line 40
    .line 41
    move/from16 v3, p3

    .line 42
    .line 43
    move/from16 v4, p4

    .line 44
    .line 45
    move-object v5, v12

    .line 46
    move-object v6, v13

    .line 47
    move-object v7, v14

    .line 48
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    iget-object v9, v10, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 52
    .line 53
    move-object v0, p0

    .line 54
    move-object/from16 v1, p1

    .line 55
    .line 56
    move-object/from16 v2, p2

    .line 57
    .line 58
    move/from16 v3, p3

    .line 59
    .line 60
    move/from16 v4, p4

    .line 61
    .line 62
    move-object v5, v12

    .line 63
    move-object v6, v13

    .line 64
    move-object v7, v14

    .line 65
    move-object v8, v9

    .line 66
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    move-object v4, v12

    .line 78
    move-object v5, v13

    .line 79
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createDependencyTranslationAnimation(Landroid/view/View;Landroid/view/View;ZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    move/from16 v4, p4

    .line 83
    .line 84
    move-object v5, v12

    .line 85
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 86
    .line 87
    .line 88
    move v6, v8

    .line 89
    move v7, v9

    .line 90
    move-object v8, v13

    .line 91
    move-object v9, v14

    .line 92
    invoke-direct/range {v0 .. v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V

    .line 93
    .line 94
    .line 95
    move-object v6, v13

    .line 96
    move-object v7, v14

    .line 97
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 98
    .line 99
    .line 100
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 104
    .line 105
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v13}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    new-instance v1, Lcom/google/android/material/transformation/FabTransformationBehavior$1;

    .line 112
    .line 113
    move-object/from16 v2, p1

    .line 114
    .line 115
    move-object/from16 v3, p2

    .line 116
    .line 117
    invoke-direct {v1, p0, v11, v3, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior$1;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    const/4 v2, 0x0

    .line 128
    :goto_0
    if-ge v2, v1, :cond_1

    .line 129
    .line 130
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 135
    .line 136
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v2, v2, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    return-object v0
.end method

.method public abstract onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
.end method
