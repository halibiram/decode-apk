.class final Lcom/google/android/material/carousel/KeylineState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/carousel/KeylineState$Keyline;,
        Lcom/google/android/material/carousel/KeylineState$Builder;
    }
.end annotation


# instance fields
.field private final firstFocalKeylineIndex:I

.field private final itemSize:F

.field private final keylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;"
        }
    .end annotation
.end field

.field private final lastFocalKeylineIndex:I


# direct methods
.method private constructor <init>(FLjava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;II)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/material/carousel/KeylineState;->itemSize:F

    .line 4
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 5
    iput p3, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    .line 6
    iput p4, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    return-void
.end method

.method public synthetic constructor <init>(FLjava/util/List;IILcom/google/android/material/carousel/KeylineState$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/carousel/KeylineState;-><init>(FLjava/util/List;II)V

    return-void
.end method

.method public static lerp(Lcom/google/android/material/carousel/KeylineState;Lcom/google/android/material/carousel/KeylineState;F)Lcom/google/android/material/carousel/KeylineState;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    cmpl-float v0, v0, v1

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ne v2, v3, :cond_1

    .line 30
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-ge v3, v4, :cond_0

    .line 46
    .line 47
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 52
    .line 53
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 58
    .line 59
    invoke-static {v4, v5, p2}, Lcom/google/android/material/carousel/KeylineState$Keyline;->lerp(Lcom/google/android/material/carousel/KeylineState$Keyline;Lcom/google/android/material/carousel/KeylineState$Keyline;F)Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-static {v0, v1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-static {v1, p1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    new-instance p2, Lcom/google/android/material/carousel/KeylineState;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    invoke-direct {p2, p0, v2, v0, p1}, Lcom/google/android/material/carousel/KeylineState;-><init>(FLjava/util/List;II)V

    .line 100
    .line 101
    .line 102
    return-object p2

    .line 103
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    const/16 p2, 0xb

    .line 108
    .line 109
    new-array p2, p2, [J

    .line 110
    .line 111
    fill-array-data p2, :array_0

    .line 112
    .line 113
    .line 114
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    const/16 p2, 0xa

    .line 130
    .line 131
    new-array p2, p2, [J

    .line 132
    .line 133
    fill-array-data p2, :array_1

    .line 134
    .line 135
    .line 136
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p0

    .line 147
    :array_0
    .array-data 8
        -0x3f42afd1fe4bc90aL    # -7504.179713500422
        -0x7bf0cb68ad54756L
        -0x47f04a4fae13b868L
        -0x7b8e7180f188f986L
        0x5d3e7ffa636cca6cL    # 1.4528360516372052E141
        -0x2c851f7efb5e6a68L    # -1.4015834136291079E94
        -0x6c38a1a6c3a722c4L
        -0x45b1ade358899cf5L    # -7.654033304678633E-28
        -0x171922bccb46d5fbL    # -2.1364130145322173E197
        0x360227af2f5a1e56L    # 1.5527708280267957E-48
        -0x4ca79e6a26c08574L    # -2.3706958598278744E-61
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
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
    :array_1
    .array-data 8
        -0x6d50be5f69a16710L
        -0x3680a1ed3bfea782L    # -1.1192288666405019E46
        -0x5c07a605ac4edf49L
        -0x7f8e552e01cfcf5L    # -1.525728088729715E270
        -0x39350c8acc4cde68L    # -1.0932627308663977E33
        0x72ca00218f5ad1e6L    # 8.876635639946552E244
        0x6483148d7e85a530L    # 1.510122979039748E176
        0x43e55127e66f95a0L    # 1.2288422548624703E19
        -0x15a3ec443c78e0e3L    # -2.2007417156729942E204
        -0x7bf80506ca5d3336L    # -3.075884100216716E-289
    .end array-data
.end method

.method public static reverse(Lcom/google/android/material/carousel/KeylineState;F)Lcom/google/android/material/carousel/KeylineState;
    .locals 11

    .line 1
    new-instance v6, Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {v6, v0, p1}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FF)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 15
    .line 16
    sub-float/2addr p1, v0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    .line 22
    .line 23
    const/high16 v7, 0x40000000    # 2.0f

    .line 24
    .line 25
    div-float/2addr v0, v7

    .line 26
    sub-float/2addr p1, v0

    .line 27
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v8, 0x1

    .line 36
    sub-int/2addr v0, v8

    .line 37
    move v9, v0

    .line 38
    :goto_0
    if-ltz v9, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    move-object v10, v0

    .line 49
    check-cast v10, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 50
    .line 51
    iget v0, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    .line 52
    .line 53
    div-float/2addr v0, v7

    .line 54
    add-float v1, v0, p1

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-lt v9, v0, :cond_0

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-gt v9, v0, :cond_0

    .line 67
    .line 68
    const/4 v4, 0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 71
    const/4 v4, 0x0

    .line 72
    :goto_1
    iget v2, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 73
    .line 74
    iget v3, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    .line 75
    .line 76
    iget-boolean v5, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    .line 77
    .line 78
    move-object v0, v6

    .line 79
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 80
    .line 81
    .line 82
    iget v0, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    .line 83
    .line 84
    add-float/2addr p1, v0

    .line 85
    add-int/lit8 v9, v9, -0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v6}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method


# virtual methods
.method public getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 10
    .line 11
    return-object v0
.end method

.method public getFirstFocalKeylineIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 9
    .line 10
    return-object v0
.end method

.method public getFirstNonAnchorKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 17
    .line 18
    iget-boolean v2, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public getFocalKeylines()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    .line 6
    .line 7
    add-int/lit8 v2, v2, 0x1

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getItemSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/carousel/KeylineState;->itemSize:F

    .line 2
    .line 3
    return v0
.end method

.method public getKeylines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 10
    .line 11
    return-object v0
.end method

.method public getLastFocalKeylineIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(ILjava/util/List;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 9
    .line 10
    return-object v0
.end method

.method public getLastNonAnchorKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 18
    .line 19
    iget-boolean v2, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    return-object v0
.end method

.method public getNumberOfNonAnchorKeylines()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 19
    .line 20
    iget-boolean v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sub-int/2addr v0, v1

    .line 34
    return v0
.end method
