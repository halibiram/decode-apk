.class public abstract Lcom/github/mikephil/charting/charts/Chart;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/ChartData<",
        "+",
        "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet<",
        "+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Landroid/view/ViewGroup;",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static final PAINT_CENTER_TEXT:I = 0xe

.field public static final PAINT_DESCRIPTION:I = 0xb

.field public static final PAINT_GRID_BACKGROUND:I = 0x4

.field public static final PAINT_HOLE:I = 0xd

.field public static final PAINT_INFO:I = 0x7

.field public static final PAINT_LEGEND_LABEL:I = 0x12


# instance fields
.field protected mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

.field protected mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

.field protected mData:Lcom/github/mikephil/charting/data/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

.field protected mDescPaint:Landroid/graphics/Paint;

.field protected mDescription:Lcom/github/mikephil/charting/components/Description;

.field private mDragDecelerationEnabled:Z

.field private mDragDecelerationFrictionCoef:F

.field protected mDrawMarkers:Z

.field private mExtraBottomOffset:F

.field private mExtraLeftOffset:F

.field private mExtraRightOffset:F

.field private mExtraTopOffset:F

.field private mGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

.field protected mHighLightPerTapEnabled:Z

.field protected mHighlighter:Lcom/github/mikephil/charting/highlight/IHighlighter;

.field protected mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

.field protected mInfoPaint:Landroid/graphics/Paint;

.field protected mJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mLegend:Lcom/github/mikephil/charting/components/Legend;

.field protected mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

.field protected mLogEnabled:Z

.field protected mMarker:Lcom/github/mikephil/charting/components/IMarker;

.field protected mMaxHighlightDistance:F

.field private mNoDataText:Ljava/lang/String;

.field private mOffsetsCalculated:Z

.field protected mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

.field protected mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

.field protected mTouchEnabled:Z

.field private mUnbind:Z

.field protected mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

