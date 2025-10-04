.class public Lcom/tknetwork/tunnel/view/DurationView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;,
        Lcom/tknetwork/tunnel/view/DurationView$Label;
    }
.end annotation


# instance fields
.field private final DEFAULT_DAYS_LABEL:Ljava/lang/String;

.field private final DEFAULT_DIVIDER_TOP_BOTTOM_MARGIN:F

.field private final DEFAULT_DIVIDER_WIDTH:F

.field private final DEFAULT_HOURS_LABEL:Ljava/lang/String;

.field private final DEFAULT_LABEL_POSITION:I

.field private final DEFAULT_LABEL_TEXT_SIZE:F

.field private final DEFAULT_LABEL_VERTICAL_PADDING:F

.field private final DEFAULT_MINS_LABEL:Ljava/lang/String;

.field private final DEFAULT_NUMBER_TEXT_SIZE:F

.field private final DEFAULT_SECS_LABEL:Ljava/lang/String;

.field private final DEFAULT_SHOW_DIVIERS:Z

.field private final DEFAULT_SHOW_ITEM:Z

.field private final DEFAULT_TEXT_COLOR:I

.field private mCanvasHeight:I

.field private mCanvasWidth:I

.field private mContext:Landroid/content/Context;

.field private mDays:I

.field private mDaysColor:I

.field private mDaysLabel:Ljava/lang/String;

.field private mDaysLabelColor:I

.field private mDaysLabelPaint:Landroid/graphics/Paint;

.field private mDaysPaint:Landroid/graphics/Paint;

.field private mDividersColor:I

.field private mDividersMargin:F

.field private mDividersPaint:Landroid/graphics/Paint;

.field private mDividersWidth:F

.field private mHours:I

.field private mHoursColor:I

.field private mHoursLabel:Ljava/lang/String;

.field private mHoursLabelColor:I

.field private mHoursLabelPaint:Landroid/graphics/Paint;

.field private mHoursPaint:Landroid/graphics/Paint;

.field private mLabelPosition:I

.field private mLabelTextSize:F

.field private mLabelVerticalPadding:F

.field private mLabelsColor:I

.field private mMins:I

.field private mMinsColor:I

.field private mMinsLabel:Ljava/lang/String;

.field private mMinsLabelColor:I

.field private mMinsLabelPaint:Landroid/graphics/Paint;

.field private mMinsPaint:Landroid/graphics/Paint;

.field private mNumberColor:I

.field private mNumberTextSize:F

.field private mSecs:I

.field private mSecsColor:I

.field private mSecsLabel:Ljava/lang/String;

.field private mSecsLabelColor:I

.field private mSecsLabelPaint:Landroid/graphics/Paint;

.field private mSecsPaint:Landroid/graphics/Paint;

.field private mShowDays:Z

.field private mShowDividers:Z

.field private mShowHours:Z

.field private mShowLabels:Z

.field private mShowMins:Z

.field private mShowSecs:Z

