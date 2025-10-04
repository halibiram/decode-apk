.class public Lcom/github/mikephil/charting/components/Legend;
.super Lcom/github/mikephil/charting/components/ComponentBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/Legend$LegendDirection;,
        Lcom/github/mikephil/charting/components/Legend$LegendOrientation;,
        Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;,
        Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;,
        Lcom/github/mikephil/charting/components/Legend$LegendForm;,
        Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    }
.end annotation


# instance fields
.field private mCalculatedLabelBreakPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCalculatedLabelSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/utils/FSize;",
            ">;"
        }
    .end annotation
.end field

.field private mCalculatedLineSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/utils/FSize;",
            ">;"
        }
    .end annotation
.end field

.field private mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

.field private mDrawInside:Z

.field private mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

.field private mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

.field private mFormLineDashEffect:Landroid/graphics/DashPathEffect;

.field private mFormLineWidth:F

.field private mFormSize:F

.field private mFormToTextSpace:F

.field private mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

.field private mIsLegendCustom:Z

.field private mMaxSizePercent:F

.field public mNeededHeight:F

.field public mNeededWidth:F

.field private mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

.field private mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field private mStackSpace:F

.field public mTextHeightMax:F

.field public mTextWidthMax:F

.field private mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

.field private mWordWrapEnabled:Z

.field private mXEntrySpace:F