.field protected mXAxis:Lcom/github/mikephil/charting/components/XAxis;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/charts/Chart;->LOG_TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x70ea9dcf07c699aL
        0x1da26d5ba70dc52eL    # 6.249874120052496E-166
        -0x3cf1b2c3874da939L    # -1.0661464274562169E15
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    .line 5
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    const v1, 0x3f666666    # 0.9f

    .line 6
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 7
    new-instance v1, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    invoke-direct {v1, p1}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;-><init>(I)V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    .line 8
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 9
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 10
    new-instance v1, Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;-><init>()V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 12
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 13
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    .line 14
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkers:Z

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 16
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mUnbind:Z

    .line 17
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    return-void

    :array_0
    .array-data 8
        0x2c008fbb82184d57L    # 9.691921474301267E-97
        0x5cfea136d7b2fb6L
        0x17b2c2c7e15faba6L
        -0x406b4f5306e25602L    # -0.02020521421892773
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    const/4 p2, 0x0

    .line 20
    iput-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    .line 22
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    const v0, 0x3f666666    # 0.9f

    .line 23
    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 24
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    invoke-direct {v0, p1}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    .line 25
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 26
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 29
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 30
    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    .line 31
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkers:Z

    .line 32
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 33
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mUnbind:Z

    .line 34
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    return-void

    :array_0
    .array-data 8
        0x450e6d97430396d2L    # 4.5981628527869814E24
        -0x5a036ec641a0d9dcL
        -0x5aa264ff97eb6e8aL
        -0x300e48d6b7ee7cfL
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    const/4 p2, 0x0

    .line 37
    iput-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    const/4 p2, 0x1

    .line 38
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    .line 39
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    const p3, 0x3f666666    # 0.9f

    .line 40
    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 41
    new-instance p3, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    invoke-direct {p3, p1}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;-><init>(I)V

    iput-object p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    .line 42
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 43
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 44
    new-instance p3, Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {p3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;-><init>()V

    iput-object p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/4 p3, 0x0

    .line 45
    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 46
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 47
    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    .line 48
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkers:Z

    .line 49
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 50
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mUnbind:Z

    .line 51
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    return-void

    :array_0
    .array-data 8
        -0x4744a588f628b9a3L    # -2.0578395105431491E-35
        -0x7a9b1c19d21e9156L    # -1.12387321957573E-282
        0x42daf99b9a1cd34cL    # 1.1863743898913319E14
        -0x675431283da43b09L    # -7.801573111909437E-190
    .end array-data
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    move-object v1, p1

    .line 21
    check-cast v1, Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ge v0, v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/charts/Chart;->unbindDrawables(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method


# virtual methods
.method public addViewportJob(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->hasChartDimens()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public animateX(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateX(I)V

    return-void
.end method

.method public animateX(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateX(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V

    return-void
.end method

.method public animateX(ILcom/github/mikephil/charting/animation/EasingFunction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateX(ILcom/github/mikephil/charting/animation/EasingFunction;)V

    return-void
.end method

.method public animateXY(II)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateXY(II)V

    return-void
.end method

.method public animateXY(IILcom/github/mikephil/charting/animation/Easing$EasingOption;Lcom/github/mikephil/charting/animation/Easing$EasingOption;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateXY(IILcom/github/mikephil/charting/animation/Easing$EasingOption;Lcom/github/mikephil/charting/animation/Easing$EasingOption;)V

    return-void
.end method

.method public animateXY(IILcom/github/mikephil/charting/animation/EasingFunction;Lcom/github/mikephil/charting/animation/EasingFunction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateXY(IILcom/github/mikephil/charting/animation/EasingFunction;Lcom/github/mikephil/charting/animation/EasingFunction;)V

    return-void
.end method

.method public animateY(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateY(I)V

    return-void
.end method

.method public animateY(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateY(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V

    return-void
.end method

.method public animateY(ILcom/github/mikephil/charting/animation/EasingFunction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateY(ILcom/github/mikephil/charting/animation/EasingFunction;)V

    return-void
.end method

.method public abstract calcMinMax()V
.end method

.method public abstract calculateOffsets()V
.end method

.method public clear()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 6
    .line 7
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->setLastHighlighted(Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public clearAllViewportJobs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearValues()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->clearValues()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public disableScroll()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public drawDescription(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Description;->getPosition()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getTypeface()Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getTextSize()F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getTextColor()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Description;->getTextAlign()Landroid/graphics/Paint$Align;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 59
    .line 60
    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    int-to-float v0, v0

    .line 68
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetRight()F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    sub-float/2addr v0, v1

    .line 75
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/ComponentBase;->getXOffset()F

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    sub-float/2addr v0, v1

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    int-to-float v1, v1

    .line 87
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetBottom()F

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    sub-float/2addr v1, v2

    .line 94
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getYOffset()F

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    sub-float/2addr v1, v2

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    iget v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 103
    .line 104
    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 105
    .line 106
    move v4, v1

    .line 107
    move v1, v0

    .line 108
    move v0, v4

    .line 109
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Description;->getText()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    .line 116
    .line 117
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 118
    .line 119
    .line 120
    :cond_1
    return-void
.end method

.method public drawMarkers(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->isDrawMarkersEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->valuesToHighlight()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 21
    .line 22
    array-length v3, v2

    .line 23
    if-ge v1, v3, :cond_4

    .line 24
    .line 25
    aget-object v2, v2, v1

    .line 26
    .line 27
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 38
    .line 39
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 40
    .line 41
    aget-object v5, v5, v1

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/ChartData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    int-to-float v5, v5

    .line 54
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    int-to-float v3, v3

    .line 59
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    mul-float v6, v6, v3

    .line 66
    .line 67
    cmpl-float v3, v5, v6

    .line 68
    .line 69
    if-lez v3, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/charts/Chart;->getMarkerPosition(Lcom/github/mikephil/charting/highlight/Highlight;)[F

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 77
    .line 78
    aget v6, v3, v0

    .line 79
    .line 80
    const/4 v7, 0x1

    .line 81
    aget v8, v3, v7

    .line 82
    .line 83
    invoke-virtual {v5, v6, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBounds(FF)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    .line 91
    .line 92
    invoke-interface {v5, v4, v2}, Lcom/github/mikephil/charting/components/IMarker;->refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    .line 96
    .line 97
    aget v4, v3, v0

    .line 98
    .line 99
    aget v3, v3, v7

    .line 100
    .line 101
    invoke-interface {v2, p1, v4, v3}, Lcom/github/mikephil/charting/components/IMarker;->draw(Landroid/graphics/Canvas;FF)V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    :goto_2
    return-void
.end method

.method public enableScroll()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCenter()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    .line 8
    div-float/2addr v0, v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    int-to-float v2, v2

    .line 14
    div-float/2addr v2, v1

    .line 15
    invoke-static {v0, v2}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public getCenterOfView()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenter()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentCenter()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getChartBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/graphics/Canvas;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v2, -0x1

    .line 31
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public getContentRect()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getData()Lcom/github/mikephil/charting/data/ChartData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDescription()Lcom/github/mikephil/charting/components/Description;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDragDecelerationFrictionCoef()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 2
    .line 3
    return v0
.end method

.method public getExtraBottomOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public getExtraLeftOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public getExtraRightOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public getExtraTopOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 p2, 0x3

    .line 8
    new-array p2, p2, [J

    .line 9
    .line 10
    fill-array-data p2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 p2, 0x6

    .line 22
    new-array p2, p2, [J

    .line 23
    .line 24
    fill-array-data p2, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    return-object p1

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHighlighter()Lcom/github/mikephil/charting/highlight/IHighlighter;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0, p1, p2}, Lcom/github/mikephil/charting/highlight/IHighlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        -0x5db6949d8903f5e5L
        0x7e776609a9f180d6L    # 1.5669865736893066E301
        -0x7b14fc673d09de78L
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    :array_1
    .array-data 8
        0x4898495c6b2db496L    # 5.289145801564666E41
        -0x3d1fe2cabeccd96bL    # -1.4174106849106066E14
        -0x5490fb8c284aa91aL    # -1.7726244336391351E-99
        0x5ee08473ca808152L    # 1.0560131891773905E149
        0x2326e92a6f248838L    # 2.40487407930277E-139
        -0x536f8b9c360f4f83L    # -4.930261430983682E-94
    .end array-data
.end method

.method public getHighlighted()[Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHighlighter()Lcom/github/mikephil/charting/highlight/IHighlighter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighlighter:Lcom/github/mikephil/charting/highlight/IHighlighter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJobs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLegend()Lcom/github/mikephil/charting/components/Legend;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLegendRenderer()Lcom/github/mikephil/charting/renderer/LegendRenderer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMarker()Lcom/github/mikephil/charting/components/IMarker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMarkerPosition(Lcom/github/mikephil/charting/highlight/Highlight;)[F
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDrawX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDrawY()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [F

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput v0, v1, v2

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    aput p1, v1, v0

    .line 17
    .line 18
    return-object v1
.end method

.method public getMarkerView()Lcom/github/mikephil/charting/components/IMarker;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getMarker()Lcom/github/mikephil/charting/components/IMarker;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getMaxHighlightDistance()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    .line 2
    .line 3
    return v0
.end method

.method public getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnTouchListener()Lcom/github/mikephil/charting/listener/ChartTouchListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPaint(I)Landroid/graphics/Paint;
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0xb

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    .line 14
    .line 15
    return-object p1
.end method

.method public getRenderer()Lcom/github/mikephil/charting/renderer/DataRenderer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getXAxis()Lcom/github/mikephil/charting/components/XAxis;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 2
    .line 3
    return-object v0
.end method

.method public getXChartMax()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 2
    .line 3
    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 4
    .line 5
    return v0
.end method

.method public getXChartMin()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 2
    .line 3
    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 4
    .line 5
    return v0
.end method

.method public getXRange()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 2
    .line 3
    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    .line 4
    .line 5
    return v0
.end method

.method public getYMax()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getYMax()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getYMin()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getYMin()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public highlightValue(FFI)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/github/mikephil/charting/charts/Chart;->highlightValue(FFIZ)V

    return-void
.end method

.method public highlightValue(FFIZ)V
    .locals 1

    if-ltz p3, :cond_1

    .line 4
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-direct {v0, p1, p2, p3}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFI)V

    invoke-virtual {p0, v0, p4}, Lcom/github/mikephil/charting/charts/Chart;->highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1, p4}, Lcom/github/mikephil/charting/charts/Chart;->highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V

    :goto_1
    return-void
.end method

.method public highlightValue(FI)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/charts/Chart;->highlightValue(FIZ)V

    return-void
.end method

.method public highlightValue(FIZ)V
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 3
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/github/mikephil/charting/charts/Chart;->highlightValue(FFIZ)V

    return-void
.end method

.method public highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/charts/Chart;->highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V

    return-void
.end method

.method public highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 8
    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    goto :goto_1

    .line 9
    :cond_0
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v2, :cond_1

    .line 10
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->toString()Ljava/lang/String;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/ChartData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    if-nez v0, :cond_2

    .line 12
    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    move-object p1, v1

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 13
    new-array v1, v1, [Lcom/github/mikephil/charting/highlight/Highlight;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    goto :goto_0

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setLastHighlighted([Lcom/github/mikephil/charting/highlight/Highlight;)V

    if-eqz p2, :cond_4

    .line 15
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    if-eqz p2, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->valuesToHighlight()Z

    move-result p2

    if-nez p2, :cond_3

    .line 17
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    invoke-interface {p1}, Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;->onNothingSelected()V

    goto :goto_2

    .line 18
    :cond_3
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    invoke-interface {p2, v1, p1}, Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;->onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 19
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :array_0
    .array-data 8
        0x62fae050e8e1a1b6L    # 6.339368715029111E168
        -0x443d9782768f9d3dL    # -7.796161355714982E-21
        -0x2b1cbfcf7a3fa270L    # -8.4212391759128E100
    .end array-data

    :array_1
    .array-data 8
        -0x77c7edce6d2d49dfL
        -0x36ccf62fef9943e9L    # -4.245689698788644E44
        -0x7326cf10af525e50L    # -9.007236929402407E-247
    .end array-data
.end method

.method public highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setLastHighlighted([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public init()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 4
    .line 5
    .line 6
    new-instance v2, Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 7
    .line 8
    new-instance v3, Lcom/github/mikephil/charting/charts/Chart$1;

    .line 9
    .line 10
    invoke-direct {v3, p0}, Lcom/github/mikephil/charting/charts/Chart$1;-><init>(Lcom/github/mikephil/charting/charts/Chart;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->init(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    const/high16 v2, 0x43fa0000    # 500.0f

    .line 26
    .line 27
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iput v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    .line 32
    .line 33
    new-instance v2, Lcom/github/mikephil/charting/components/Description;

    .line 34
    .line 35
    invoke-direct {v2}, Lcom/github/mikephil/charting/components/Description;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    .line 39
    .line 40
    new-instance v2, Lcom/github/mikephil/charting/components/Legend;

    .line 41
    .line 42
    invoke-direct {v2}, Lcom/github/mikephil/charting/components/Legend;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 46
    .line 47
    new-instance v3, Lcom/github/mikephil/charting/renderer/LegendRenderer;

    .line 48
    .line 49
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 50
    .line 51
    invoke-direct {v3, v4, v2}, Lcom/github/mikephil/charting/renderer/LegendRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/Legend;)V

    .line 52
    .line 53
    .line 54
    iput-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    .line 55
    .line 56
    new-instance v2, Lcom/github/mikephil/charting/components/XAxis;

    .line 57
    .line 58
    invoke-direct {v2}, Lcom/github/mikephil/charting/components/XAxis;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 62
    .line 63
    new-instance v2, Landroid/graphics/Paint;

    .line 64
    .line 65
    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    .line 69
    .line 70
    new-instance v2, Landroid/graphics/Paint;

    .line 71
    .line 72
    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    .line 76
    .line 77
    const/16 v3, 0xbd

    .line 78
    .line 79
    const/16 v4, 0x33

    .line 80
    .line 81
    const/16 v5, 0xf7

    .line 82
    .line 83
    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    .line 91
    .line 92
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    .line 98
    .line 99
    const/high16 v3, 0x41400000    # 12.0f

    .line 100
    .line 101
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    .line 107
    .line 108
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 109
    .line 110
    if-eqz v2, :cond_0

    .line 111
    .line 112
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v0, v0, [J

    .line 115
    .line 116
    const-wide v3, -0x27871f8c06b796a1L    # -1.56831140908857E118

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    aput-wide v3, v0, v1

    .line 122
    .line 123
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 130
    .line 131
    const/4 v1, 0x3

    .line 132
    new-array v1, v1, [J

    .line 133
    .line 134
    fill-array-data v1, :array_0

    .line 135
    .line 136
    .line 137
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    :cond_0
    return-void

    .line 144
    nop

    .line 145
    :array_0
    .array-data 8
        -0x25862e3f12e6ec8dL    # -6.991067330076655E127
        0x16e33bedca1eeaa1L    # 2.010225005627846E-198
        0x56411a0b42723451L    # 3.1378243171631414E107
    .end array-data
.end method

.method public isDragDecelerationEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDrawMarkerViewsEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->isDrawMarkersEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isDrawMarkersEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkers:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gtz v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isHighlightPerTapEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLogEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract notifyDataSetChanged()V
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mUnbind:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p0}, Lcom/github/mikephil/charting/charts/Chart;->unbindDrawables(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenter()Lcom/github/mikephil/charting/utils/MPPointF;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 18
    .line 19
    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 20
    .line 21
    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 22
    .line 23
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    iget-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->calculateOffsets()V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x42480000    # 50.0f

    .line 5
    .line 6
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    float-to-int v0, v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    new-array v2, v0, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v2, v0, [J

    .line 22
    .line 23
    fill-array-data v2, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    :cond_0
    if-lez p1, :cond_2

    .line 33
    .line 34
    if-lez p2, :cond_2

    .line 35
    .line 36
    const/16 v1, 0x2710

    .line 37
    .line 38
    if-ge p1, v1, :cond_2

    .line 39
    .line 40
    if-ge p2, v1, :cond_2

    .line 41
    .line 42
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v2, v0, [J

    .line 49
    .line 50
    fill-array-data v2, :array_2

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    new-array v2, v2, [J

    .line 63
    .line 64
    fill-array-data v2, :array_3

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v0, v0, [J

    .line 76
    .line 77
    fill-array-data v0, :array_4

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 87
    .line 88
    int-to-float v1, p1

    .line 89
    int-to-float v2, p2

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setChartDimens(FF)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v2, v0, [J

    .line 101
    .line 102
    fill-array-data v2, :array_5

    .line 103
    .line 104
    .line 105
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    const/4 v2, 0x6

    .line 114
    new-array v2, v2, [J

    .line 115
    .line 116
    fill-array-data v2, :array_6

    .line 117
    .line 118
    .line 119
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v0, v0, [J

    .line 128
    .line 129
    fill-array-data v0, :array_7

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->notifyDataSetChanged()V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_4

    .line 152
    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Ljava/lang/Runnable;

    .line 158
    .line 159
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 166
    .line 167
    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    nop

    .line 173
    :array_0
    .array-data 8
        0x7250d852cb99cc71L    # 4.492911687262501E242
        -0x19fe0d13d664c0d4L    # -2.3833378115601853E183
        0x33f2f1084309d898L    # 1.885975119828663E-58
    .end array-data

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
    :array_1
    .array-data 8
        0x3022299b7042cccbL    # 7.842732682866544E-77
        0x58097afaba66d3c8L    # 1.2549730224817324E116
        0x28584ef104de43d0L
    .end array-data

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
    :array_2
    .array-data 8
        0x2f682371398eed28L
        -0x3bb959e23130a208L    # -8.355966407925217E20
        -0x216ad57e8ad08acaL    # -4.228803074059501E147
    .end array-data

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
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :array_3
    .array-data 8
        -0x1b18da97c1a9cb1cL    # -1.1724266735682195E178
        -0x2cb2fd6b20dbceccL    # -1.8910267196900826E93
        -0x5de1406460380546L
        0x6571c07450053beaL    # 4.603829116420542E180
        0x7e0d663fdfabbe24L    # 1.5381700756562868E299
    .end array-data

    .line 222
    :array_4
    .array-data 8
        -0x4048d727692628fL
        -0x15c0c41a9aa2be4cL    # -6.120462789062697E203
        -0x4c602fccea11a319L    # -4.9493631100301723E-60
    .end array-data

    :array_5
    .array-data 8
        0x2705cdff7d9a871aL
        0x4ae172cf857d2867L    # 5.222600840249015E52
        -0x3abeb8c82dfdf2dcL    # -4.177611331465728E25
    .end array-data

    :array_6
    .array-data 8
        -0x26856ba54a353f23L    # -1.0981589472309883E123
        -0x149baba96d9cf884L
        0x7bc1caa3094c058fL    # 1.3545644047407512E288
        -0x252d066fc9c8fc62L    # -3.288188140807867E129
        -0x3e4a8101f2083623L    # -3.6064410996792394E8
        -0x75920ab33a7ddadbL
    .end array-data

    :array_7
    .array-data 8
        -0x7a4f408aa55461fcL    # -2.883261374047959E-281
        -0x6b8c0ff11cbf4442L
        -0x147b33e05b939cfcL    # -8.546635042294189E209
    .end array-data
.end method

.method public removeViewportJob(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public saveToGallery(Ljava/lang/String;I)Z
    .locals 11

    .line 70
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide v2, 0x4a81f6d8fdd06f1dL    # 8.401529163374613E50

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v5, p0

    move-object v6, p1

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/github/mikephil/charting/charts/Chart;->saveToGallery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result p1

    return p1

    nop

    :array_0
    .array-data 8
        -0x3eb982ae94633663L    # -2947746.8407222764
        -0x6252d08e6162b4a3L    # -9.898672781390303E-166
        -0x116e1b3eb89a53daL
        -0x673754419471cbabL
        -0x1e075550ac49da1aL    # -8.877882148351143E163
    .end array-data
.end method

.method public saveToGallery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ltz p5, :cond_0

    const/16 v4, 0x64

    if-le p5, v4, :cond_1

    :cond_0
    const/16 p5, 0x32

    .line 1
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 3
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v3, [J

    fill-array-data v9, :array_0

    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 4
    invoke-static {v6, v8, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    .line 8
    :cond_2
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v0, [J

    const-wide v8, -0x2bd5c154af0ff963L    # -2.8029277964593657E97

    aput-wide v8, v6, v1

    invoke-direct {p2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 9
    sget-object p2, Lcom/github/mikephil/charting/charts/Chart$2;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget p2, p2, v6

    if-eq p2, v0, :cond_4

    if-eq p2, v3, :cond_3

    .line 10
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_1

    invoke-direct {p2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_2

    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_3

    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 12
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 13
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_4

    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    invoke-static {v6, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_3
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_5

    invoke-direct {p2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_6

    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 17
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 18
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_7

    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    invoke-static {v6, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_4
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_8

    invoke-direct {p2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 21
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_9

    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 22
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 23
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_a

    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    invoke-static {v6, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 25
    :cond_5
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_b

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    invoke-static {v7, v6, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 27
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getChartBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 29
    invoke-virtual {v8, p4, p5, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 30
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 31
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide p4

    .line 33
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 34
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v3, [J

    fill-array-data v9, :array_c

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v2, [J

    fill-array-data v9, :array_d

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v2, [J

    fill-array-data v8, :array_e

    invoke-direct {p1, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, p1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 37
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_f

    invoke-direct {p1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p2, v2, [J

    fill-array-data p2, :array_10

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p2, v2, [J

    fill-array-data p2, :array_11

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p2, v3, [J

    fill-array-data p2, :array_12

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p2, v3, [J

    fill-array-data p2, :array_13

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    return v0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1

    nop

    :array_0
    .array-data 8
        -0x461abb7973965740L    # -8.388619878046947E-30
        0x5e8d5ba0540682e2L    # 2.9327369313681007E147
    .end array-data

    :array_1
    .array-data 8
        0x37b829785cf7dbefL    # 2.773660751475562E-40
        0x413861d7e4e717e8L    # 1597911.8941512052
        -0x295472439d8dab26L    # -3.23554669437254E109
    .end array-data

    :array_2
    .array-data 8
        0x29d35a2bb8a7c570L
        0x3af19445f7b56d10L    # 9.088229575284162E-25
    .end array-data

    :array_3
    .array-data 8
        0x26304a0967e2ec7L
        -0x69c5d01896cc4e2aL    # -1.336382351863133E-201
    .end array-data

    :array_4
    .array-data 8
        -0x6a7e8f1e96037422L    # -4.345931114340013E-205
        -0x4b5ff06f7f6ed883L    # -3.275050043078191E-55
    .end array-data

    :array_5
    .array-data 8
        -0x82ee38c58a98dL
        -0x743ff9817e1a52cdL    # -4.37161235931775E-252
        -0x65b72b2be959ccd4L
    .end array-data

    :array_6
    .array-data 8
        0x4348595156ed6bffL    # 1.3707210653358078E16
        0x793c6c0203f95c36L    # 9.840320429771737E275
    .end array-data

    :array_7
    .array-data 8
        -0x8ccab48ba0e0cf0L
        0x2a4b619c36503ffcL
    .end array-data

    :array_8
    .array-data 8
        -0xf2b6d8058677b25L    # -3.2705337755383095E235
        0x57c73461e066806cL    # 7.143035320695462E114
        0x5fb988477d62460fL    # 1.3372371956441748E153
    .end array-data

    :array_9
    .array-data 8
        -0x15cac54a140455e5L    # -4.1600020646373704E203
        -0xf2fa59b6749682aL    # -2.5997803217832996E235
    .end array-data

    :array_a
    .array-data 8
        0x75e8c82e157c762L
        0x550be341bef88f7L
    .end array-data

    :array_b
    .array-data 8
        -0x15db2f285456cd93L    # -2.039482609964317E203
        -0x32cfe4cc8d9917caL    # -6.625728493796728E63
    .end array-data

    :array_c
    .array-data 8
        0x7fbd3e71f8b5dcadL    # 2.053578360419483E307
        -0x2d22d85f4da3459aL    # -1.4847341975438707E91
    .end array-data

    :array_d
    .array-data 8
        0x5c21bfbec0d703bdL    # 6.450331862921924E135
        0x740687c96253dbe6L    # 8.065580462934936E250
        -0x863e5206a724e68L
    .end array-data

    :array_e
    .array-data 8
        0x34f3215a8a453436L    # 1.2483095234169772E-53
        0x2c03146f30ebaf48L    # 1.1165693728834727E-96
        -0x6f276404dd861726L
    .end array-data

    :array_f
    .array-data 8
        -0x2f17acff309aa75cL    # -5.768301648940612E81
        0x4f3c1c053c9c6fecL    # 4.966510789433026E73
        -0x44c0f661fe100adaL    # -2.5673673893440285E-23
    .end array-data

    :array_10
    .array-data 8
        0x3331497e40293d17L    # 4.202257017109259E-62
        -0x1debeb6bb160193dL    # -2.890877904488778E164
        0x43d2b6ff7e30b53bL    # 5.3941842235687516E18
    .end array-data

    :array_11
    .array-data 8
        0x2701a918b0b4c771L    # 8.549004660293521E-121
        0x4a4a837b161f1071L    # 7.749933056056343E49
        0x5d75c90f1f335fd1L    # 1.6603637758524742E142
    .end array-data

    :array_12
    .array-data 8
        0x27925a3c0da2d4b9L    # 4.548586315115332E-118
        -0x73a12fb3857f71eL    # -5.930654134647156E273
    .end array-data

    :array_13
    .array-data 8
        -0x484f749e6c91f098L    # -1.899210595048257E-40
        -0xcd3b287e6ced7aL
    .end array-data
.end method

.method public saveToPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getChartBitmap()Landroid/graphics/Bitmap;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v4, v0, [J

    .line 30
    .line 31
    fill-array-data v4, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array p2, v0, [J

    .line 50
    .line 51
    fill-array-data p2, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 72
    .line 73
    const/16 p2, 0x28

    .line 74
    .line 75
    invoke-virtual {v1, p1, p2, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x1

    .line 82
    return p1

    .line 83
    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x0

    .line 88
    return p1

    .line 89
    :array_0
    .array-data 8
        -0x636ff5258bb84c15L    # -4.151181286583509E-171
        0x2a4ca5513dca9024L    # 6.244994153308939E-105
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_1
    .array-data 8
        0x7d24e9b09db1d848L    # 6.678193824752194E294
        -0x76ba2b5c1615a469L    # -5.416266228070668E-264
    .end array-data
.end method

.method public setData(Lcom/github/mikephil/charting/data/ChartData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->getYMin()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->getYMax()F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0, v1, p1}, Lcom/github/mikephil/charting/charts/Chart;->setupDefaultFormatter(FF)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 42
    .line 43
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->needsFormatter()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    .line 54
    .line 55
    if-ne v2, v3, :cond_1

    .line 56
    .line 57
    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    .line 58
    .line 59
    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IValueFormatter;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->notifyDataSetChanged()V

    .line 64
    .line 65
    .line 66
    iget-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v1, v0, [J

    .line 73
    .line 74
    fill-array-data v1, :array_0

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v0, v0, [J

    .line 86
    .line 87
    fill-array-data v0, :array_1

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    :cond_4
    return-void

    .line 97
    :array_0
    .array-data 8
        -0x227111d7b53d6261L    # -4.714679022931841E142
        -0x240977a66c2e6165L    # -1.0235986550716368E135
        0x715845f767951515L    # 9.878830385829219E237
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_1
    .array-data 8
        0x432797feba327a13L    # 3.3205223828513375E15
        -0x7581ed56851b7263L
        -0x7a53c791758fa0ccL    # -2.429169351983436E-281
    .end array-data
.end method

.method public setDescription(Lcom/github/mikephil/charting/components/Description;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    .line 2
    .line 3
    return-void
.end method

.method public setDragDecelerationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDragDecelerationFrictionCoef(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-gez v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    cmpl-float v0, p1, v0

    .line 10
    .line 11
    if-ltz v0, :cond_1

    .line 12
    .line 13
    const p1, 0x3f7fbe77    # 0.999f

    .line 14
    .line 15
    .line 16
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 17
    .line 18
    return-void
.end method

.method public setDrawMarkerViews(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setDrawMarkers(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setDrawMarkers(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkers:Z

    .line 2
    .line 3
    return-void
.end method

.method public setExtraBottomOffset(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    .line 6
    .line 7
    return-void
.end method

.method public setExtraLeftOffset(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 6
    .line 7
    return-void
.end method

.method public setExtraOffsets(FFFF)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setExtraLeftOffset(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/Chart;->setExtraTopOffset(F)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/Chart;->setExtraRightOffset(F)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p4}, Lcom/github/mikephil/charting/charts/Chart;->setExtraBottomOffset(F)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setExtraRightOffset(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    .line 6
    .line 7
    return-void
.end method

.method public setExtraTopOffset(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    .line 6
    .line 7
    return-void
.end method

.method public setHardwareAccelerationEnabled(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public setHighlightPerTapEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHighlighter(Lcom/github/mikephil/charting/highlight/ChartHighlighter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighlighter:Lcom/github/mikephil/charting/highlight/IHighlighter;

    .line 2
    .line 3
    return-void
.end method

.method public setLastHighlighted([Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-lez v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aget-object p1, p1, v0

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->setLastHighlighted(Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->setLastHighlighted(Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 22
    .line 23
    .line 24
    :goto_1
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMarker(Lcom/github/mikephil/charting/components/IMarker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    .line 2
    .line 3
    return-void
.end method

.method public setMarkerView(Lcom/github/mikephil/charting/components/IMarker;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setMaxHighlightDistance(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    .line 6
    .line 7
    return-void
.end method

.method public setNoDataText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNoDataTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setNoDataTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnChartGestureListener(Lcom/github/mikephil/charting/listener/OnChartGestureListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnTouchListener(Lcom/github/mikephil/charting/listener/ChartTouchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 2
    .line 3
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;I)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    if-eq p2, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0xb

    .line 5
    .line 6
    if-eq p2, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public setRenderer(Lcom/github/mikephil/charting/renderer/DataRenderer;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUnbindEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mUnbind:Z

    .line 2
    .line 3
    return-void
.end method

.method public setupDefaultFormatter(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sub-float/2addr p2, p1

    .line 14
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    :goto_1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->getDecimals(F)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;->setup(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public valuesToHighlight()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    if-lez v2, :cond_1

    .line 8
    .line 9
    aget-object v0, v0, v1

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    :cond_1
    :goto_0
    return v1
.end method