.field private mShownBooleans:[Z

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/tknetwork/tunnel/view/DurationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/tknetwork/tunnel/view/DurationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->DEFAULT_DAYS_LABEL:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->DEFAULT_HOURS_LABEL:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_2

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->DEFAULT_MINS_LABEL:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_3

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->DEFAULT_SECS_LABEL:Ljava/lang/String;

    const/high16 v0, 0x41900000    # 18.0f

    .line 8
    iput v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->DEFAULT_NUMBER_TEXT_SIZE:F

    const/high16 v0, 0x41400000    # 12.0f

    .line 9
    iput v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->DEFAULT_LABEL_TEXT_SIZE:F

    .line 10
    sget-object v0, Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;->BOTTOM:Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->DEFAULT_LABEL_POSITION:I

    const/high16 v2, 0x40c00000    # 6.0f

    .line 11
    iput v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->DEFAULT_LABEL_VERTICAL_PADDING:F

    const/high16 v2, -0x1000000

    .line 12
    iput v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->DEFAULT_TEXT_COLOR:I

    const/4 v3, 0x1

    .line 13
    iput-boolean v3, p0, Lcom/tknetwork/tunnel/view/DurationView;->DEFAULT_SHOW_ITEM:Z

    const/4 v4, 0x0

    .line 14
    iput-boolean v4, p0, Lcom/tknetwork/tunnel/view/DurationView;->DEFAULT_SHOW_DIVIERS:Z

    const/high16 v5, 0x40000000    # 2.0f

    .line 15
    iput v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->DEFAULT_DIVIDER_WIDTH:F

    const/high16 v5, 0x40800000    # 4.0f

    .line 16
    iput v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->DEFAULT_DIVIDER_TOP_BOTTOM_MARGIN:F

    .line 17
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v1, [J

    fill-array-data v6, :array_4

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysLabel:Ljava/lang/String;

    .line 18
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v1, [J

    fill-array-data v6, :array_5

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursLabel:Ljava/lang/String;

    .line 19
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v1, [J

    fill-array-data v6, :array_6

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsLabel:Ljava/lang/String;

    .line 20
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_7

    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsLabel:Ljava/lang/String;

    .line 21
    iput v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelPosition:I

    .line 22
    iput v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysColor:I

    .line 23
    iput v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursColor:I

    .line 24
    iput v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsColor:I

    .line 25
    iput v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsColor:I

    .line 26
    iput v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysLabelColor:I

    .line 27
    iput v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursLabelColor:I

    .line 28
    iput v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsLabelColor:I

    .line 29
    iput v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsLabelColor:I

    .line 30
    iput v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberColor:I

    .line 31
    iput v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelsColor:I

    .line 32
    iput v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mTextColor:I

    .line 33
    iput-boolean v3, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowDays:Z

    .line 34
    iput-boolean v3, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowHours:Z

    .line 35
    iput-boolean v3, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowMins:Z

    .line 36
    iput-boolean v3, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowSecs:Z

    .line 37
    iput-boolean v3, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowLabels:Z

    .line 38
    iput-boolean v4, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowDividers:Z

    .line 39
    iput v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDividersColor:I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/tknetwork/tunnel/view/DurationView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void

    :array_0
    .array-data 8
        -0x55078044767bf099L
        -0x7d6d05be63884db5L    # -2.901781662928864E-296
    .end array-data

    :array_1
    .array-data 8
        0x4549aa644ffe1642L    # 6.205559646185997E25
        0xe8af67e969fa0bcL
    .end array-data

    :array_2
    .array-data 8
        -0x76236fd2bf25758L    # -1.007062909150288E273
        -0x205d7db156a15339L    # -4.846978287841499E152
    .end array-data

    :array_3
    .array-data 8
        -0x5db8336b2f243261L
        0x3b3afe10a5677615L    # 2.2327624293841912E-23
    .end array-data

    :array_4
    .array-data 8
        0x42b880a8d897689bL    # 2.6940867647336605E13
        0x282de3d43a4ae5f5L
    .end array-data

    :array_5
    .array-data 8
        0x5bfc729f2b001a2dL    # 1.292307495657506E135
        0x2b65abdb63f30373L    # 1.2385020688697809E-99
    .end array-data

    :array_6
    .array-data 8
        0x446bf02a8044d9fbL    # 4.1229430043318855E21
        0x3b63290afea000a6L    # 1.2679238844171035E-22
    .end array-data

    :array_7
    .array-data 8
        -0x7591e294258b3dacL
        0x40c077de6877540dL    # 8431.73756305317
    .end array-data
.end method

.method private dp2px(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    mul-float p1, p1, v0

    .line 14
    .line 15
    const/high16 v0, 0x3f000000    # 0.5f

    .line 16
    .line 17
    add-float/2addr p1, v0

    .line 18
    float-to-int p1, p1

    .line 19
    return p1
.end method

.method private drawValues(Landroid/graphics/Canvas;IZ)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowLabels:Z

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    :cond_0
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowDays:Z

    .line 10
    .line 11
    if-eqz v2, :cond_5

    .line 12
    .line 13
    iget-object v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysLabel:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0, v2}, Lcom/tknetwork/tunnel/view/DurationView;->isEmptyString(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    new-array v3, v1, [J

    .line 24
    .line 25
    fill-array-data v3, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iput-object v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysLabel:Ljava/lang/String;

    .line 36
    .line 37
    :cond_1
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowLabels:Z

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    iget-object v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysLabel:Ljava/lang/String;

    .line 42
    .line 43
    div-int/lit8 v3, p2, 0x2

    .line 44
    .line 45
    int-to-float v3, v3

    .line 46
    iget v4, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelTextSize:F

    .line 47
    .line 48
    if-eqz p3, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberTextSize:F

    .line 52
    .line 53
    add-float/2addr v4, v5

    .line 54
    iget v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelVerticalPadding:F

    .line 55
    .line 56
    add-float/2addr v4, v5

    .line 57
    :goto_0
    iget-object v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysLabelPaint:Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    iget v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDays:I

    .line 63
    .line 64
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    div-int/lit8 v3, p2, 0x2

    .line 69
    .line 70
    int-to-float v3, v3

    .line 71
    if-eqz p3, :cond_4

    .line 72
    .line 73
    iget v4, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberTextSize:F

    .line 74
    .line 75
    iget v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelTextSize:F

    .line 76
    .line 77
    add-float/2addr v4, v5

    .line 78
    iget v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelVerticalPadding:F

    .line 79
    .line 80
    add-float/2addr v4, v5

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    iget v4, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberTextSize:F

    .line 83
    .line 84
    :goto_1
    iget-object v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysPaint:Landroid/graphics/Paint;

    .line 85
    .line 86
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 87
    .line 88
    .line 89
    const/4 v3, 0x1

    .line 90
    :cond_5
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowHours:Z

    .line 91
    .line 92
    if-eqz v2, :cond_a

    .line 93
    .line 94
    iget-object v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursLabel:Ljava/lang/String;

    .line 95
    .line 96
    invoke-direct {p0, v2}, Lcom/tknetwork/tunnel/view/DurationView;->isEmptyString(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_6

    .line 101
    .line 102
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v4, v1, [J

    .line 105
    .line 106
    fill-array-data v4, :array_1

    .line 107
    .line 108
    .line 109
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iput-object v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursLabel:Ljava/lang/String;

    .line 117
    .line 118
    :cond_6
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowLabels:Z

    .line 119
    .line 120
    if-eqz v2, :cond_8

    .line 121
    .line 122
    iget-object v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursLabel:Ljava/lang/String;

    .line 123
    .line 124
    div-int/lit8 v4, p2, 0x2

    .line 125
    .line 126
    mul-int v5, p2, v3

    .line 127
    .line 128
    add-int/2addr v5, v4

    .line 129
    int-to-float v4, v5

    .line 130
    iget v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelTextSize:F

    .line 131
    .line 132
    if-eqz p3, :cond_7

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_7
    iget v6, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberTextSize:F

    .line 136
    .line 137
    add-float/2addr v5, v6

    .line 138
    iget v6, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelVerticalPadding:F

    .line 139
    .line 140
    add-float/2addr v5, v6

    .line 141
    :goto_2
    iget-object v6, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursLabelPaint:Landroid/graphics/Paint;

    .line 142
    .line 143
    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 144
    .line 145
    .line 146
    :cond_8
    iget v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHours:I

    .line 147
    .line 148
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    div-int/lit8 v4, p2, 0x2

    .line 153
    .line 154
    mul-int v5, p2, v3

    .line 155
    .line 156
    add-int/2addr v5, v4

    .line 157
    int-to-float v4, v5

    .line 158
    iget v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberTextSize:F

    .line 159
    .line 160
    if-eqz p3, :cond_9

    .line 161
    .line 162
    iget v6, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelTextSize:F

    .line 163
    .line 164
    add-float/2addr v5, v6

    .line 165
    iget v6, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelVerticalPadding:F

    .line 166
    .line 167
    add-float/2addr v5, v6

    .line 168
    :cond_9
    iget-object v6, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursPaint:Landroid/graphics/Paint;

    .line 169
    .line 170
    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 171
    .line 172
    .line 173
    add-int/2addr v3, v0

    .line 174
    :cond_a
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowMins:Z

    .line 175
    .line 176
    if-eqz v2, :cond_f

    .line 177
    .line 178
    iget-object v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsLabel:Ljava/lang/String;

    .line 179
    .line 180
    invoke-direct {p0, v2}, Lcom/tknetwork/tunnel/view/DurationView;->isEmptyString(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_b

    .line 185
    .line 186
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 187
    .line 188
    new-array v4, v1, [J

    .line 189
    .line 190
    fill-array-data v4, :array_2

    .line 191
    .line 192
    .line 193
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    iput-object v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsLabel:Ljava/lang/String;

    .line 201
    .line 202
    :cond_b
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowLabels:Z

    .line 203
    .line 204
    if-eqz v2, :cond_d

    .line 205
    .line 206
    iget-object v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsLabel:Ljava/lang/String;

    .line 207
    .line 208
    div-int/lit8 v4, p2, 0x2

    .line 209
    .line 210
    mul-int v5, p2, v3

    .line 211
    .line 212
    add-int/2addr v5, v4

    .line 213
    int-to-float v4, v5

    .line 214
    iget v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelTextSize:F

    .line 215
    .line 216
    if-eqz p3, :cond_c

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_c
    iget v6, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberTextSize:F

    .line 220
    .line 221
    add-float/2addr v5, v6

    .line 222
    iget v6, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelVerticalPadding:F

    .line 223
    .line 224
    add-float/2addr v5, v6

    .line 225
    :goto_3
    iget-object v6, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsLabelPaint:Landroid/graphics/Paint;

    .line 226
    .line 227
    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 228
    .line 229
    .line 230
    :cond_d
    iget v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMins:I

    .line 231
    .line 232
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    div-int/lit8 v4, p2, 0x2

    .line 237
    .line 238
    mul-int v5, p2, v3

    .line 239
    .line 240
    add-int/2addr v5, v4

    .line 241
    int-to-float v4, v5

    .line 242
    iget v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberTextSize:F

    .line 243
    .line 244
    if-eqz p3, :cond_e

    .line 245
    .line 246
    iget v6, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelTextSize:F

    .line 247
    .line 248
    add-float/2addr v5, v6

    .line 249
    iget v6, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelVerticalPadding:F

    .line 250
    .line 251
    add-float/2addr v5, v6

    .line 252
    :cond_e
    iget-object v6, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsPaint:Landroid/graphics/Paint;

    .line 253
    .line 254
    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 255
    .line 256
    .line 257
    add-int/2addr v3, v0

    .line 258
    :cond_f
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowSecs:Z

    .line 259
    .line 260
    if-eqz v0, :cond_14

    .line 261
    .line 262
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsLabel:Ljava/lang/String;

    .line 263
    .line 264
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/view/DurationView;->isEmptyString(Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_10

    .line 269
    .line 270
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 271
    .line 272
    new-array v2, v1, [J

    .line 273
    .line 274
    fill-array-data v2, :array_3

    .line 275
    .line 276
    .line 277
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    iput-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsLabel:Ljava/lang/String;

    .line 285
    .line 286
    :cond_10
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowLabels:Z

    .line 287
    .line 288
    if-eqz v0, :cond_12

    .line 289
    .line 290
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsLabel:Ljava/lang/String;

    .line 291
    .line 292
    div-int/lit8 v2, p2, 0x2

    .line 293
    .line 294
    mul-int v4, p2, v3

    .line 295
    .line 296
    add-int/2addr v4, v2

    .line 297
    int-to-float v2, v4

    .line 298
    iget v4, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelTextSize:F

    .line 299
    .line 300
    if-eqz p3, :cond_11

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_11
    iget v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberTextSize:F

    .line 304
    .line 305
    add-float/2addr v4, v5

    .line 306
    iget v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelVerticalPadding:F

    .line 307
    .line 308
    add-float/2addr v4, v5

    .line 309
    :goto_4
    iget-object v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsLabelPaint:Landroid/graphics/Paint;

    .line 310
    .line 311
    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 312
    .line 313
    .line 314
    :cond_12
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecs:I

    .line 315
    .line 316
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    div-int/lit8 v1, p2, 0x2

    .line 321
    .line 322
    mul-int p2, p2, v3

    .line 323
    .line 324
    add-int/2addr p2, v1

    .line 325
    int-to-float p2, p2

    .line 326
    if-eqz p3, :cond_13

    .line 327
    .line 328
    iget p3, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberTextSize:F

    .line 329
    .line 330
    iget v1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelTextSize:F

    .line 331
    .line 332
    add-float/2addr p3, v1

    .line 333
    iget v1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelVerticalPadding:F

    .line 334
    .line 335
    add-float/2addr p3, v1

    .line 336
    goto :goto_5

    .line 337
    :cond_13
    iget p3, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberTextSize:F

    .line 338
    .line 339
    :goto_5
    iget-object v1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsPaint:Landroid/graphics/Paint;

    .line 340
    .line 341
    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 342
    .line 343
    .line 344
    :cond_14
    return-void

    .line 345
    :array_0
    .array-data 8
        0x71fd52474ed15850L    # 1.2219720137866576E241
        0xf0429707de3208bL    # 2.476990161477997E-236
    .end array-data

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    :array_1
    .array-data 8
        0x4b99674292638180L    # 1.5572214096741528E56
        0x18c4ba9ea37ea6L
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :array_2
    .array-data 8
        -0x4db04c27a3f3291bL    # -2.3518236535446996E-66
        -0x63af2d9220d861b6L    # -2.720569555360097E-172
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    :array_3
    .array-data 8
        0x4574ba15a17878d5L    # 4.0091640919863006E26
        -0x5c1c458020e921fbL    # -8.482157476926104E-136
    .end array-data
.end method

.method private generatePaints()V
    .locals 7

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/view/DurationView$Label;->DAYS:Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/tknetwork/tunnel/view/DurationView;->setPaintForValue(Lcom/tknetwork/tunnel/view/DurationView$Label;Z)Landroid/graphics/Paint;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iput-object v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysPaint:Landroid/graphics/Paint;

    .line 9
    .line 10
    sget-object v2, Lcom/tknetwork/tunnel/view/DurationView$Label;->HOURS:Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 11
    .line 12
    invoke-direct {p0, v2, v1}, Lcom/tknetwork/tunnel/view/DurationView;->setPaintForValue(Lcom/tknetwork/tunnel/view/DurationView$Label;Z)Landroid/graphics/Paint;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iput-object v3, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursPaint:Landroid/graphics/Paint;

    .line 17
    .line 18
    sget-object v3, Lcom/tknetwork/tunnel/view/DurationView$Label;->MINS:Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 19
    .line 20
    invoke-direct {p0, v3, v1}, Lcom/tknetwork/tunnel/view/DurationView;->setPaintForValue(Lcom/tknetwork/tunnel/view/DurationView$Label;Z)Landroid/graphics/Paint;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iput-object v4, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsPaint:Landroid/graphics/Paint;

    .line 25
    .line 26
    sget-object v4, Lcom/tknetwork/tunnel/view/DurationView$Label;->SECS:Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 27
    .line 28
    invoke-direct {p0, v4, v1}, Lcom/tknetwork/tunnel/view/DurationView;->setPaintForValue(Lcom/tknetwork/tunnel/view/DurationView$Label;Z)Landroid/graphics/Paint;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iput-object v5, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsPaint:Landroid/graphics/Paint;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-direct {p0, v0, v5}, Lcom/tknetwork/tunnel/view/DurationView;->setPaintForValue(Lcom/tknetwork/tunnel/view/DurationView$Label;Z)Landroid/graphics/Paint;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysLabelPaint:Landroid/graphics/Paint;

    .line 40
    .line 41
    invoke-direct {p0, v2, v5}, Lcom/tknetwork/tunnel/view/DurationView;->setPaintForValue(Lcom/tknetwork/tunnel/view/DurationView$Label;Z)Landroid/graphics/Paint;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursLabelPaint:Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-direct {p0, v3, v5}, Lcom/tknetwork/tunnel/view/DurationView;->setPaintForValue(Lcom/tknetwork/tunnel/view/DurationView$Label;Z)Landroid/graphics/Paint;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsLabelPaint:Landroid/graphics/Paint;

    .line 52
    .line 53
    invoke-direct {p0, v4, v5}, Lcom/tknetwork/tunnel/view/DurationView;->setPaintForValue(Lcom/tknetwork/tunnel/view/DurationView$Label;Z)Landroid/graphics/Paint;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsLabelPaint:Landroid/graphics/Paint;

    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowDividers:Z

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/DurationView;->setPaintForDivider()Landroid/graphics/Paint;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDividersPaint:Landroid/graphics/Paint;

    .line 68
    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowDays:Z

    .line 70
    .line 71
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowHours:Z

    .line 72
    .line 73
    iget-boolean v3, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowMins:Z

    .line 74
    .line 75
    iget-boolean v4, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowSecs:Z

    .line 76
    .line 77
    const/4 v6, 0x4

    .line 78
    new-array v6, v6, [Z

    .line 79
    .line 80
    aput-boolean v0, v6, v5

    .line 81
    .line 82
    aput-boolean v2, v6, v1

    .line 83
    .line 84
    const/4 v0, 0x2

    .line 85
    aput-boolean v3, v6, v0

    .line 86
    .line 87
    const/4 v0, 0x3

    .line 88
    aput-boolean v4, v6, v0

    .line 89
    .line 90
    iput-object v6, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShownBooleans:[Z

    .line 91
    .line 92
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v0, Lcom/v2ray/ang/R$styleable;->DurationView:[I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iput p2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDays:I

    .line 15
    .line 16
    const/4 p2, 0x7

    .line 17
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iput p2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHours:I

    .line 22
    .line 23
    const/16 p2, 0xf

    .line 24
    .line 25
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    iput p2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMins:I

    .line 30
    .line 31
    const/16 p2, 0x15

    .line 32
    .line 33
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iput p2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecs:I

    .line 38
    .line 39
    const/4 p2, 0x2

    .line 40
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysLabel:Ljava/lang/String;

    .line 45
    .line 46
    const/16 p2, 0x9

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iput-object p2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursLabel:Ljava/lang/String;

    .line 53
    .line 54
    const/16 p2, 0x11

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsLabel:Ljava/lang/String;

    .line 61
    .line 62
    const/16 p2, 0x17

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iput-object p2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsLabel:Ljava/lang/String;

    .line 69
    .line 70
    const/high16 p2, 0x41900000    # 18.0f

    .line 71
    .line 72
    invoke-direct {p0, p2}, Lcom/tknetwork/tunnel/view/DurationView;->dp2px(F)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    int-to-float p2, p2

    .line 77
    const/16 p3, 0x14

    .line 78
    .line 79
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    iput p2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberTextSize:F

    .line 84
    .line 85
    const/high16 p2, 0x41400000    # 12.0f

    .line 86
    .line 87
    invoke-direct {p0, p2}, Lcom/tknetwork/tunnel/view/DurationView;->dp2px(F)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    int-to-float p2, p2

    .line 92
    const/16 p3, 0xd

    .line 93
    .line 94
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    iput p2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelTextSize:F

    .line 99
    .line 100
    const/16 p2, 0xc

    .line 101
    .line 102
    iget p3, p0, Lcom/tknetwork/tunnel/view/DurationView;->DEFAULT_LABEL_POSITION:I

    .line 103
    .line 104
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    iput p2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelPosition:I

    .line 109
    .line 110
    const/high16 p2, 0x40c00000    # 6.0f

    .line 111
    .line 112
    invoke-direct {p0, p2}, Lcom/tknetwork/tunnel/view/DurationView;->dp2px(F)I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    int-to-float p2, p2

    .line 117
    const/16 p3, 0xe

    .line 118
    .line 119
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    iput p2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelVerticalPadding:F

    .line 124
    .line 125
    const/4 p2, 0x1

    .line 126
    const/high16 p3, -0x1000000

    .line 127
    .line 128
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iput v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysColor:I

    .line 133
    .line 134
    const/16 v0, 0x8

    .line 135
    .line 136
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    iput v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursColor:I

    .line 141
    .line 142
    const/16 v0, 0x10

    .line 143
    .line 144
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iput v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsColor:I

    .line 149
    .line 150
    const/16 v0, 0x16

    .line 151
    .line 152
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    iput v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsColor:I

    .line 157
    .line 158
    const/4 v0, 0x3

    .line 159
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    iput v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysLabelColor:I

    .line 164
    .line 165
    const/16 v0, 0xa

    .line 166
    .line 167
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    iput v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursLabelColor:I

    .line 172
    .line 173
    const/16 v0, 0x12

    .line 174
    .line 175
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    iput v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsLabelColor:I

    .line 180
    .line 181
    const/16 v0, 0x18

    .line 182
    .line 183
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    iput v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsLabelColor:I

    .line 188
    .line 189
    const/16 v0, 0x13

    .line 190
    .line 191
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    iput v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberColor:I

    .line 196
    .line 197
    const/16 v0, 0xb

    .line 198
    .line 199
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    iput v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelsColor:I

    .line 204
    .line 205
    const/16 v0, 0x1f

    .line 206
    .line 207
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    iput v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mTextColor:I

    .line 212
    .line 213
    const/16 v0, 0x19

    .line 214
    .line 215
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowDays:Z

    .line 220
    .line 221
    const/16 v0, 0x1b

    .line 222
    .line 223
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowHours:Z

    .line 228
    .line 229
    const/16 v0, 0x1d

    .line 230
    .line 231
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowMins:Z

    .line 236
    .line 237
    const/16 v0, 0x1e

    .line 238
    .line 239
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowSecs:Z

    .line 244
    .line 245
    const/16 v0, 0x1c

    .line 246
    .line 247
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    iput-boolean p2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowLabels:Z

    .line 252
    .line 253
    const/16 p2, 0x1a

    .line 254
    .line 255
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 256
    .line 257
    .line 258
    move-result p2

    .line 259
    iput-boolean p2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowDividers:Z

    .line 260
    .line 261
    const/high16 p2, 0x40000000    # 2.0f

    .line 262
    .line 263
    invoke-direct {p0, p2}, Lcom/tknetwork/tunnel/view/DurationView;->dp2px(F)I

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    int-to-float p2, p2

    .line 268
    const/4 v0, 0x6

    .line 269
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 270
    .line 271
    .line 272
    move-result p2

    .line 273
    iput p2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDividersWidth:F

    .line 274
    .line 275
    const/4 p2, 0x4

    .line 276
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 277
    .line 278
    .line 279
    move-result p2

    .line 280
    iput p2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDividersColor:I

    .line 281
    .line 282
    const/high16 p2, 0x40800000    # 4.0f

    .line 283
    .line 284
    invoke-direct {p0, p2}, Lcom/tknetwork/tunnel/view/DurationView;->dp2px(F)I

    .line 285
    .line 286
    .line 287
    move-result p2

    .line 288
    int-to-float p2, p2

    .line 289
    const/4 p3, 0x5

    .line 290
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 291
    .line 292
    .line 293
    move-result p2

    .line 294
    iput p2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDividersMargin:F

    .line 295
    .line 296
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    .line 298
    .line 299
    return-void
.end method

.method private isEmptyString(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 13
    :goto_1
    return p1
.end method

.method private setPaintForDivider()Landroid/graphics/Paint;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDividersColor:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method private setPaintForValue(Lcom/tknetwork/tunnel/view/DurationView$Label;Z)Landroid/graphics/Paint;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mTextColor:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    .line 10
    .line 11
    const/high16 v1, -0x1000000

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberColor:I

    .line 16
    .line 17
    if-eq v2, v1, :cond_0

    .line 18
    .line 19
    iget v3, p0, Lcom/tknetwork/tunnel/view/DurationView;->mTextColor:I

    .line 20
    .line 21
    if-ne v2, v3, :cond_1

    .line 22
    .line 23
    :cond_0
    if-nez p2, :cond_3

    .line 24
    .line 25
    iget v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelsColor:I

    .line 26
    .line 27
    if-eq v2, v1, :cond_3

    .line 28
    .line 29
    iget v3, p0, Lcom/tknetwork/tunnel/view/DurationView;->mTextColor:I

    .line 30
    .line 31
    if-eq v2, v3, :cond_3

    .line 32
    .line 33
    :cond_1
    if-eqz p2, :cond_2

    .line 34
    .line 35
    iget v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberColor:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget v2, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelsColor:I

    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 v2, 0x1

    .line 48
    if-eqz p1, :cond_10

    .line 49
    .line 50
    if-eq p1, v2, :cond_c

    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    if-eq p1, v3, :cond_8

    .line 54
    .line 55
    const/4 v3, 0x3

    .line 56
    if-eq p1, v3, :cond_4

    .line 57
    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :cond_4
    if-eqz p2, :cond_5

    .line 61
    .line 62
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsColor:I

    .line 63
    .line 64
    if-ne p1, v1, :cond_6

    .line 65
    .line 66
    :cond_5
    if-nez p2, :cond_14

    .line 67
    .line 68
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsLabelColor:I

    .line 69
    .line 70
    if-eq p1, v1, :cond_14

    .line 71
    .line 72
    :cond_6
    if-eqz p2, :cond_7

    .line 73
    .line 74
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsColor:I

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_7
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsLabelColor:I

    .line 78
    .line 79
    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_8
    if-eqz p2, :cond_9

    .line 84
    .line 85
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsColor:I

    .line 86
    .line 87
    if-ne p1, v1, :cond_a

    .line 88
    .line 89
    :cond_9
    if-nez p2, :cond_14

    .line 90
    .line 91
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsLabelColor:I

    .line 92
    .line 93
    if-eq p1, v1, :cond_14

    .line 94
    .line 95
    :cond_a
    if-eqz p2, :cond_b

    .line 96
    .line 97
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsColor:I

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_b
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsLabelColor:I

    .line 101
    .line 102
    :goto_2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_c
    if-eqz p2, :cond_d

    .line 107
    .line 108
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursColor:I

    .line 109
    .line 110
    if-ne p1, v1, :cond_e

    .line 111
    .line 112
    :cond_d
    if-nez p2, :cond_14

    .line 113
    .line 114
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursLabelColor:I

    .line 115
    .line 116
    if-eq p1, v1, :cond_14

    .line 117
    .line 118
    :cond_e
    if-eqz p2, :cond_f

    .line 119
    .line 120
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursColor:I

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_f
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursLabelColor:I

    .line 124
    .line 125
    :goto_3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_10
    if-eqz p2, :cond_11

    .line 130
    .line 131
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysColor:I

    .line 132
    .line 133
    if-ne p1, v1, :cond_12

    .line 134
    .line 135
    :cond_11
    if-nez p2, :cond_14

    .line 136
    .line 137
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysLabelColor:I

    .line 138
    .line 139
    if-eq p1, v1, :cond_14

    .line 140
    .line 141
    :cond_12
    if-eqz p2, :cond_13

    .line 142
    .line 143
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysColor:I

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_13
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysLabelColor:I

    .line 147
    .line 148
    :goto_4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    .line 150
    .line 151
    :cond_14
    :goto_5
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 152
    .line 153
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 154
    .line 155
    .line 156
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 157
    .line 158
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    .line 163
    .line 164
    if-eqz p2, :cond_15

    .line 165
    .line 166
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberTextSize:F

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_15
    iget p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelTextSize:F

    .line 170
    .line 171
    :goto_6
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 172
    .line 173
    .line 174
    return-object v0
.end method

.method private sp2px(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 12
    .line 13
    mul-float p1, p1, v0

    .line 14
    .line 15
    const/high16 v0, 0x3f000000    # 0.5f

    .line 16
    .line 17
    add-float/2addr p1, v0

    .line 18
    float-to-int p1, p1

    .line 19
    return p1
.end method


# virtual methods
.method public getDays()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDays:I

    .line 2
    .line 3
    return v0
.end method

.method public getDaysColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getDaysLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysLabel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDaysLabelColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysLabelColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getDividersColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDividersColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getDividersMargin()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDividersMargin:F

    .line 2
    .line 3
    return v0
.end method

.method public getDividersWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDividersWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public getHours()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHours:I

    .line 2
    .line 3
    return v0
.end method

.method public getHoursColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getHoursLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursLabel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHoursLabelColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursLabelColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getLabelPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelPosition:I

    .line 2
    .line 3
    return v0
.end method

.method public getLabelTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelTextSize:F

    .line 2
    .line 3
    return v0
.end method

.method public getLabelVerticalPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelVerticalPadding:F

    .line 2
    .line 3
    return v0
.end method

.method public getLabelsColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelsColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getMins()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMins:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinsColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinsLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsLabel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMinsLabelColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsLabelColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getNumberColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getNumberTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberTextSize:F

    .line 2
    .line 3
    return v0
.end method

.method public getSecs()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecs:I

    .line 2
    .line 3
    return v0
.end method

.method public getSecsColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getSecsLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsLabel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSecsLabelColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsLabelColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mTextColor:I

    .line 2
    .line 3
    return v0
.end method

.method public isShowDays()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowDays:Z

    .line 2
    .line 3
    return v0
.end method

.method public isShowDividers()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowDividers:Z

    .line 2
    .line 3
    return v0
.end method

.method public isShowHours()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowHours:Z

    .line 2
    .line 3
    return v0
.end method

.method public isShowLabels()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowLabels:Z

    .line 2
    .line 3
    return v0
.end method

.method public isShowMins()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowMins:Z

    .line 2
    .line 3
    return v0
.end method

.method public isShowSecs()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowSecs:Z

    .line 2
    .line 3
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/DurationView;->generatePaints()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mCanvasWidth:I

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mCanvasHeight:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShownBooleans:[Z

    .line 17
    .line 18
    array-length v1, v0

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_0
    if-ge v3, v1, :cond_0

    .line 23
    .line 24
    aget-boolean v5, v0, v3

    .line 25
    .line 26
    add-int/2addr v4, v5

    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-eqz v4, :cond_3

    .line 31
    .line 32
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mCanvasWidth:I

    .line 33
    .line 34
    div-int/2addr v0, v4

    .line 35
    iget v1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelPosition:I

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    if-eq v1, v3, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-direct {p0, p1, v0, v2}, Lcom/tknetwork/tunnel/view/DurationView;->drawValues(Landroid/graphics/Canvas;IZ)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-direct {p0, p1, v0, v3}, Lcom/tknetwork/tunnel/view/DurationView;->drawValues(Landroid/graphics/Canvas;IZ)V

    .line 48
    .line 49
    .line 50
    :goto_1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowDividers:Z

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDividersPaint:Landroid/graphics/Paint;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    :goto_2
    add-int/lit8 v0, v4, -0x1

    .line 59
    .line 60
    if-ge v2, v0, :cond_3

    .line 61
    .line 62
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mCanvasWidth:I

    .line 63
    .line 64
    div-int v1, v0, v4

    .line 65
    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    mul-int v1, v1, v2

    .line 69
    .line 70
    int-to-float v1, v1

    .line 71
    iget v3, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDividersWidth:F

    .line 72
    .line 73
    const/high16 v5, 0x40000000    # 2.0f

    .line 74
    .line 75
    div-float v6, v3, v5

    .line 76
    .line 77
    sub-float v8, v1, v6

    .line 78
    .line 79
    iget v9, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDividersMargin:F

    .line 80
    .line 81
    div-int/2addr v0, v4

    .line 82
    mul-int v0, v0, v2

    .line 83
    .line 84
    int-to-float v0, v0

    .line 85
    div-float/2addr v3, v5

    .line 86
    add-float v10, v3, v0

    .line 87
    .line 88
    iget v0, p0, Lcom/tknetwork/tunnel/view/DurationView;->mCanvasHeight:I

    .line 89
    .line 90
    int-to-float v0, v0

    .line 91
    sub-float v11, v0, v9

    .line 92
    .line 93
    iget-object v12, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDividersPaint:Landroid/graphics/Paint;

    .line 94
    .line 95
    move-object v7, p1

    .line 96
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    return-void
.end method

.method public setDays(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDays:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDaysColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDaysLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysLabel:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDaysLabelColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDaysLabelColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDividersColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDividersColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDividersMargin(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDividersMargin:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDividersWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mDividersWidth:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHours(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHours:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHoursColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHoursLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursLabel:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHoursLabelColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mHoursLabelColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLabelPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelPosition:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLabelTextSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelTextSize:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLabelVerticalPadding(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelVerticalPadding:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLabelsColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mLabelsColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMins(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMins:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMinsColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMinsLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsLabel:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMinsLabelColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mMinsLabelColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setNumberColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setNumberTextSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mNumberTextSize:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSecs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecs:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSecsColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSecsLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsLabel:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSecsLabelColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mSecsLabelColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowDays(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowDays:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowDividers(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowDividers:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowHours(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowHours:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowLabels(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowLabels:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowMins(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowMins:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowSecs(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mShowSecs:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/DurationView;->mTextColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