.field private mYEntrySpace:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 3
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    .line 4
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 5
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->BOTTOM:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 6
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 7
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDrawInside:Z

    .line 8
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 9
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->SQUARE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/high16 v1, 0x41000000    # 8.0f

    .line 10
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 11
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineWidth:F

    const/4 v2, 0x0

    .line 12
    iput-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineDashEffect:Landroid/graphics/DashPathEffect;

    const/high16 v2, 0x40c00000    # 6.0f

    .line 13
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    const/4 v2, 0x0

    .line 14
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    const/high16 v3, 0x40a00000    # 5.0f

    .line 15
    iput v3, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    .line 16
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    const v4, 0x3f733333    # 0.95f

    .line 17
    iput v4, p0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    .line 18
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 19
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 20
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    .line 21
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 22
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    const/high16 v0, 0x41200000    # 10.0f

    .line 26
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    .line 27
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    .line 28
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertIntegers(Ljava/util/List;)[I

    move-result-object p1

    invoke-static {p2}, Lcom/github/mikephil/charting/utils/Utils;->convertStrings(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/components/Legend;-><init>([I[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/String;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/Legend;-><init>()V

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 33
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_4

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 35
    :goto_0
    array-length v2, p1

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 36
    new-instance v2, Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-direct {v2}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>()V

    .line 37
    aget v3, p1, v1

    iput v3, v2, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    .line 38
    aget-object v4, p2, v1

    iput-object v4, v2, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    const v4, 0x112234

    if-ne v3, v4, :cond_0

    .line 39
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v3, v2, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    goto :goto_1

    :cond_0
    const v4, 0x112233

    if-eq v3, v4, :cond_1

    if-nez v3, :cond_2

    .line 40
    :cond_1
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->EMPTY:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v3, v2, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 41
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    return-void

    .line 43
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        -0x3178cfc95afd93d1L    # -2.000499977011403E70
        -0x885492de98c6bb8L
        0x58ebd744001ad730L
        0xdd818026f145f4fL
        -0x34f5c2bd55b2d25eL    # -3.1415318685415703E53
        0x69856aaab0077032L    # 2.049174852910976E200
        0x2a3c46f7c066ae70L
        -0x1371307af5ae4444L    # -8.29788509775018E214
    .end array-data

    :array_1
    .array-data 8
        0x54b777862d0df944L
        0x798613d6ac368578L    # 2.445996363685287E277
        -0x1f5d0a31c7d217daL    # -3.2539446236504715E157
        0x5c7442fce9465508L    # 2.356314808275874E137
        0x43f45de812c00c95L    # 2.3481347533148082E19
        0x778599d794bd600aL    # 5.572100346604112E267
    .end array-data
.end method

.method public constructor <init>([Lcom/github/mikephil/charting/components/LegendEntry;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/Legend;-><init>()V

    if-eqz p1, :cond_0

    .line 30
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        0x1c50d7c064ed0fd6L    # 2.723931931189022E-172
        0x171be85b51797a5dL
        0x3fe15e91b371eea4L    # 0.542794085005387
        0x3ae5bf1c558f3e30L    # 5.62134524276789E-25
    .end array-data
.end method


# virtual methods
.method public calculateDimensions(Landroid/graphics/Paint;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 6
    .line 7
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget v3, v0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    .line 12
    .line 13
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget v4, v0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    .line 18
    .line 19
    invoke-static {v4}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iget v5, v0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    .line 24
    .line 25
    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    iget v6, v0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    .line 30
    .line 31
    invoke-static {v6}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    iget-boolean v7, v0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    .line 36
    .line 37
    iget-object v8, v0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 38
    .line 39
    array-length v9, v8

    .line 40
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryWidth(Landroid/graphics/Paint;)F

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    iput v10, v0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 45
    .line 46
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryHeight(Landroid/graphics/Paint;)F

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    iput v10, v0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    .line 51
    .line 52
    sget-object v10, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation:[I

    .line 53
    .line 54
    iget-object v11, v0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 55
    .line 56
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    aget v10, v10, v11

    .line 61
    .line 62
    const/4 v12, 0x1

    .line 63
    if-eq v10, v12, :cond_12

    .line 64
    .line 65
    const/4 v14, 0x2

    .line 66
    if-eq v10, v14, :cond_0

    .line 67
    .line 68
    goto/16 :goto_13

    .line 69
    .line 70
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/utils/Utils;->getLineHeight(Landroid/graphics/Paint;)F

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/utils/Utils;->getLineSpacing(Landroid/graphics/Paint;)F

    .line 75
    .line 76
    .line 77
    move-result v14

    .line 78
    add-float/2addr v14, v6

    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    iget v15, v0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    .line 84
    .line 85
    mul-float v6, v6, v15

    .line 86
    .line 87
    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 90
    .line 91
    .line 92
    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 95
    .line 96
    .line 97
    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 100
    .line 101
    .line 102
    const/4 v11, 0x0

    .line 103
    const/4 v12, 0x0

    .line 104
    const/4 v13, -0x1

    .line 105
    const/16 v17, 0x0

    .line 106
    .line 107
    const/16 v18, 0x0

    .line 108
    .line 109
    :goto_0
    if-ge v11, v9, :cond_10

    .line 110
    .line 111
    aget-object v15, v8, v11

    .line 112
    .line 113
    move/from16 v19, v2

    .line 114
    .line 115
    iget-object v2, v15, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 116
    .line 117
    move/from16 v20, v5

    .line 118
    .line 119
    sget-object v5, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 120
    .line 121
    if-eq v2, v5, :cond_1

    .line 122
    .line 123
    const/4 v2, 0x1

    .line 124
    goto :goto_1

    .line 125
    :cond_1
    const/4 v2, 0x0

    .line 126
    :goto_1
    iget v5, v15, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 127
    .line 128
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_2

    .line 133
    .line 134
    move/from16 v5, v19

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_2
    iget v5, v15, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 138
    .line 139
    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    :goto_2
    iget-object v15, v15, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 144
    .line 145
    move-object/from16 v21, v8

    .line 146
    .line 147
    iget-object v8, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    .line 148
    .line 149
    move/from16 v22, v14

    .line 150
    .line 151
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 152
    .line 153
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    const/4 v8, -0x1

    .line 157
    if-ne v13, v8, :cond_3

    .line 158
    .line 159
    const/4 v8, 0x0

    .line 160
    goto :goto_3

    .line 161
    :cond_3
    add-float v8, v17, v3

    .line 162
    .line 163
    :goto_3
    if-eqz v15, :cond_5

    .line 164
    .line 165
    iget-object v14, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    .line 166
    .line 167
    move/from16 v17, v3

    .line 168
    .line 169
    invoke-static {v1, v15}, Lcom/github/mikephil/charting/utils/Utils;->calcTextSize(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/utils/FSize;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    if-eqz v2, :cond_4

    .line 177
    .line 178
    add-float v2, v4, v5

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_4
    const/4 v2, 0x0

    .line 182
    :goto_4
    add-float/2addr v8, v2

    .line 183
    iget-object v2, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    .line 184
    .line 185
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Lcom/github/mikephil/charting/utils/FSize;

    .line 190
    .line 191
    iget v2, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    .line 192
    .line 193
    add-float/2addr v8, v2

    .line 194
    goto :goto_6

    .line 195
    :cond_5
    move/from16 v17, v3

    .line 196
    .line 197
    iget-object v3, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    .line 198
    .line 199
    move/from16 v23, v5

    .line 200
    .line 201
    const/4 v14, 0x0

    .line 202
    invoke-static {v14, v14}, Lcom/github/mikephil/charting/utils/FSize;->getInstance(FF)Lcom/github/mikephil/charting/utils/FSize;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    if-eqz v2, :cond_6

    .line 210
    .line 211
    move/from16 v5, v23

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_6
    const/4 v5, 0x0

    .line 215
    :goto_5
    add-float/2addr v8, v5

    .line 216
    const/4 v2, -0x1

    .line 217
    if-ne v13, v2, :cond_7

    .line 218
    .line 219
    move v13, v11

    .line 220
    :cond_7
    :goto_6
    if-nez v15, :cond_8

    .line 221
    .line 222
    add-int/lit8 v2, v9, -0x1

    .line 223
    .line 224
    if-ne v11, v2, :cond_9

    .line 225
    .line 226
    :cond_8
    move/from16 v2, v18

    .line 227
    .line 228
    const/4 v14, 0x0

    .line 229
    goto :goto_7

    .line 230
    :cond_9
    const/4 v14, 0x0

    .line 231
    goto :goto_c

    .line 232
    :goto_7
    cmpl-float v3, v2, v14

    .line 233
    .line 234
    if-nez v3, :cond_a

    .line 235
    .line 236
    const/4 v5, 0x0

    .line 237
    goto :goto_8

    .line 238
    :cond_a
    move/from16 v5, v20

    .line 239
    .line 240
    :goto_8
    if-eqz v7, :cond_d

    .line 241
    .line 242
    if-eqz v3, :cond_d

    .line 243
    .line 244
    sub-float v3, v6, v2

    .line 245
    .line 246
    add-float v16, v5, v8

    .line 247
    .line 248
    cmpl-float v3, v3, v16

    .line 249
    .line 250
    if-ltz v3, :cond_b

    .line 251
    .line 252
    goto :goto_a

    .line 253
    :cond_b
    iget-object v3, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    .line 254
    .line 255
    invoke-static {v2, v10}, Lcom/github/mikephil/charting/utils/FSize;->getInstance(FF)Lcom/github/mikephil/charting/utils/FSize;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    invoke-static {v12, v2}, Ljava/lang/Math;->max(FF)F

    .line 263
    .line 264
    .line 265
    move-result v12

    .line 266
    iget-object v2, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    .line 267
    .line 268
    const/4 v3, -0x1

    .line 269
    if-le v13, v3, :cond_c

    .line 270
    .line 271
    move v5, v13

    .line 272
    goto :goto_9

    .line 273
    :cond_c
    move v5, v11

    .line 274
    :goto_9
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 275
    .line 276
    invoke-interface {v2, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move v5, v8

    .line 280
    goto :goto_b

    .line 281
    :cond_d
    :goto_a
    add-float/2addr v5, v8

    .line 282
    add-float/2addr v5, v2

    .line 283
    :goto_b
    add-int/lit8 v2, v9, -0x1

    .line 284
    .line 285
    if-ne v11, v2, :cond_e

    .line 286
    .line 287
    iget-object v2, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    .line 288
    .line 289
    invoke-static {v5, v10}, Lcom/github/mikephil/charting/utils/FSize;->getInstance(FF)Lcom/github/mikephil/charting/utils/FSize;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    invoke-static {v12, v5}, Ljava/lang/Math;->max(FF)F

    .line 297
    .line 298
    .line 299
    move-result v12

    .line 300
    :cond_e
    move/from16 v18, v5

    .line 301
    .line 302
    :goto_c
    if-eqz v15, :cond_f

    .line 303
    .line 304
    const/4 v13, -0x1

    .line 305
    :cond_f
    add-int/lit8 v11, v11, 0x1

    .line 306
    .line 307
    move/from16 v3, v17

    .line 308
    .line 309
    move/from16 v2, v19

    .line 310
    .line 311
    move/from16 v5, v20

    .line 312
    .line 313
    move/from16 v14, v22

    .line 314
    .line 315
    move/from16 v17, v8

    .line 316
    .line 317
    move-object/from16 v8, v21

    .line 318
    .line 319
    goto/16 :goto_0

    .line 320
    .line 321
    :cond_10
    move/from16 v22, v14

    .line 322
    .line 323
    iput v12, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 324
    .line 325
    iget-object v1, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    .line 326
    .line 327
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    int-to-float v1, v1

    .line 332
    mul-float v10, v10, v1

    .line 333
    .line 334
    iget-object v1, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    .line 335
    .line 336
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-nez v1, :cond_11

    .line 341
    .line 342
    const/4 v11, 0x0

    .line 343
    goto :goto_d

    .line 344
    :cond_11
    iget-object v1, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    .line 345
    .line 346
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    const/4 v2, 0x1

    .line 351
    add-int/lit8 v11, v1, -0x1

    .line 352
    .line 353
    :goto_d
    int-to-float v1, v11

    .line 354
    mul-float v14, v22, v1

    .line 355
    .line 356
    add-float/2addr v14, v10

    .line 357
    iput v14, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 358
    .line 359
    goto/16 :goto_13

    .line 360
    .line 361
    :cond_12
    move/from16 v19, v2

    .line 362
    .line 363
    move/from16 v17, v3

    .line 364
    .line 365
    move-object/from16 v21, v8

    .line 366
    .line 367
    const/4 v2, 0x1

    .line 368
    const/4 v14, 0x0

    .line 369
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/utils/Utils;->getLineHeight(Landroid/graphics/Paint;)F

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    const/4 v5, 0x0

    .line 374
    const/4 v7, 0x0

    .line 375
    const/4 v8, 0x0

    .line 376
    const/4 v10, 0x0

    .line 377
    const/4 v11, 0x0

    .line 378
    :goto_e
    if-ge v10, v9, :cond_1d

    .line 379
    .line 380
    aget-object v12, v21, v10

    .line 381
    .line 382
    iget-object v13, v12, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 383
    .line 384
    sget-object v15, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 385
    .line 386
    if-eq v13, v15, :cond_13

    .line 387
    .line 388
    const/4 v13, 0x1

    .line 389
    goto :goto_f

    .line 390
    :cond_13
    const/4 v13, 0x0

    .line 391
    :goto_f
    iget v15, v12, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 392
    .line 393
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    .line 394
    .line 395
    .line 396
    move-result v15

    .line 397
    if-eqz v15, :cond_14

    .line 398
    .line 399
    move/from16 v15, v19

    .line 400
    .line 401
    goto :goto_10

    .line 402
    :cond_14
    iget v15, v12, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 403
    .line 404
    invoke-static {v15}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 405
    .line 406
    .line 407
    move-result v15

    .line 408
    :goto_10
    iget-object v12, v12, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 409
    .line 410
    if-nez v11, :cond_15

    .line 411
    .line 412
    const/4 v8, 0x0

    .line 413
    :cond_15
    if-eqz v13, :cond_17

    .line 414
    .line 415
    if-eqz v11, :cond_16

    .line 416
    .line 417
    add-float v8, v8, v17

    .line 418
    .line 419
    :cond_16
    add-float/2addr v8, v15

    .line 420
    :cond_17
    if-eqz v12, :cond_1a

    .line 421
    .line 422
    if-eqz v13, :cond_18

    .line 423
    .line 424
    if-nez v11, :cond_18

    .line 425
    .line 426
    add-float/2addr v8, v4

    .line 427
    goto :goto_11

    .line 428
    :cond_18
    if-eqz v11, :cond_19

    .line 429
    .line 430
    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    .line 431
    .line 432
    .line 433
    move-result v5

    .line 434
    add-float v8, v3, v6

    .line 435
    .line 436
    add-float/2addr v7, v8

    .line 437
    const/4 v8, 0x0

    .line 438
    const/4 v11, 0x0

    .line 439
    :cond_19
    :goto_11
    invoke-static {v1, v12}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 440
    .line 441
    .line 442
    move-result v12

    .line 443
    int-to-float v12, v12

    .line 444
    add-float/2addr v8, v12

    .line 445
    add-int/lit8 v12, v9, -0x1

    .line 446
    .line 447
    if-ge v10, v12, :cond_1c

    .line 448
    .line 449
    add-float v12, v3, v6

    .line 450
    .line 451
    add-float/2addr v12, v7

    .line 452
    move v7, v12

    .line 453
    goto :goto_12

    .line 454
    :cond_1a
    add-float/2addr v8, v15

    .line 455
    add-int/lit8 v11, v9, -0x1

    .line 456
    .line 457
    if-ge v10, v11, :cond_1b

    .line 458
    .line 459
    add-float v8, v8, v17

    .line 460
    .line 461
    :cond_1b
    const/4 v11, 0x1

    .line 462
    :cond_1c
    :goto_12
    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    add-int/lit8 v10, v10, 0x1

    .line 467
    .line 468
    goto :goto_e

    .line 469
    :cond_1d
    iput v5, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 470
    .line 471
    iput v7, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 472
    .line 473
    :goto_13
    iget v1, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 474
    .line 475
    iget v2, v0, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    .line 476
    .line 477
    add-float/2addr v1, v2

    .line 478
    iput v1, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 479
    .line 480
    iget v1, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 481
    .line 482
    iget v2, v0, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    .line 483
    .line 484
    add-float/2addr v1, v2

    .line 485
    iput v1, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 486
    .line 487
    return-void
.end method

.method public getCalculatedLabelBreakPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCalculatedLabelSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/utils/FSize;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCalculatedLineSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/utils/FSize;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getColors()[I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v0, v0, [I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    if-ge v1, v3, :cond_2

    .line 11
    .line 12
    aget-object v2, v2, v1

    .line 13
    .line 14
    iget-object v3, v2, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 15
    .line 16
    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 17
    .line 18
    if-ne v3, v4, :cond_0

    .line 19
    .line 20
    const v2, 0x112234

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendForm;->EMPTY:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 25
    .line 26
    if-ne v3, v4, :cond_1

    .line 27
    .line 28
    const v2, 0x112233

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget v2, v2, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    .line 33
    .line 34
    :goto_1
    aput v2, v0, v1

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-object v0
.end method

.method public getDirection()Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEntries()[Lcom/github/mikephil/charting/components/LegendEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtraColors()[I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v0, v0, [I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    if-ge v1, v3, :cond_2

    .line 11
    .line 12
    aget-object v2, v2, v1

    .line 13
    .line 14
    iget-object v3, v2, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 15
    .line 16
    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 17
    .line 18
    if-ne v3, v4, :cond_0

    .line 19
    .line 20
    const v2, 0x112234

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendForm;->EMPTY:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 25
    .line 26
    if-ne v3, v4, :cond_1

    .line 27
    .line 28
    const v2, 0x112233

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget v2, v2, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    .line 33
    .line 34
    :goto_1
    aput v2, v0, v1

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-object v0
.end method

.method public getExtraEntries()[Lcom/github/mikephil/charting/components/LegendEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtraLabels()[Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v0, v0, [Ljava/lang/String;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    if-ge v1, v3, :cond_0

    .line 11
    .line 12
    aget-object v2, v2, v1

    .line 13
    .line 14
    iget-object v2, v2, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-object v0
.end method

.method public getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFormLineDashEffect()Landroid/graphics/DashPathEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineDashEffect:Landroid/graphics/DashPathEffect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFormLineWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public getFormSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 2
    .line 3
    return v0
.end method

.method public getFormToTextSpace()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    .line 2
    .line 3
    return v0
.end method

.method public getHorizontalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLabels()[Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v0, v0, [Ljava/lang/String;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    if-ge v1, v3, :cond_0

    .line 11
    .line 12
    aget-object v2, v2, v1

    .line 13
    .line 14
    iget-object v2, v2, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-object v0
.end method

.method public getMaxSizePercent()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    .line 2
    .line 3
    return v0
.end method

.method public getMaximumEntryHeight(Landroid/graphics/Paint;)F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_2

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    iget-object v4, v4, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 11
    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-static {p1, v4}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    int-to-float v4, v4

    .line 20
    cmpl-float v5, v4, v2

    .line 21
    .line 22
    if-lez v5, :cond_1

    .line 23
    .line 24
    move v2, v4

    .line 25
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    return v2
.end method

.method public getMaximumEntryWidth(Landroid/graphics/Paint;)F
    .locals 9

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    .line 2
    .line 3
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    :goto_0
    if-ge v5, v2, :cond_4

    .line 15
    .line 16
    aget-object v6, v1, v5

    .line 17
    .line 18
    iget v7, v6, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 19
    .line 20
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    iget v7, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget v7, v6, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 30
    .line 31
    :goto_1
    invoke-static {v7}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    cmpl-float v8, v7, v4

    .line 36
    .line 37
    if-lez v8, :cond_1

    .line 38
    .line 39
    move v4, v7

    .line 40
    :cond_1
    iget-object v6, v6, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v6, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-static {p1, v6}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    int-to-float v6, v6

    .line 50
    cmpl-float v7, v6, v3

    .line 51
    .line 52
    if-lez v7, :cond_3

    .line 53
    .line 54
    move v3, v6

    .line 55
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    add-float/2addr v3, v4

    .line 59
    add-float/2addr v3, v0

    .line 60
    return v3
.end method

.method public getOrientation()Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 2
    .line 3
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 8
    .line 9
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 14
    .line 15
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->PIECHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 23
    .line 24
    if-ne v0, v1, :cond_6

    .line 25
    .line 26
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 27
    .line 28
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 29
    .line 30
    if-ne v0, v1, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 33
    .line 34
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 35
    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 42
    .line 43
    if-ne v0, v1, :cond_2

    .line 44
    .line 45
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 49
    .line 50
    :goto_0
    return-object v0

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 52
    .line 53
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 54
    .line 55
    if-ne v0, v1, :cond_4

    .line 56
    .line 57
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 61
    .line 62
    if-ne v0, v1, :cond_5

    .line 63
    .line 64
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 68
    .line 69
    :goto_1
    return-object v0

    .line 70
    :cond_6
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 71
    .line 72
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 73
    .line 74
    if-ne v0, v1, :cond_9

    .line 75
    .line 76
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 77
    .line 78
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 79
    .line 80
    if-ne v0, v1, :cond_7

    .line 81
    .line 82
    iget-boolean v1, p0, Lcom/github/mikephil/charting/components/Legend;->mDrawInside:Z

    .line 83
    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_7
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 90
    .line 91
    if-ne v0, v1, :cond_8

    .line 92
    .line 93
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_8
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 97
    .line 98
    :goto_2
    return-object v0

    .line 99
    :cond_9
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 100
    .line 101
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 102
    .line 103
    if-ne v0, v1, :cond_a

    .line 104
    .line 105
    iget-boolean v1, p0, Lcom/github/mikephil/charting/components/Legend;->mDrawInside:Z

    .line 106
    .line 107
    if-eqz v1, :cond_a

    .line 108
    .line 109
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_a
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 113
    .line 114
    if-ne v0, v1, :cond_b

    .line 115
    .line 116
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_b
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 120
    .line 121
    :goto_3
    return-object v0
.end method

.method public getStackSpace()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    .line 2
    .line 3
    return v0
.end method

.method public getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public getXEntrySpace()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    .line 2
    .line 3
    return v0
.end method

.method public getYEntrySpace()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    .line 2
    .line 3
    return v0
.end method

.method public isDrawInsideEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDrawInside:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLegendCustom()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    .line 2
    .line 3
    return v0
.end method

.method public isWordWrapEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public resetCustom()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    .line 3
    .line 4
    return-void
.end method

.method public setCustom(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    return-void
.end method

.method public setCustom([Lcom/github/mikephil/charting/components/LegendEntry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    return-void
.end method

.method public setDirection(Lcom/github/mikephil/charting/components/Legend$LegendDirection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 2
    .line 3
    return-void
.end method

.method public setDrawInside(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/Legend;->mDrawInside:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, [Lcom/github/mikephil/charting/components/LegendEntry;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 14
    .line 15
    return-void
.end method

.method public setExtra(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    return-void
.end method

.method public setExtra(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertIntegers(Ljava/util/List;)[I

    move-result-object p1

    invoke-static {p2}, Lcom/github/mikephil/charting/utils/Utils;->convertStrings(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/components/Legend;->setExtra([I[Ljava/lang/String;)V

    return-void
.end method

.method public setExtra([I[Ljava/lang/String;)V
    .locals 5

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, p1

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 7
    new-instance v2, Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-direct {v2}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>()V

    .line 8
    aget v3, p1, v1

    iput v3, v2, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    .line 9
    aget-object v4, p2, v1

    iput-object v4, v2, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    const v4, 0x112234

    if-eq v3, v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const v4, 0x112233

    if-ne v3, v4, :cond_2

    .line 10
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->EMPTY:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v3, v2, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    goto :goto_2

    .line 11
    :cond_1
    :goto_1
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v3, v2, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 12
    :cond_2
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    return-void
.end method

.method public setExtra([Lcom/github/mikephil/charting/components/LegendEntry;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Lcom/github/mikephil/charting/components/LegendEntry;

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    return-void
.end method

.method public setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 2
    .line 3
    return-void
.end method

.method public setFormLineDashEffect(Landroid/graphics/DashPathEffect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineDashEffect:Landroid/graphics/DashPathEffect;

    .line 2
    .line 3
    return-void
.end method

.method public setFormLineWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineWidth:F

    .line 2
    .line 3
    return-void
.end method

.method public setFormSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 2
    .line 3
    return-void
.end method

.method public setFormToTextSpace(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxSizePercent(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    .line 2
    .line 3
    return-void
.end method

.method public setOrientation(Lcom/github/mikephil/charting/components/Legend$LegendOrientation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 2
    .line 3
    return-void
.end method

.method public setPosition(Lcom/github/mikephil/charting/components/Legend$LegendPosition;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :pswitch_0
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 17
    .line 18
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 21
    .line 22
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 25
    .line 26
    goto :goto_4

    .line 27
    :pswitch_1
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 28
    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 35
    .line 36
    if-ne p1, v0, :cond_1

    .line 37
    .line 38
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 42
    .line 43
    :goto_0
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 44
    .line 45
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->BOTTOM:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 48
    .line 49
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :pswitch_2
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 55
    .line 56
    if-ne p1, v0, :cond_2

    .line 57
    .line 58
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 62
    .line 63
    if-ne p1, v0, :cond_3

    .line 64
    .line 65
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 69
    .line 70
    :goto_1
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 71
    .line 72
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 75
    .line 76
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :pswitch_3
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 84
    .line 85
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 86
    .line 87
    if-ne p1, v0, :cond_4

    .line 88
    .line 89
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 93
    .line 94
    :goto_2
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 95
    .line 96
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :pswitch_4
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 102
    .line 103
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 104
    .line 105
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 106
    .line 107
    if-ne p1, v0, :cond_5

    .line 108
    .line 109
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_5
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 113
    .line 114
    :goto_3
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 115
    .line 116
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 119
    .line 120
    :goto_4
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 121
    .line 122
    if-eq p1, v0, :cond_7

    .line 123
    .line 124
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 125
    .line 126
    if-ne p1, v0, :cond_6

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_6
    const/4 p1, 0x0

    .line 130
    goto :goto_6

    .line 131
    :cond_7
    :goto_5
    const/4 p1, 0x1

    .line 132
    :goto_6
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/Legend;->mDrawInside:Z

    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setStackSpace(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 2
    .line 3
    return-void
.end method

.method public setWordWrapEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setXEntrySpace(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    .line 2
    .line 3
    return-void
.end method

.method public setYEntrySpace(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    .line 2
    .line 3
    return-void
.end method
