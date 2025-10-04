.class public Lcom/google/android/flexbox/FlexboxLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/flexbox/FlexContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;,
        Lcom/google/android/flexbox/FlexboxLayout$DividerMode;
    }
.end annotation


# static fields
.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I


# instance fields
.field private mAlignContent:I

.field private mAlignItems:I

.field private mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDividerHorizontalHeight:I

.field private mDividerVerticalWidth:I

.field private mFlexDirection:I

.field private mFlexLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation
.end field

.field private mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

.field private mFlexWrap:I

.field private mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

.field private mJustifyContent:I

.field private mMaxLine:I

.field private mOrderCache:Landroid/util/SparseIntArray;

.field private mReorderedIndices:[I

.field private mShowDividerHorizontal:I

.field private mShowDividerVertical:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mMaxLine:I

    .line 5
    new-instance v1, Lcom/google/android/flexbox/FlexboxHelper;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/FlexboxHelper;-><init>(Lcom/google/android/flexbox/FlexContainer;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 7
    new-instance v1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-direct {v1}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 8
    sget-object v1, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_flexDirection:I

    .line 10
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 11
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_flexWrap:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 12
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_justifyContent:I

    .line 13
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 14
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_alignItems:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    .line 15
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_alignContent:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignContent:I

    .line 16
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_maxLine:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mMaxLine:I

    .line 17
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_dividerDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 20
    :cond_0
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_dividerDrawableHorizontal:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 22
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_1
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_dividerDrawableVertical:I

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 25
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 26
    :cond_2
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_showDivider:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_3

    .line 27
    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 28
    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 29
    :cond_3
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_showDividerVertical:I

    .line 30
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_4

    .line 31
    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 32
    :cond_4
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_showDividerHorizontal:I

    .line 33
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_5

    .line 34
    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 35
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private allFlexLinesAreDummyBefore(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, p1, :cond_1

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-lez v2, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method private allViewsAreGoneBefore(II)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    :goto_0
    if-gt v1, p2, :cond_1

    .line 4
    .line 5
    sub-int v2, p1, v1

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x8

    .line 18
    .line 19
    if-eq v2, v3, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return v0
.end method

.method private drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v2, v1

    .line 14
    sub-int/2addr v2, v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_0
    if-ge v4, v3, :cond_a

    .line 28
    .line 29
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    :goto_1
    iget v7, v5, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 39
    .line 40
    if-ge v6, v7, :cond_5

    .line 41
    .line 42
    iget v7, v5, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 43
    .line 44
    add-int/2addr v7, v6

    .line 45
    invoke-virtual {p0, v7}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    if-eqz v8, :cond_4

    .line 50
    .line 51
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    const/16 v10, 0x8

    .line 56
    .line 57
    if-ne v9, v10, :cond_0

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    check-cast v9, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 65
    .line 66
    invoke-direct {p0, v7, v6}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_2

    .line 71
    .line 72
    if-eqz p2, :cond_1

    .line 73
    .line 74
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 79
    .line 80
    add-int/2addr v7, v10

    .line 81
    goto :goto_2

    .line 82
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 87
    .line 88
    sub-int/2addr v7, v10

    .line 89
    iget v10, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 90
    .line 91
    sub-int/2addr v7, v10

    .line 92
    :goto_2
    iget v10, v5, Lcom/google/android/flexbox/FlexLine;->mTop:I

    .line 93
    .line 94
    iget v11, v5, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 95
    .line 96
    invoke-direct {p0, p1, v7, v10, v11}, Lcom/google/android/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget v7, v5, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 100
    .line 101
    add-int/lit8 v7, v7, -0x1

    .line 102
    .line 103
    if-ne v6, v7, :cond_4

    .line 104
    .line 105
    iget v7, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 106
    .line 107
    and-int/lit8 v7, v7, 0x4

    .line 108
    .line 109
    if-lez v7, :cond_4

    .line 110
    .line 111
    if-eqz p2, :cond_3

    .line 112
    .line 113
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    iget v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 118
    .line 119
    sub-int/2addr v7, v8

    .line 120
    iget v8, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 121
    .line 122
    sub-int/2addr v7, v8

    .line 123
    goto :goto_3

    .line 124
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    iget v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 129
    .line 130
    add-int/2addr v7, v8

    .line 131
    :goto_3
    iget v8, v5, Lcom/google/android/flexbox/FlexLine;->mTop:I

    .line 132
    .line 133
    iget v9, v5, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 134
    .line 135
    invoke-direct {p0, p1, v7, v8, v9}, Lcom/google/android/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 136
    .line 137
    .line 138
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_5
    invoke-direct {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_7

    .line 146
    .line 147
    if-eqz p3, :cond_6

    .line 148
    .line 149
    iget v6, v5, Lcom/google/android/flexbox/FlexLine;->mBottom:I

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_6
    iget v6, v5, Lcom/google/android/flexbox/FlexLine;->mTop:I

    .line 153
    .line 154
    iget v7, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 155
    .line 156
    sub-int/2addr v6, v7

    .line 157
    :goto_5
    invoke-direct {p0, p1, v0, v6, v2}, Lcom/google/android/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 158
    .line 159
    .line 160
    :cond_7
    invoke-direct {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_9

    .line 165
    .line 166
    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 167
    .line 168
    and-int/lit8 v6, v6, 0x4

    .line 169
    .line 170
    if-lez v6, :cond_9

    .line 171
    .line 172
    if-eqz p3, :cond_8

    .line 173
    .line 174
    iget v5, v5, Lcom/google/android/flexbox/FlexLine;->mTop:I

    .line 175
    .line 176
    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 177
    .line 178
    sub-int/2addr v5, v6

    .line 179
    goto :goto_6

    .line 180
    :cond_8
    iget v5, v5, Lcom/google/android/flexbox/FlexLine;->mBottom:I

    .line 181
    .line 182
    :goto_6
    invoke-direct {p0, p1, v0, v5, v2}, Lcom/google/android/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 183
    .line 184
    .line 185
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_a
    return-void
.end method

.method private drawDividersVertical(Landroid/graphics/Canvas;ZZ)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v2, v1

    .line 14
    sub-int/2addr v2, v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_0
    if-ge v4, v3, :cond_a

    .line 28
    .line 29
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    :goto_1
    iget v7, v5, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 39
    .line 40
    if-ge v6, v7, :cond_5

    .line 41
    .line 42
    iget v7, v5, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 43
    .line 44
    add-int/2addr v7, v6

    .line 45
    invoke-virtual {p0, v7}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    if-eqz v8, :cond_4

    .line 50
    .line 51
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    const/16 v10, 0x8

    .line 56
    .line 57
    if-ne v9, v10, :cond_0

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    check-cast v9, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 65
    .line 66
    invoke-direct {p0, v7, v6}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_2

    .line 71
    .line 72
    if-eqz p3, :cond_1

    .line 73
    .line 74
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 79
    .line 80
    add-int/2addr v7, v10

    .line 81
    goto :goto_2

    .line 82
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 87
    .line 88
    sub-int/2addr v7, v10

    .line 89
    iget v10, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 90
    .line 91
    sub-int/2addr v7, v10

    .line 92
    :goto_2
    iget v10, v5, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    .line 93
    .line 94
    iget v11, v5, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 95
    .line 96
    invoke-direct {p0, p1, v10, v7, v11}, Lcom/google/android/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget v7, v5, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 100
    .line 101
    add-int/lit8 v7, v7, -0x1

    .line 102
    .line 103
    if-ne v6, v7, :cond_4

    .line 104
    .line 105
    iget v7, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 106
    .line 107
    and-int/lit8 v7, v7, 0x4

    .line 108
    .line 109
    if-lez v7, :cond_4

    .line 110
    .line 111
    if-eqz p3, :cond_3

    .line 112
    .line 113
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    iget v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 118
    .line 119
    sub-int/2addr v7, v8

    .line 120
    iget v8, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 121
    .line 122
    sub-int/2addr v7, v8

    .line 123
    goto :goto_3

    .line 124
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    iget v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 129
    .line 130
    add-int/2addr v7, v8

    .line 131
    :goto_3
    iget v8, v5, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    .line 132
    .line 133
    iget v9, v5, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 134
    .line 135
    invoke-direct {p0, p1, v8, v7, v9}, Lcom/google/android/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 136
    .line 137
    .line 138
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_5
    invoke-direct {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_7

    .line 146
    .line 147
    if-eqz p2, :cond_6

    .line 148
    .line 149
    iget v6, v5, Lcom/google/android/flexbox/FlexLine;->mRight:I

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_6
    iget v6, v5, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    .line 153
    .line 154
    iget v7, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 155
    .line 156
    sub-int/2addr v6, v7

    .line 157
    :goto_5
    invoke-direct {p0, p1, v6, v0, v2}, Lcom/google/android/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 158
    .line 159
    .line 160
    :cond_7
    invoke-direct {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_9

    .line 165
    .line 166
    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 167
    .line 168
    and-int/lit8 v6, v6, 0x4

    .line 169
    .line 170
    if-lez v6, :cond_9

    .line 171
    .line 172
    if-eqz p2, :cond_8

    .line 173
    .line 174
    iget v5, v5, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    .line 175
    .line 176
    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 177
    .line 178
    sub-int/2addr v5, v6

    .line 179
    goto :goto_6

    .line 180
    :cond_8
    iget v5, v5, Lcom/google/android/flexbox/FlexLine;->mRight:I

    .line 181
    .line 182
    :goto_6
    invoke-direct {p0, p1, v5, v0, v2}, Lcom/google/android/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 183
    .line 184
    .line 185
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_a
    return-void
.end method

.method private drawHorizontalDivider(Landroid/graphics/Canvas;III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    add-int/2addr p4, p2

    .line 7
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 8
    .line 9
    add-int/2addr v1, p3

    .line 10
    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private drawVerticalDivider(Landroid/graphics/Canvas;III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 7
    .line 8
    add-int/2addr v1, p2

    .line 9
    add-int/2addr p4, p3

    .line 10
    invoke-virtual {v0, p2, p3, v1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private hasDividerBeforeChildAtAlongMainAxis(II)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;->allViewsAreGoneBefore(II)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    const/4 v0, 0x1

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 16
    .line 17
    and-int/2addr p1, v0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    :cond_0
    return p2

    .line 22
    :cond_1
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 23
    .line 24
    and-int/2addr p1, v0

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    const/4 p2, 0x1

    .line 28
    :cond_2
    return p2

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_5

    .line 34
    .line 35
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 36
    .line 37
    and-int/lit8 p1, p1, 0x2

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    :cond_4
    return p2

    .line 43
    :cond_5
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 44
    .line 45
    and-int/lit8 p1, p1, 0x2

    .line 46
    .line 47
    if-eqz p1, :cond_6

    .line 48
    .line 49
    const/4 p2, 0x1

    .line 50
    :cond_6
    return p2
.end method

.method private hasDividerBeforeFlexLine(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_7

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lt p1, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->allFlexLinesAreDummyBefore(I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz p1, :cond_4

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 27
    .line 28
    and-int/2addr p1, v1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    :cond_1
    return v0

    .line 33
    :cond_2
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 34
    .line 35
    and-int/2addr p1, v1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    :cond_3
    return v0

    .line 40
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_6

    .line 45
    .line 46
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 47
    .line 48
    and-int/lit8 p1, p1, 0x2

    .line 49
    .line 50
    if-eqz p1, :cond_5

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    :cond_5
    return v0

    .line 54
    :cond_6
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 55
    .line 56
    and-int/lit8 p1, p1, 0x2

    .line 57
    .line 58
    if-eqz p1, :cond_7

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    :cond_7
    :goto_0
    return v0
.end method

.method private hasEndDividerAfterFlexLine(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_5

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lt p1, v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    add-int/2addr p1, v1

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge p1, v2, :cond_2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-lez v2, :cond_1

    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 48
    .line 49
    and-int/lit8 p1, p1, 0x4

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    :cond_3
    return v0

    .line 55
    :cond_4
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 56
    .line 57
    and-int/lit8 p1, p1, 0x4

    .line 58
    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    :cond_5
    :goto_1
    return v0
.end method

.method private layoutHorizontal(ZIIII)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    sub-int v5, p5, p3

    .line 14
    .line 15
    sub-int v6, p4, p2

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    sub-int/2addr v5, v7

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    const/4 v10, 0x0

    .line 33
    :goto_0
    if-ge v10, v8, :cond_14

    .line 34
    .line 35
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v11

    .line 41
    check-cast v11, Lcom/google/android/flexbox/FlexLine;

    .line 42
    .line 43
    invoke-direct {v0, v10}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    .line 44
    .line 45
    .line 46
    move-result v12

    .line 47
    if-eqz v12, :cond_0

    .line 48
    .line 49
    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 50
    .line 51
    sub-int/2addr v5, v12

    .line 52
    add-int/2addr v7, v12

    .line 53
    :cond_0
    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 54
    .line 55
    const/4 v15, 0x4

    .line 56
    const/4 v14, 0x2

    .line 57
    const/4 v13, 0x0

    .line 58
    if-eqz v12, :cond_9

    .line 59
    .line 60
    if-eq v12, v2, :cond_8

    .line 61
    .line 62
    const/high16 v16, 0x40000000    # 2.0f

    .line 63
    .line 64
    if-eq v12, v14, :cond_7

    .line 65
    .line 66
    const/4 v9, 0x3

    .line 67
    if-eq v12, v9, :cond_5

    .line 68
    .line 69
    if-eq v12, v15, :cond_3

    .line 70
    .line 71
    if-ne v12, v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {v11}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_1

    .line 78
    .line 79
    iget v12, v11, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 80
    .line 81
    sub-int v12, v6, v12

    .line 82
    .line 83
    int-to-float v12, v12

    .line 84
    add-int/2addr v9, v2

    .line 85
    int-to-float v9, v9

    .line 86
    div-float/2addr v12, v9

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 v12, 0x0

    .line 89
    :goto_1
    int-to-float v9, v3

    .line 90
    add-float/2addr v9, v12

    .line 91
    sub-int v14, v6, v4

    .line 92
    .line 93
    int-to-float v14, v14

    .line 94
    sub-float/2addr v14, v12

    .line 95
    goto/16 :goto_6

    .line 96
    .line 97
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v1, v1, [J

    .line 107
    .line 108
    fill-array-data v1, :array_0

    .line 109
    .line 110
    .line 111
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 122
    .line 123
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v2

    .line 134
    :cond_3
    invoke-virtual {v11}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    if-eqz v9, :cond_4

    .line 139
    .line 140
    iget v12, v11, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 141
    .line 142
    sub-int v12, v6, v12

    .line 143
    .line 144
    int-to-float v12, v12

    .line 145
    int-to-float v9, v9

    .line 146
    div-float/2addr v12, v9

    .line 147
    goto :goto_2

    .line 148
    :cond_4
    const/4 v12, 0x0

    .line 149
    :goto_2
    int-to-float v9, v3

    .line 150
    div-float v14, v12, v16

    .line 151
    .line 152
    add-float/2addr v9, v14

    .line 153
    sub-int v1, v6, v4

    .line 154
    .line 155
    int-to-float v1, v1

    .line 156
    sub-float v14, v1, v14

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_5
    int-to-float v9, v3

    .line 160
    invoke-virtual {v11}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eq v1, v2, :cond_6

    .line 165
    .line 166
    sub-int/2addr v1, v2

    .line 167
    int-to-float v1, v1

    .line 168
    goto :goto_3

    .line 169
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 170
    .line 171
    :goto_3
    iget v12, v11, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 172
    .line 173
    sub-int v12, v6, v12

    .line 174
    .line 175
    int-to-float v12, v12

    .line 176
    div-float/2addr v12, v1

    .line 177
    sub-int v1, v6, v4

    .line 178
    .line 179
    int-to-float v14, v1

    .line 180
    goto :goto_6

    .line 181
    :cond_7
    int-to-float v1, v3

    .line 182
    iget v9, v11, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 183
    .line 184
    sub-int v12, v6, v9

    .line 185
    .line 186
    int-to-float v12, v12

    .line 187
    div-float v12, v12, v16

    .line 188
    .line 189
    add-float/2addr v1, v12

    .line 190
    sub-int v12, v6, v4

    .line 191
    .line 192
    int-to-float v12, v12

    .line 193
    sub-int v9, v6, v9

    .line 194
    .line 195
    int-to-float v9, v9

    .line 196
    div-float v9, v9, v16

    .line 197
    .line 198
    sub-float v14, v12, v9

    .line 199
    .line 200
    move v9, v1

    .line 201
    :goto_4
    const/4 v12, 0x0

    .line 202
    goto :goto_6

    .line 203
    :cond_8
    iget v1, v11, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 204
    .line 205
    sub-int v9, v6, v1

    .line 206
    .line 207
    add-int/2addr v9, v4

    .line 208
    int-to-float v9, v9

    .line 209
    sub-int/2addr v1, v3

    .line 210
    :goto_5
    int-to-float v14, v1

    .line 211
    goto :goto_4

    .line 212
    :cond_9
    int-to-float v9, v3

    .line 213
    sub-int v1, v6, v4

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :goto_6
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    const/4 v13, 0x0

    .line 221
    :goto_7
    iget v12, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 222
    .line 223
    if-ge v13, v12, :cond_13

    .line 224
    .line 225
    iget v12, v11, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 226
    .line 227
    add-int/2addr v12, v13

    .line 228
    invoke-virtual {v0, v12}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v19

    .line 232
    if-eqz v19, :cond_a

    .line 233
    .line 234
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    .line 235
    .line 236
    .line 237
    move-result v15

    .line 238
    const/16 v2, 0x8

    .line 239
    .line 240
    if-ne v15, v2, :cond_b

    .line 241
    .line 242
    :cond_a
    move/from16 v23, v13

    .line 243
    .line 244
    const/16 v24, 0x2

    .line 245
    .line 246
    const/16 v25, 0x4

    .line 247
    .line 248
    goto/16 :goto_c

    .line 249
    .line 250
    :cond_b
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 255
    .line 256
    iget v15, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 257
    .line 258
    int-to-float v15, v15

    .line 259
    add-float/2addr v9, v15

    .line 260
    iget v15, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 261
    .line 262
    int-to-float v15, v15

    .line 263
    sub-float/2addr v14, v15

    .line 264
    invoke-direct {v0, v12, v13}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    .line 265
    .line 266
    .line 267
    move-result v12

    .line 268
    if-eqz v12, :cond_c

    .line 269
    .line 270
    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 271
    .line 272
    int-to-float v15, v12

    .line 273
    add-float/2addr v9, v15

    .line 274
    sub-float/2addr v14, v15

    .line 275
    move/from16 v21, v12

    .line 276
    .line 277
    move/from16 v20, v14

    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_c
    move/from16 v20, v14

    .line 281
    .line 282
    const/16 v21, 0x0

    .line 283
    .line 284
    :goto_8
    iget v12, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 285
    .line 286
    const/4 v14, 0x1

    .line 287
    sub-int/2addr v12, v14

    .line 288
    if-ne v13, v12, :cond_d

    .line 289
    .line 290
    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 291
    .line 292
    const/4 v15, 0x4

    .line 293
    and-int/2addr v12, v15

    .line 294
    if-lez v12, :cond_e

    .line 295
    .line 296
    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 297
    .line 298
    move/from16 v22, v12

    .line 299
    .line 300
    goto :goto_9

    .line 301
    :cond_d
    const/4 v15, 0x4

    .line 302
    :cond_e
    const/16 v22, 0x0

    .line 303
    .line 304
    :goto_9
    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 305
    .line 306
    const/4 v14, 0x2

    .line 307
    if-ne v12, v14, :cond_10

    .line 308
    .line 309
    if-eqz p1, :cond_f

    .line 310
    .line 311
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 312
    .line 313
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    .line 314
    .line 315
    .line 316
    move-result v16

    .line 317
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    .line 318
    .line 319
    .line 320
    move-result v17

    .line 321
    sub-int v16, v16, v17

    .line 322
    .line 323
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    .line 324
    .line 325
    .line 326
    move-result v17

    .line 327
    sub-int v17, v5, v17

    .line 328
    .line 329
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    .line 330
    .line 331
    .line 332
    move-result v18

    .line 333
    move/from16 v23, v13

    .line 334
    .line 335
    move-object/from16 v13, v19

    .line 336
    .line 337
    const/16 v24, 0x2

    .line 338
    .line 339
    move-object v14, v11

    .line 340
    const/16 v25, 0x4

    .line 341
    .line 342
    move/from16 v15, v16

    .line 343
    .line 344
    move/from16 v16, v17

    .line 345
    .line 346
    move/from16 v17, v18

    .line 347
    .line 348
    move/from16 v18, v5

    .line 349
    .line 350
    invoke-virtual/range {v12 .. v18}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_a

    .line 354
    .line 355
    :cond_f
    move/from16 v23, v13

    .line 356
    .line 357
    const/16 v24, 0x2

    .line 358
    .line 359
    const/16 v25, 0x4

    .line 360
    .line 361
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 362
    .line 363
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 364
    .line 365
    .line 366
    move-result v15

    .line 367
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    .line 368
    .line 369
    .line 370
    move-result v13

    .line 371
    sub-int v16, v5, v13

    .line 372
    .line 373
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 374
    .line 375
    .line 376
    move-result v13

    .line 377
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    .line 378
    .line 379
    .line 380
    move-result v14

    .line 381
    add-int v17, v14, v13

    .line 382
    .line 383
    move-object/from16 v13, v19

    .line 384
    .line 385
    move-object v14, v11

    .line 386
    move/from16 v18, v5

    .line 387
    .line 388
    invoke-virtual/range {v12 .. v18}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    .line 389
    .line 390
    .line 391
    goto :goto_a

    .line 392
    :cond_10
    move/from16 v23, v13

    .line 393
    .line 394
    const/16 v24, 0x2

    .line 395
    .line 396
    const/16 v25, 0x4

    .line 397
    .line 398
    if-eqz p1, :cond_11

    .line 399
    .line 400
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 401
    .line 402
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    .line 403
    .line 404
    .line 405
    move-result v13

    .line 406
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    .line 407
    .line 408
    .line 409
    move-result v14

    .line 410
    sub-int v15, v13, v14

    .line 411
    .line 412
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    .line 413
    .line 414
    .line 415
    move-result v17

    .line 416
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    .line 417
    .line 418
    .line 419
    move-result v13

    .line 420
    add-int v18, v13, v7

    .line 421
    .line 422
    move-object/from16 v13, v19

    .line 423
    .line 424
    move-object v14, v11

    .line 425
    move/from16 v16, v7

    .line 426
    .line 427
    invoke-virtual/range {v12 .. v18}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    .line 428
    .line 429
    .line 430
    goto :goto_a

    .line 431
    :cond_11
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 432
    .line 433
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 434
    .line 435
    .line 436
    move-result v15

    .line 437
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 438
    .line 439
    .line 440
    move-result v13

    .line 441
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    .line 442
    .line 443
    .line 444
    move-result v14

    .line 445
    add-int v17, v14, v13

    .line 446
    .line 447
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    .line 448
    .line 449
    .line 450
    move-result v13

    .line 451
    add-int v18, v13, v7

    .line 452
    .line 453
    move-object/from16 v13, v19

    .line 454
    .line 455
    move-object v14, v11

    .line 456
    move/from16 v16, v7

    .line 457
    .line 458
    invoke-virtual/range {v12 .. v18}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    .line 459
    .line 460
    .line 461
    :goto_a
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    .line 462
    .line 463
    .line 464
    move-result v12

    .line 465
    int-to-float v12, v12

    .line 466
    add-float/2addr v12, v1

    .line 467
    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 468
    .line 469
    int-to-float v13, v13

    .line 470
    add-float/2addr v12, v13

    .line 471
    add-float/2addr v9, v12

    .line 472
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    .line 473
    .line 474
    .line 475
    move-result v12

    .line 476
    int-to-float v12, v12

    .line 477
    add-float/2addr v12, v1

    .line 478
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 479
    .line 480
    int-to-float v2, v2

    .line 481
    add-float/2addr v12, v2

    .line 482
    sub-float v20, v20, v12

    .line 483
    .line 484
    if-eqz p1, :cond_12

    .line 485
    .line 486
    const/4 v15, 0x0

    .line 487
    const/16 v17, 0x0

    .line 488
    .line 489
    move-object v12, v11

    .line 490
    move-object/from16 v13, v19

    .line 491
    .line 492
    move/from16 v14, v22

    .line 493
    .line 494
    move/from16 v16, v21

    .line 495
    .line 496
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/flexbox/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    .line 497
    .line 498
    .line 499
    goto :goto_b

    .line 500
    :cond_12
    const/4 v15, 0x0

    .line 501
    const/16 v17, 0x0

    .line 502
    .line 503
    move-object v12, v11

    .line 504
    move-object/from16 v13, v19

    .line 505
    .line 506
    move/from16 v14, v21

    .line 507
    .line 508
    move/from16 v16, v22

    .line 509
    .line 510
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/flexbox/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    .line 511
    .line 512
    .line 513
    :goto_b
    move/from16 v14, v20

    .line 514
    .line 515
    :goto_c
    const/4 v2, 0x1

    .line 516
    add-int/lit8 v13, v23, 0x1

    .line 517
    .line 518
    const/4 v15, 0x4

    .line 519
    goto/16 :goto_7

    .line 520
    .line 521
    :cond_13
    iget v1, v11, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 522
    .line 523
    add-int/2addr v7, v1

    .line 524
    sub-int/2addr v5, v1

    .line 525
    add-int/2addr v10, v2

    .line 526
    const/4 v1, 0x5

    .line 527
    goto/16 :goto_0

    .line 528
    .line 529
    :cond_14
    return-void

    .line 530
    nop

    .line 531
    :array_0
    .array-data 8
        -0x455ae3661f646502L    # -3.410782802466551E-26
        0x11d72d3c5bfa9f64L
        0x7ca6388e135ada58L    # 2.771837728940719E292
        -0x7e9c7a1c08eed160L    # -5.693785842727475E-302
        -0x3883dbb9372a092dL    # -2.3379213905880222E36
    .end array-data
.end method

.method private layoutVertical(ZZIIII)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    sub-int v7, p5, p3

    .line 22
    .line 23
    sub-int v8, p6, p4

    .line 24
    .line 25
    sub-int/2addr v7, v5

    .line 26
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v10, 0x0

    .line 33
    :goto_0
    if-ge v10, v5, :cond_14

    .line 34
    .line 35
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v11

    .line 41
    check-cast v11, Lcom/google/android/flexbox/FlexLine;

    .line 42
    .line 43
    invoke-direct {v0, v10}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    .line 44
    .line 45
    .line 46
    move-result v12

    .line 47
    if-eqz v12, :cond_0

    .line 48
    .line 49
    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 50
    .line 51
    add-int/2addr v6, v12

    .line 52
    sub-int/2addr v7, v12

    .line 53
    :cond_0
    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 54
    .line 55
    const/4 v15, 0x4

    .line 56
    const/4 v13, 0x0

    .line 57
    if-eqz v12, :cond_9

    .line 58
    .line 59
    if-eq v12, v2, :cond_8

    .line 60
    .line 61
    const/4 v14, 0x2

    .line 62
    const/high16 v16, 0x40000000    # 2.0f

    .line 63
    .line 64
    if-eq v12, v14, :cond_7

    .line 65
    .line 66
    const/4 v14, 0x3

    .line 67
    if-eq v12, v14, :cond_5

    .line 68
    .line 69
    if-eq v12, v15, :cond_3

    .line 70
    .line 71
    if-ne v12, v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {v11}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    if-eqz v12, :cond_1

    .line 78
    .line 79
    iget v14, v11, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 80
    .line 81
    sub-int v14, v8, v14

    .line 82
    .line 83
    int-to-float v14, v14

    .line 84
    add-int/2addr v12, v2

    .line 85
    int-to-float v12, v12

    .line 86
    div-float/2addr v14, v12

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 v14, 0x0

    .line 89
    :goto_1
    int-to-float v12, v3

    .line 90
    add-float/2addr v12, v14

    .line 91
    sub-int v9, v8, v4

    .line 92
    .line 93
    int-to-float v9, v9

    .line 94
    sub-float/2addr v9, v14

    .line 95
    goto/16 :goto_6

    .line 96
    .line 97
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v1, v1, [J

    .line 107
    .line 108
    fill-array-data v1, :array_0

    .line 109
    .line 110
    .line 111
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 122
    .line 123
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v2

    .line 134
    :cond_3
    invoke-virtual {v11}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    if-eqz v9, :cond_4

    .line 139
    .line 140
    iget v12, v11, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 141
    .line 142
    sub-int v12, v8, v12

    .line 143
    .line 144
    int-to-float v12, v12

    .line 145
    int-to-float v9, v9

    .line 146
    div-float/2addr v12, v9

    .line 147
    move v14, v12

    .line 148
    goto :goto_2

    .line 149
    :cond_4
    const/4 v14, 0x0

    .line 150
    :goto_2
    int-to-float v9, v3

    .line 151
    div-float v12, v14, v16

    .line 152
    .line 153
    add-float/2addr v9, v12

    .line 154
    sub-int v1, v8, v4

    .line 155
    .line 156
    int-to-float v1, v1

    .line 157
    sub-float/2addr v1, v12

    .line 158
    move v12, v9

    .line 159
    move v9, v1

    .line 160
    goto :goto_6

    .line 161
    :cond_5
    int-to-float v12, v3

    .line 162
    invoke-virtual {v11}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eq v1, v2, :cond_6

    .line 167
    .line 168
    sub-int/2addr v1, v2

    .line 169
    int-to-float v1, v1

    .line 170
    goto :goto_3

    .line 171
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 172
    .line 173
    :goto_3
    iget v9, v11, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 174
    .line 175
    sub-int v9, v8, v9

    .line 176
    .line 177
    int-to-float v9, v9

    .line 178
    div-float v14, v9, v1

    .line 179
    .line 180
    sub-int v1, v8, v4

    .line 181
    .line 182
    int-to-float v9, v1

    .line 183
    goto :goto_6

    .line 184
    :cond_7
    int-to-float v1, v3

    .line 185
    iget v9, v11, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 186
    .line 187
    sub-int v12, v8, v9

    .line 188
    .line 189
    int-to-float v12, v12

    .line 190
    div-float v12, v12, v16

    .line 191
    .line 192
    add-float/2addr v12, v1

    .line 193
    sub-int v1, v8, v4

    .line 194
    .line 195
    int-to-float v1, v1

    .line 196
    sub-int v9, v8, v9

    .line 197
    .line 198
    int-to-float v9, v9

    .line 199
    div-float v9, v9, v16

    .line 200
    .line 201
    sub-float v9, v1, v9

    .line 202
    .line 203
    :goto_4
    const/4 v14, 0x0

    .line 204
    goto :goto_6

    .line 205
    :cond_8
    iget v1, v11, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 206
    .line 207
    sub-int v9, v8, v1

    .line 208
    .line 209
    add-int/2addr v9, v4

    .line 210
    int-to-float v12, v9

    .line 211
    sub-int/2addr v1, v3

    .line 212
    :goto_5
    int-to-float v9, v1

    .line 213
    goto :goto_4

    .line 214
    :cond_9
    int-to-float v12, v3

    .line 215
    sub-int v1, v8, v4

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :goto_6
    invoke-static {v14, v13}, Ljava/lang/Math;->max(FF)F

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    const/4 v14, 0x0

    .line 223
    :goto_7
    iget v13, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 224
    .line 225
    if-ge v14, v13, :cond_13

    .line 226
    .line 227
    iget v13, v11, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 228
    .line 229
    add-int/2addr v13, v14

    .line 230
    invoke-virtual {v0, v13}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object v20

    .line 234
    if-eqz v20, :cond_a

    .line 235
    .line 236
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    .line 237
    .line 238
    .line 239
    move-result v15

    .line 240
    const/16 v2, 0x8

    .line 241
    .line 242
    if-ne v15, v2, :cond_b

    .line 243
    .line 244
    :cond_a
    move/from16 v24, v14

    .line 245
    .line 246
    const/16 v25, 0x4

    .line 247
    .line 248
    goto/16 :goto_c

    .line 249
    .line 250
    :cond_b
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 255
    .line 256
    iget v15, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 257
    .line 258
    int-to-float v15, v15

    .line 259
    add-float/2addr v12, v15

    .line 260
    iget v15, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 261
    .line 262
    int-to-float v15, v15

    .line 263
    sub-float/2addr v9, v15

    .line 264
    invoke-direct {v0, v13, v14}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    .line 265
    .line 266
    .line 267
    move-result v13

    .line 268
    if-eqz v13, :cond_c

    .line 269
    .line 270
    iget v13, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 271
    .line 272
    int-to-float v15, v13

    .line 273
    add-float/2addr v12, v15

    .line 274
    sub-float/2addr v9, v15

    .line 275
    move/from16 v21, v12

    .line 276
    .line 277
    move/from16 v22, v13

    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_c
    move/from16 v21, v12

    .line 281
    .line 282
    const/16 v22, 0x0

    .line 283
    .line 284
    :goto_8
    iget v12, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 285
    .line 286
    const/4 v13, 0x1

    .line 287
    sub-int/2addr v12, v13

    .line 288
    if-ne v14, v12, :cond_d

    .line 289
    .line 290
    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 291
    .line 292
    const/4 v15, 0x4

    .line 293
    and-int/2addr v12, v15

    .line 294
    if-lez v12, :cond_e

    .line 295
    .line 296
    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 297
    .line 298
    move/from16 v23, v12

    .line 299
    .line 300
    goto :goto_9

    .line 301
    :cond_d
    const/4 v15, 0x4

    .line 302
    :cond_e
    const/16 v23, 0x0

    .line 303
    .line 304
    :goto_9
    if-eqz p1, :cond_10

    .line 305
    .line 306
    if-eqz p2, :cond_f

    .line 307
    .line 308
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 309
    .line 310
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    .line 311
    .line 312
    .line 313
    move-result v13

    .line 314
    sub-int v16, v7, v13

    .line 315
    .line 316
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 317
    .line 318
    .line 319
    move-result v13

    .line 320
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    .line 321
    .line 322
    .line 323
    move-result v17

    .line 324
    sub-int v17, v13, v17

    .line 325
    .line 326
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 327
    .line 328
    .line 329
    move-result v19

    .line 330
    const/16 v18, 0x1

    .line 331
    .line 332
    move-object/from16 v13, v20

    .line 333
    .line 334
    move/from16 v24, v14

    .line 335
    .line 336
    move-object v14, v11

    .line 337
    const/16 v25, 0x4

    .line 338
    .line 339
    move/from16 v15, v18

    .line 340
    .line 341
    move/from16 v18, v7

    .line 342
    .line 343
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    .line 344
    .line 345
    .line 346
    goto :goto_a

    .line 347
    :cond_f
    move/from16 v24, v14

    .line 348
    .line 349
    const/16 v25, 0x4

    .line 350
    .line 351
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 352
    .line 353
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    .line 354
    .line 355
    .line 356
    move-result v13

    .line 357
    sub-int v16, v7, v13

    .line 358
    .line 359
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    .line 360
    .line 361
    .line 362
    move-result v17

    .line 363
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    .line 364
    .line 365
    .line 366
    move-result v13

    .line 367
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    .line 368
    .line 369
    .line 370
    move-result v14

    .line 371
    add-int v19, v14, v13

    .line 372
    .line 373
    const/4 v15, 0x1

    .line 374
    move-object/from16 v13, v20

    .line 375
    .line 376
    move-object v14, v11

    .line 377
    move/from16 v18, v7

    .line 378
    .line 379
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    .line 380
    .line 381
    .line 382
    goto :goto_a

    .line 383
    :cond_10
    move/from16 v24, v14

    .line 384
    .line 385
    const/16 v25, 0x4

    .line 386
    .line 387
    if-eqz p2, :cond_11

    .line 388
    .line 389
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 390
    .line 391
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 392
    .line 393
    .line 394
    move-result v13

    .line 395
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    .line 396
    .line 397
    .line 398
    move-result v14

    .line 399
    sub-int v17, v13, v14

    .line 400
    .line 401
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    .line 402
    .line 403
    .line 404
    move-result v13

    .line 405
    add-int v18, v13, v6

    .line 406
    .line 407
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 408
    .line 409
    .line 410
    move-result v19

    .line 411
    const/4 v15, 0x0

    .line 412
    move-object/from16 v13, v20

    .line 413
    .line 414
    move-object v14, v11

    .line 415
    move/from16 v16, v6

    .line 416
    .line 417
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    .line 418
    .line 419
    .line 420
    goto :goto_a

    .line 421
    :cond_11
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 422
    .line 423
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    .line 424
    .line 425
    .line 426
    move-result v17

    .line 427
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    .line 428
    .line 429
    .line 430
    move-result v13

    .line 431
    add-int v18, v13, v6

    .line 432
    .line 433
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    .line 434
    .line 435
    .line 436
    move-result v13

    .line 437
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    .line 438
    .line 439
    .line 440
    move-result v14

    .line 441
    add-int v19, v14, v13

    .line 442
    .line 443
    const/4 v15, 0x0

    .line 444
    move-object/from16 v13, v20

    .line 445
    .line 446
    move-object v14, v11

    .line 447
    move/from16 v16, v6

    .line 448
    .line 449
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    .line 450
    .line 451
    .line 452
    :goto_a
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    .line 453
    .line 454
    .line 455
    move-result v12

    .line 456
    int-to-float v12, v12

    .line 457
    add-float/2addr v12, v1

    .line 458
    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 459
    .line 460
    int-to-float v13, v13

    .line 461
    add-float/2addr v12, v13

    .line 462
    add-float v18, v12, v21

    .line 463
    .line 464
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    .line 465
    .line 466
    .line 467
    move-result v12

    .line 468
    int-to-float v12, v12

    .line 469
    add-float/2addr v12, v1

    .line 470
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 471
    .line 472
    int-to-float v2, v2

    .line 473
    add-float/2addr v12, v2

    .line 474
    sub-float/2addr v9, v12

    .line 475
    if-eqz p2, :cond_12

    .line 476
    .line 477
    const/4 v14, 0x0

    .line 478
    const/16 v16, 0x0

    .line 479
    .line 480
    move-object v12, v11

    .line 481
    move-object/from16 v13, v20

    .line 482
    .line 483
    move/from16 v15, v23

    .line 484
    .line 485
    move/from16 v17, v22

    .line 486
    .line 487
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/flexbox/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    .line 488
    .line 489
    .line 490
    goto :goto_b

    .line 491
    :cond_12
    const/4 v14, 0x0

    .line 492
    const/16 v16, 0x0

    .line 493
    .line 494
    move-object v12, v11

    .line 495
    move-object/from16 v13, v20

    .line 496
    .line 497
    move/from16 v15, v22

    .line 498
    .line 499
    move/from16 v17, v23

    .line 500
    .line 501
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/flexbox/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    .line 502
    .line 503
    .line 504
    :goto_b
    move/from16 v12, v18

    .line 505
    .line 506
    :goto_c
    const/4 v2, 0x1

    .line 507
    add-int/lit8 v14, v24, 0x1

    .line 508
    .line 509
    const/4 v15, 0x4

    .line 510
    goto/16 :goto_7

    .line 511
    .line 512
    :cond_13
    iget v1, v11, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 513
    .line 514
    add-int/2addr v6, v1

    .line 515
    sub-int/2addr v7, v1

    .line 516
    add-int/2addr v10, v2

    .line 517
    const/4 v1, 0x5

    .line 518
    goto/16 :goto_0

    .line 519
    .line 520
    :cond_14
    return-void

    .line 521
    :array_0
    .array-data 8
        0x77f3cf87405975f4L    # 6.541163766937873E269
        0x7cf01d9afc73df82L    # 6.432851240418848E293
        0x18142ec3087da98fL
        -0x36ba35e20379a97fL    # -9.718450695579532E44
        0x12961fd7e166fcb8L    # 3.917188113827949E-219
    .end array-data
.end method

.method private measureHorizontal(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->reset()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/flexbox/FlexboxHelper;->calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;II)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(II)V

    .line 27
    .line 28
    .line 29
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    if-ne v0, v1, :cond_4

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/google/android/flexbox/FlexLine;

    .line 51
    .line 52
    const/high16 v2, -0x80000000

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    :goto_1
    iget v4, v1, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 56
    .line 57
    if-ge v3, v4, :cond_3

    .line 58
    .line 59
    iget v4, v1, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 60
    .line 61
    add-int/2addr v4, v3

    .line 62
    invoke-virtual {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const/16 v6, 0x8

    .line 73
    .line 74
    if-ne v5, v6, :cond_0

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 82
    .line 83
    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 84
    .line 85
    const/4 v7, 0x2

    .line 86
    if-eq v6, v7, :cond_1

    .line 87
    .line 88
    iget v6, v1, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    sub-int/2addr v6, v7

    .line 95
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 96
    .line 97
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    add-int/2addr v4, v6

    .line 106
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 107
    .line 108
    add-int/2addr v4, v5

    .line 109
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    goto :goto_2

    .line 114
    :cond_1
    iget v6, v1, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 115
    .line 116
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    sub-int/2addr v6, v7

    .line 121
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    add-int/2addr v7, v6

    .line 126
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 127
    .line 128
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 137
    .line 138
    add-int/2addr v4, v5

    .line 139
    add-int/2addr v4, v6

    .line 140
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    iput v2, v1, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    add-int/2addr v2, v1

    .line 161
    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/flexbox/FlexboxHelper;->determineCrossSize(III)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews()V

    .line 167
    .line 168
    .line 169
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 170
    .line 171
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 172
    .line 173
    iget v1, v1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    .line 174
    .line 175
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/flexbox/FlexboxLayout;->setMeasuredDimensionForFlex(IIII)V

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method private measureVertical(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->reset()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/flexbox/FlexboxHelper;->calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;II)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(II)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int/2addr v2, v1

    .line 40
    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/flexbox/FlexboxHelper;->determineCrossSize(III)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews()V

    .line 46
    .line 47
    .line 48
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 51
    .line 52
    iget v1, v1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    .line 53
    .line 54
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/flexbox/FlexboxLayout;->setMeasuredDimensionForFlex(IIII)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private setMeasuredDimensionForFlex(IIII)V
    .locals 9

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    if-eq p1, v5, :cond_2

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    if-eq p1, v5, :cond_1

    .line 25
    .line 26
    const/4 v5, 0x3

    .line 27
    if-ne p1, v5, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    new-instance p3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    new-array v0, v0, [J

    .line 41
    .line 42
    fill-array-data v0, :array_0

    .line 43
    .line 44
    .line 45
    invoke-direct {p4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-static {p4, p3, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p2

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getLargestMainSize()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getSumOfCrossSize()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    add-int/2addr v6, v5

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    add-int/2addr v5, v6

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getSumOfCrossSize()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    add-int/2addr v5, p1

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    add-int/2addr p1, v5

    .line 89
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getLargestMainSize()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    :goto_1
    const/high16 v6, 0x1000000

    .line 94
    .line 95
    const/high16 v7, 0x40000000    # 2.0f

    .line 96
    .line 97
    const/high16 v8, -0x80000000

    .line 98
    .line 99
    if-eq v1, v8, :cond_6

    .line 100
    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    if-ne v1, v7, :cond_4

    .line 104
    .line 105
    if-ge v2, v5, :cond_3

    .line 106
    .line 107
    invoke-static {p4, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 108
    .line 109
    .line 110
    move-result p4

    .line 111
    :cond_3
    invoke-static {v2, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    goto :goto_3

    .line 116
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    new-array p4, v0, [J

    .line 126
    .line 127
    fill-array-data p4, :array_1

    .line 128
    .line 129
    .line 130
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-static {p3, p2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p1

    .line 141
    :cond_5
    invoke-static {v5, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    goto :goto_3

    .line 146
    :cond_6
    if-ge v2, v5, :cond_7

    .line 147
    .line 148
    invoke-static {p4, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 149
    .line 150
    .line 151
    move-result p4

    .line 152
    goto :goto_2

    .line 153
    :cond_7
    move v2, v5

    .line 154
    :goto_2
    invoke-static {v2, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    :goto_3
    const/16 v1, 0x100

    .line 159
    .line 160
    if-eq v3, v8, :cond_b

    .line 161
    .line 162
    if-eqz v3, :cond_a

    .line 163
    .line 164
    if-ne v3, v7, :cond_9

    .line 165
    .line 166
    if-ge v4, p1, :cond_8

    .line 167
    .line 168
    invoke-static {p4, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 169
    .line 170
    .line 171
    move-result p4

    .line 172
    :cond_8
    invoke-static {v4, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    goto :goto_5

    .line 177
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 178
    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 185
    .line 186
    new-array p4, v0, [J

    .line 187
    .line 188
    fill-array-data p4, :array_2

    .line 189
    .line 190
    .line 191
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-static {p3, p2, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p1

    .line 202
    :cond_a
    invoke-static {p1, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    goto :goto_5

    .line 207
    :cond_b
    if-ge v4, p1, :cond_c

    .line 208
    .line 209
    invoke-static {p4, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 210
    .line 211
    .line 212
    move-result p4

    .line 213
    goto :goto_4

    .line 214
    :cond_c
    move v4, p1

    .line 215
    :goto_4
    invoke-static {v4, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    :goto_5
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 220
    .line 221
    .line 222
    return-void

    :array_0
    .array-data 8
        0x218d9535513685acL    # 4.627133866757872E-147
        0x39e1a0eb6885574fL    # 6.953253539336767E-30
        -0x11703b401b7c7bf0L    # -3.6747197341236234E224
        0x953c950f734df8aL
    .end array-data

    :array_1
    .array-data 8
        -0x726b29d56d1c6082L    # -3.051617512006442E-243
        -0x488be8718d7ab5ccL    # -1.4415315466917536E-41
        -0x24086a389a6c7476L    # -1.0714090597321324E135
        0x5a91e4d67e427abfL    # 1.938041735746423E128
        0x2e518a5ccff7c1ffL    # 1.4107910043429174E-85
    .end array-data

    :array_2
    .array-data 8
        -0x1d6bda7595289dfbL    # -7.425065909957889E166
        0x53bb014497cdf496L    # 2.2532120816921613E95
        0x353433ba188dfed3L    # 2.1091933056508276E-52
        -0x2724ddc617e737c4L    # -1.094780990743765E120
        -0x55a92470818db912L
    .end array-data
.end method

.method private setWillNotDrawFlag()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseIntArray;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/flexbox/FlexboxHelper;->createReorderedIndices(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Landroid/util/SparseIntArray;)[I

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mReorderedIndices:[I

    .line 25
    .line 26
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 2
    .line 3
    return p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    check-cast p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;)V

    return-object v0

    .line 5
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAlignContent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignContent:I

    .line 2
    .line 3
    return v0
.end method

.method public getAlignItems()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    .line 2
    .line 3
    return v0
.end method

.method public getChildHeightMeasureSpec(III)I
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getChildWidthMeasureSpec(III)I
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getDecorationLengthCrossAxis(Landroid/view/View;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getDecorationLengthMainAxis(Landroid/view/View;II)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-direct {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 15
    .line 16
    :cond_0
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 17
    .line 18
    and-int/lit8 p1, p1, 0x4

    .line 19
    .line 20
    if-lez p1, :cond_3

    .line 21
    .line 22
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 23
    .line 24
    :goto_0
    add-int/2addr v0, p1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 33
    .line 34
    :cond_2
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 35
    .line 36
    and-int/lit8 p1, p1, 0x4

    .line 37
    .line 38
    if-lez p1, :cond_3

    .line 39
    .line 40
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    :goto_1
    return v0
.end method

.method public getDividerDrawableHorizontal()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDividerDrawableVertical()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFlexDirection()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 2
    .line 3
    return v0
.end method

.method public getFlexItemAt(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getFlexItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getFlexLines()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object v0
.end method

.method public getFlexLinesInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFlexWrap()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 2
    .line 3
    return v0
.end method

.method public getJustifyContent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 2
    .line 3
    return v0
.end method

.method public getLargestMainSize()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, -0x80000000

    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    .line 20
    .line 21
    iget v2, v2, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 22
    .line 23
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v1
.end method

.method public getMaxLine()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mMaxLine:I

    .line 2
    .line 3
    return v0
.end method

.method public getReorderedChildAt(I)Landroid/view/View;
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mReorderedIndices:[I

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-lt p1, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    aget p1, v0, p1

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public getReorderedFlexItemAt(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getShowDividerHorizontal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowDividerVertical()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 2
    .line 3
    return v0
.end method

.method public getSumOfCrossSize()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_4

    .line 10
    .line 11
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    .line 18
    .line 19
    invoke-direct {p0, v1}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 32
    .line 33
    :goto_1
    add-int/2addr v2, v4

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_2
    invoke-direct {p0, v1}, Lcom/google/android/flexbox/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 51
    .line 52
    :goto_3
    add-int/2addr v2, v4

    .line 53
    goto :goto_4

    .line 54
    :cond_2
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    :goto_4
    iget v3, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 58
    .line 59
    add-int/2addr v2, v3

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    return v2
.end method

.method public isMainAxisDirectionHorizontal()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :cond_1
    :goto_0
    return v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz v1, :cond_b

    .line 29
    .line 30
    if-eq v1, v4, :cond_8

    .line 31
    .line 32
    if-eq v1, v2, :cond_5

    .line 33
    .line 34
    const/4 v5, 0x3

    .line 35
    if-eq v1, v5, :cond_2

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    if-ne v0, v4, :cond_3

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    :cond_3
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 42
    .line 43
    if-ne v0, v2, :cond_4

    .line 44
    .line 45
    xor-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    :cond_4
    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/flexbox/FlexboxLayout;->drawDividersVertical(Landroid/graphics/Canvas;ZZ)V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_5
    if-ne v0, v4, :cond_6

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    const/4 v4, 0x0

    .line 55
    :goto_0
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 56
    .line 57
    if-ne v0, v2, :cond_7

    .line 58
    .line 59
    xor-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    :cond_7
    invoke-direct {p0, p1, v4, v3}, Lcom/google/android/flexbox/FlexboxLayout;->drawDividersVertical(Landroid/graphics/Canvas;ZZ)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_8
    if-eq v0, v4, :cond_9

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_9
    const/4 v0, 0x0

    .line 70
    :goto_1
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 71
    .line 72
    if-ne v1, v2, :cond_a

    .line 73
    .line 74
    const/4 v3, 0x1

    .line 75
    :cond_a
    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/flexbox/FlexboxLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_b
    if-ne v0, v4, :cond_c

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    goto :goto_2

    .line 83
    :cond_c
    const/4 v0, 0x0

    .line 84
    :goto_2
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 85
    .line 86
    if-ne v1, v2, :cond_d

    .line 87
    .line 88
    const/4 v3, 0x1

    .line 89
    :cond_d
    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/flexbox/FlexboxLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V

    .line 90
    .line 91
    .line 92
    :goto_3
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v2, :cond_8

    .line 10
    .line 11
    if-eq v2, v0, :cond_6

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    if-eq v2, v4, :cond_3

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    if-ne v2, v5, :cond_2

    .line 18
    .line 19
    if-ne v1, v0, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    :cond_0
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 23
    .line 24
    if-ne v1, v4, :cond_1

    .line 25
    .line 26
    xor-int/2addr v0, v3

    .line 27
    move v1, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v1, v3

    .line 30
    :goto_0
    const/4 v2, 0x1

    .line 31
    move-object v0, p0

    .line 32
    move v3, p2

    .line 33
    move v4, p3

    .line 34
    move v5, p4

    .line 35
    move v6, p5

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxLayout;->layoutVertical(ZZIIII)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v3, 0x5

    .line 51
    new-array v3, v3, [J

    .line 52
    .line 53
    fill-array-data v3, :array_0

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_3
    if-ne v1, v0, :cond_4

    .line 80
    .line 81
    const/4 v3, 0x1

    .line 82
    :cond_4
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 83
    .line 84
    if-ne v1, v4, :cond_5

    .line 85
    .line 86
    xor-int/2addr v0, v3

    .line 87
    move v1, v0

    .line 88
    goto :goto_1

    .line 89
    :cond_5
    move v1, v3

    .line 90
    :goto_1
    const/4 v2, 0x0

    .line 91
    move-object v0, p0

    .line 92
    move v3, p2

    .line 93
    move v4, p3

    .line 94
    move v5, p4

    .line 95
    move v6, p5

    .line 96
    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxLayout;->layoutVertical(ZZIIII)V

    .line 97
    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_6
    if-eq v1, v0, :cond_7

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_7
    const/4 v1, 0x0

    .line 105
    :goto_2
    move-object v0, p0

    .line 106
    move v2, p2

    .line 107
    move v3, p3

    .line 108
    move v4, p4

    .line 109
    move v5, p5

    .line 110
    invoke-direct/range {v0 .. v5}, Lcom/google/android/flexbox/FlexboxLayout;->layoutHorizontal(ZIIII)V

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_8
    if-ne v1, v0, :cond_9

    .line 115
    .line 116
    const/4 v1, 0x1

    .line 117
    goto :goto_3

    .line 118
    :cond_9
    const/4 v1, 0x0

    .line 119
    :goto_3
    move-object v0, p0

    .line 120
    move v2, p2

    .line 121
    move v3, p3

    .line 122
    move v4, p4

    .line 123
    move v5, p5

    .line 124
    invoke-direct/range {v0 .. v5}, Lcom/google/android/flexbox/FlexboxLayout;->layoutHorizontal(ZIIII)V

    .line 125
    .line 126
    .line 127
    :goto_4
    return-void

    .line 128
    nop

    .line 129
    :array_0
    .array-data 8
        -0x69ccbe4a3b1f9b4fL    # -9.827076194938204E-202
        -0x452a2926ec3a135bL    # -2.8226568838865205E-25
        0x1bcbfcf3ee6f89fL
        0x2ff26fa6446fe6c9L    # 9.95109581189168E-78
        -0x259213faad1c2cc7L    # -4.0509619746290995E127
    .end array-data
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseIntArray;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxHelper;->isOrderChangedFromLastMeasurement(Landroid/util/SparseIntArray;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxHelper;->createReorderedIndices(Landroid/util/SparseIntArray;)[I

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mReorderedIndices:[I

    .line 35
    .line 36
    :cond_1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    if-eq v0, v1, :cond_4

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    if-eq v0, v1, :cond_3

    .line 45
    .line 46
    const/4 v1, 0x3

    .line 47
    if-ne v0, v1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v1, 0x7

    .line 60
    new-array v1, v1, [J

    .line 61
    .line 62
    fill-array-data v1, :array_0

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 76
    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;->measureVertical(II)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;->measureHorizontal(II)V

    .line 93
    .line 94
    .line 95
    :goto_1
    return-void

    .line 96
    nop

    .line 97
    :array_0
    .array-data 8
        -0x541849d637b2883fL    # -3.4690600075280854E-97
        -0x2127a8a8ff322d16L    # -7.781070464820256E148
        -0x22ba6b537b787998L    # -2.0559600269402946E141
        -0x5ec4fb227f528730L
        -0x48da2bf51674ed5fL    # -4.894072219073537E-43
        -0x6f1a66377d61b1dfL
        -0x6147093da4233848L
    .end array-data
.end method

.method public onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/flexbox/FlexLine;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget p1, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 14
    .line 15
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 16
    .line 17
    add-int/2addr p1, p2

    .line 18
    iput p1, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 19
    .line 20
    iget p1, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 21
    .line 22
    add-int/2addr p1, p2

    .line 23
    iput p1, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget p1, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 27
    .line 28
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 29
    .line 30
    add-int/2addr p1, p2

    .line 31
    iput p1, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 32
    .line 33
    iget p1, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 34
    .line 35
    add-int/2addr p1, p2

    .line 36
    iput p1, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public onNewFlexLineAdded(Lcom/google/android/flexbox/FlexLine;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 8
    .line 9
    and-int/lit8 v0, v0, 0x4

    .line 10
    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    iget v0, p1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 14
    .line 15
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    iput v0, p1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 19
    .line 20
    iget v0, p1, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 21
    .line 22
    add-int/2addr v0, v1

    .line 23
    iput v0, p1, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 27
    .line 28
    and-int/lit8 v0, v0, 0x4

    .line 29
    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    iget v0, p1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 33
    .line 34
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 35
    .line 36
    add-int/2addr v0, v1

    .line 37
    iput v0, p1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 38
    .line 39
    iget v0, p1, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 40
    .line 41
    add-int/2addr v0, v1

    .line 42
    iput v0, p1, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method public setAlignContent(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignContent:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignContent:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setAlignItems(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 19
    .line 20
    :goto_0
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayout;->setWillNotDrawFlag()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 19
    .line 20
    :goto_0
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayout;->setWillNotDrawFlag()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setFlexDirection(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setFlexLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setFlexWrap(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setJustifyContent(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setMaxLine(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mMaxLine:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mMaxLine:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setShowDivider(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setShowDividerVertical(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setShowDividerHorizontal(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setShowDividerVertical(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public updateViewCache(ILandroid/view/View;)V
    .locals 0

    return-void
.end method
