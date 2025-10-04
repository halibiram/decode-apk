.class public Landroidx/camera/core/internal/ViewPorts;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static calculateViewPortRects(Landroid/graphics/Rect;ZLandroid/util/Rational;IIILjava/util/Map;)Ljava/util/Map;
    .locals 8
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Rational;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Z",
            "Landroid/util/Rational;",
            "III",
            "Ljava/util/Map<",
            "Landroidx/camera/core/UseCase;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;)",
            "Ljava/util/Map<",
            "Landroidx/camera/core/UseCase;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    const-string v1, "Cannot compute viewport crop rects zero sized sensor rect."

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/graphics/RectF;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, Landroid/graphics/RectF;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result p6

    .line 48
    if-eqz p6, :cond_1

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p6

    .line 54
    check-cast p6, Ljava/util/Map$Entry;

    .line 55
    .line 56
    new-instance v3, Landroid/graphics/Matrix;

    .line 57
    .line 58
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v4, Landroid/graphics/RectF;

    .line 62
    .line 63
    invoke-interface {p6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Landroidx/camera/core/impl/StreamSpec;

    .line 68
    .line 69
    invoke-virtual {v5}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    int-to-float v5, v5

    .line 78
    invoke-interface {p6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Landroidx/camera/core/impl/StreamSpec;

    .line 83
    .line 84
    invoke-virtual {v6}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    int-to-float v6, v6

    .line 93
    const/4 v7, 0x0

    .line 94
    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 95
    .line 96
    .line 97
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 98
    .line 99
    invoke-virtual {v3, v4, v0, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 100
    .line 101
    .line 102
    invoke-interface {p6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p6

    .line 106
    check-cast p6, Landroidx/camera/core/UseCase;

    .line 107
    .line 108
    invoke-virtual {v1, p6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    new-instance p6, Landroid/graphics/RectF;

    .line 112
    .line 113
    invoke-direct {p6}, Landroid/graphics/RectF;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, p6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, p6}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    invoke-static {p3, p2}, Landroidx/camera/core/internal/utils/ImageUtil;->getRotatedAspectRatio(ILandroid/util/Rational;)Landroid/util/Rational;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    move v4, p4

    .line 128
    move v5, p1

    .line 129
    move v6, p5

    .line 130
    move v7, p3

    .line 131
    invoke-static/range {v2 .. v7}, Landroidx/camera/core/internal/ViewPorts;->getScaledRect(Landroid/graphics/RectF;Landroid/util/Rational;IZII)Landroid/graphics/RectF;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    new-instance p1, Ljava/util/HashMap;

    .line 136
    .line 137
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 138
    .line 139
    .line 140
    new-instance p2, Landroid/graphics/RectF;

    .line 141
    .line 142
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 143
    .line 144
    .line 145
    new-instance p3, Landroid/graphics/Matrix;

    .line 146
    .line 147
    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 151
    .line 152
    .line 153
    move-result-object p4

    .line 154
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object p4

    .line 158
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result p5

    .line 162
    if-eqz p5, :cond_2

    .line 163
    .line 164
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p5

    .line 168
    check-cast p5, Ljava/util/Map$Entry;

    .line 169
    .line 170
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p6

    .line 174
    check-cast p6, Landroid/graphics/Matrix;

    .line 175
    .line 176
    invoke-virtual {p6, p3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3, p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 180
    .line 181
    .line 182
    new-instance p6, Landroid/graphics/Rect;

    .line 183
    .line 184
    invoke-direct {p6}, Landroid/graphics/Rect;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, p6}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p5

    .line 194
    check-cast p5, Landroidx/camera/core/UseCase;

    .line 195
    .line 196
    invoke-virtual {p1, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_2
    return-object p1
.end method

.method private static correctStartOrEnd(ZILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v2, 0x0

    .line 10
    :goto_0
    const/16 v3, 0x5a

    .line 11
    .line 12
    if-ne p1, v3, :cond_1

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 v4, 0x0

    .line 19
    :goto_1
    if-nez v2, :cond_f

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    goto/16 :goto_a

    .line 24
    .line 25
    :cond_2
    if-nez p1, :cond_3

    .line 26
    .line 27
    if-eqz p0, :cond_3

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    goto :goto_2

    .line 31
    :cond_3
    const/4 v2, 0x0

    .line 32
    :goto_2
    const/16 v4, 0x10e

    .line 33
    .line 34
    if-ne p1, v4, :cond_4

    .line 35
    .line 36
    if-nez p0, :cond_4

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    goto :goto_3

    .line 40
    :cond_4
    const/4 v5, 0x0

    .line 41
    :goto_3
    if-nez v2, :cond_e

    .line 42
    .line 43
    if-eqz v5, :cond_5

    .line 44
    .line 45
    goto :goto_9

    .line 46
    :cond_5
    if-ne p1, v3, :cond_6

    .line 47
    .line 48
    if-nez p0, :cond_6

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    goto :goto_4

    .line 52
    :cond_6
    const/4 v2, 0x0

    .line 53
    :goto_4
    const/16 v3, 0xb4

    .line 54
    .line 55
    if-ne p1, v3, :cond_7

    .line 56
    .line 57
    if-eqz p0, :cond_7

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    goto :goto_5

    .line 61
    :cond_7
    const/4 v5, 0x0

    .line 62
    :goto_5
    if-nez v2, :cond_d

    .line 63
    .line 64
    if-eqz v5, :cond_8

    .line 65
    .line 66
    goto :goto_8

    .line 67
    :cond_8
    if-ne p1, v3, :cond_9

    .line 68
    .line 69
    if-nez p0, :cond_9

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    goto :goto_6

    .line 73
    :cond_9
    const/4 v2, 0x0

    .line 74
    :goto_6
    if-ne p1, v4, :cond_a

    .line 75
    .line 76
    if-eqz p0, :cond_a

    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    :cond_a
    if-nez v2, :cond_c

    .line 80
    .line 81
    if-eqz v0, :cond_b

    .line 82
    .line 83
    goto :goto_7

    .line 84
    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    new-instance p3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v0, "Invalid argument: mirrored "

    .line 89
    .line 90
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p0, " rotation "

    .line 97
    .line 98
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p2

    .line 112
    :cond_c
    :goto_7
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    invoke-static {p3, p0}, Landroidx/camera/core/internal/ViewPorts;->flipVertically(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-static {p0, p1}, Landroidx/camera/core/internal/ViewPorts;->flipHorizontally(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :cond_d
    :goto_8
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    invoke-static {p3, p0}, Landroidx/camera/core/internal/ViewPorts;->flipVertically(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0

    .line 138
    :cond_e
    :goto_9
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    invoke-static {p3, p0}, Landroidx/camera/core/internal/ViewPorts;->flipHorizontally(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :cond_f
    :goto_a
    return-object p3
.end method

.method private static flipHorizontally(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    iget v1, p0, Landroid/graphics/RectF;->right:F

    .line 4
    .line 5
    invoke-static {v1, p1}, Landroidx/camera/core/internal/ViewPorts;->flipX(FF)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Landroid/graphics/RectF;->top:F

    .line 10
    .line 11
    iget v3, p0, Landroid/graphics/RectF;->left:F

    .line 12
    .line 13
    invoke-static {v3, p1}, Landroidx/camera/core/internal/ViewPorts;->flipX(FF)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 18
    .line 19
    invoke-direct {v0, v1, v2, p1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method private static flipVertically(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    iget v1, p0, Landroid/graphics/RectF;->left:F

    .line 4
    .line 5
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 6
    .line 7
    invoke-static {v2, p1}, Landroidx/camera/core/internal/ViewPorts;->flipY(FF)F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget v3, p0, Landroid/graphics/RectF;->right:F

    .line 12
    .line 13
    iget p0, p0, Landroid/graphics/RectF;->top:F

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroidx/camera/core/internal/ViewPorts;->flipY(FF)F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method private static flipX(FF)F
    .locals 0

    add-float/2addr p1, p1

    sub-float/2addr p1, p0

    return p1
.end method

.method private static flipY(FF)F
    .locals 0

    add-float/2addr p1, p1

    sub-float/2addr p1, p0

    return p1
.end method

.method public static getScaledRect(Landroid/graphics/RectF;Landroid/util/Rational;IZII)Landroid/graphics/RectF;
    .locals 4
    .param p0    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/Rational;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/graphics/RectF;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    int-to-float p1, p1

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v1, v3, v3, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 24
    .line 25
    .line 26
    if-eqz p2, :cond_3

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    if-eq p2, p1, :cond_2

    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    if-ne p2, p1, :cond_1

    .line 33
    .line 34
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    .line 35
    .line 36
    invoke-virtual {v0, v1, p0, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p1, "Unexpected scale type: "

    .line 43
    .line 44
    invoke-static {p2, p1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_2
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 53
    .line 54
    invoke-virtual {v0, v1, p0, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    .line 59
    .line 60
    invoke-virtual {v0, v1, p0, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 61
    .line 62
    .line 63
    :goto_0
    new-instance p1, Landroid/graphics/RectF;

    .line 64
    .line 65
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 69
    .line 70
    .line 71
    invoke-static {p3, p4}, Landroidx/camera/core/internal/ViewPorts;->shouldMirrorStartAndEnd(ZI)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    invoke-static {p2, p5, p0, p1}, Landroidx/camera/core/internal/ViewPorts;->correctStartOrEnd(ZILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method

.method private static shouldMirrorStartAndEnd(ZI)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method
