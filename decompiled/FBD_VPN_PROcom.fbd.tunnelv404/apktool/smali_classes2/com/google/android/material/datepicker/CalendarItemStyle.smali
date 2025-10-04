.class final Lcom/google/android/material/datepicker/CalendarItemStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final backgroundColor:Landroid/content/res/ColorStateList;

.field private final insets:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final strokeColor:Landroid/content/res/ColorStateList;

.field private final strokeWidth:I

.field private final textColor:Landroid/content/res/ColorStateList;


# direct methods
.method private constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/Rect;)V
    .locals 1
    .param p6    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p6, Landroid/graphics/Rect;->left:I

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 7
    .line 8
    .line 9
    iget v0, p6, Landroid/graphics/Rect;->top:I

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 12
    .line 13
    .line 14
    iget v0, p6, Landroid/graphics/Rect;->right:I

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 17
    .line 18
    .line 19
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 22
    .line 23
    .line 24
    iput-object p6, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->textColor:Landroid/content/res/ColorStateList;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->backgroundColor:Landroid/content/res/ColorStateList;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeColor:Landroid/content/res/ColorStateList;

    .line 31
    .line 32
    iput p4, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeWidth:I

    .line 33
    .line 34
    iput-object p5, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 35
    .line 36
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    new-array v3, v3, [J

    .line 12
    .line 13
    fill-array-data v3, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem:[I

    .line 27
    .line 28
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetLeft:I

    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetTop:I

    .line 39
    .line 40
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetRight:I

    .line 45
    .line 46
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sget v4, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetBottom:I

    .line 51
    .line 52
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    new-instance v11, Landroid/graphics/Rect;

    .line 57
    .line 58
    invoke-direct {v11, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 59
    .line 60
    .line 61
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemFillColor:I

    .line 62
    .line 63
    invoke-static {p0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemTextColor:I

    .line 68
    .line 69
    invoke-static {p0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemStrokeColor:I

    .line 74
    .line 75
    invoke-static {p0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemStrokeWidth:I

    .line 80
    .line 81
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemShapeAppearance:I

    .line 86
    .line 87
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemShapeAppearanceOverlay:I

    .line 92
    .line 93
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-static {p0, v1, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    .line 107
    .line 108
    new-instance p0, Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 109
    .line 110
    move-object v5, p0

    .line 111
    invoke-direct/range {v5 .. v11}, Lcom/google/android/material/datepicker/CalendarItemStyle;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/Rect;)V

    .line 112
    .line 113
    .line 114
    return-object p0

    .line 115
    :array_0
    .array-data 8
        -0xf39925f6df7e64dL    # -1.782796030225875E235
        -0x36146b9afc0785e6L    # -1.2596164863490795E48
        -0x2a913552384f2c99L    # -3.4482789960812158E103
        0x6060687c0966261fL    # 1.7599778011137904E156
        -0x24e3cab39ca5cd97L    # -7.821201250358893E130
        -0x5359c077b3301220L    # -1.333231973387409E-93
        0x20dc1103da31a90cL
        -0x4e68578d18dffb2cL    # -8.56957141328529E-70
    .end array-data
.end method


# virtual methods
.method public getBottomInset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 4
    .line 5
    return v0
.end method

.method public getLeftInset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    return v0
.end method

.method public getRightInset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 4
    .line 5
    return v0
.end method

.method public getTopInset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 4
    .line 5
    return v0
.end method

.method public styleItem(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/material/datepicker/CalendarItemStyle;->styleItem(Landroid/widget/TextView;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public styleItem(Landroid/widget/TextView;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 8
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 3
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 5
    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->backgroundColor:Landroid/content/res/ColorStateList;

    .line 7
    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 8
    iget p2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeWidth:I

    int-to-float p2, p2

    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p2, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    if-eqz p3, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object p3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->textColor:Landroid/content/res/ColorStateList;

    :goto_1
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 10
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object p2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->textColor:Landroid/content/res/ColorStateList;

    const/16 p3, 0x1e

    invoke-virtual {p2, p3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-direct {v3, p2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 11
    new-instance p2, Landroid/graphics/drawable/InsetDrawable;

    iget-object p3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v5, p3, Landroid/graphics/Rect;->top:I

    iget v6, p3, Landroid/graphics/Rect;->right:I

    iget v7, p3, Landroid/graphics/Rect;->bottom:I

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
