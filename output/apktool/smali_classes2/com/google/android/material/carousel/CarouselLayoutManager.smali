.class public Lcom/google/android/material/carousel/CarouselLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/carousel/Carousel;
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;,
        Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;,
        Lcom/google/android/material/carousel/CarouselLayoutManager$LayoutDirection;,
        Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;
    }
.end annotation


# static fields
.field public static final ALIGNMENT_CENTER:I = 0x1

.field public static final ALIGNMENT_START:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final VERTICAL:I = 0x1


# instance fields
.field private carouselAlignment:I

.field private carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private currentEstimatedPosition:I

.field private currentFillStartPosition:I

.field private currentKeylineState:Lcom/google/android/material/carousel/KeylineState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final debugItemDecoration:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

.field private isDebuggingEnabled:Z

.field private keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private keylineStatePositionMap:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation
.end field

.field private lastItemCount:I

.field maxScroll:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field minScroll:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

.field private final recyclerViewSizeChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field scrollOffset:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x3368723ee331d6b5L    # -9.462345366969447E60
        0x3accaa80ad8f978fL    # 1.8524985094808999E-25
        -0x34f1e9742bfa19c9L    # -3.602330844387725E53
        0x2297d43806d85755L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;

    invoke-direct {v0}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;-><init>(Lcom/google/android/material/carousel/CarouselStrategy;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 p3, 0x0

    .line 13
    iput-boolean p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->isDebuggingEnabled:Z

    .line 14
    new-instance p4, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    invoke-direct {p4}, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;-><init>()V

    iput-object p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->debugItemDecoration:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    .line 15
    iput p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 16
    new-instance p4, L돸뎹딁땳듸둘돛돼땟뒐뎹뒘돸둔듸드땵듼디됨뒘땄딤땳돸듼둬뒛뒻땁둘땋드땩듔땟들땸땠듐돤둘따땝뎡딽딨땟듼딎딸땡땨땝뎨뒤땲땫듨땤따두됐뒼땵딜딞드뒐둘딟돳됴듐두뒐도땁뎡됐둥뎻딅딞땋듰딹둘땰듽딻됐돠땃뒬딎돰돨딽둬든딅땁뒬땜땲딤둬됐딤듼딄땟돤땋둬땯득땵딽둣됫둬둣딄둑땡돰뎠뒾;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, L돸뎹딁땳듸둘돛돼땟뒐뎹뒘돸둔듸드땵듼디됨뒘땄딤땳돸듼둬뒛뒻땁둘땋드땩듔땟들땸땠듐돤둘따땝뎡딽딨땟듼딎딸땡땨땝뎨뒤땲땫듨땤따두됐뒼땵딜딞드뒐둘딟돳됴듐두뒐도땁뎡됐둥뎻딅딞땋듰딹둘땰듽딻됐돠땃뒬딎돰돨딽둬든딅땁뒬땜땲딤둬됐딤듼딄땟돤땋둬땯득땵딽둣됫둬둣딄둑땡돰뎠뒾;-><init>(Ljava/lang/Object;I)V

    iput-object p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->recyclerViewSizeChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 p4, -0x1

    .line 17
    iput p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentEstimatedPosition:I

    .line 18
    iput p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselAlignment:I

    .line 19
    new-instance p3, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;

    invoke-direct {p3}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;-><init>()V

    invoke-virtual {p0, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setCarouselStrategy(Lcom/google/android/material/carousel/CarouselStrategy;)V

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setCarouselAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/carousel/CarouselStrategy;)V
    .locals 1
    .param p1    # Lcom/google/android/material/carousel/CarouselStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;-><init>(Lcom/google/android/material/carousel/CarouselStrategy;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/carousel/CarouselStrategy;I)V
    .locals 3
    .param p1    # Lcom/google/android/material/carousel/CarouselStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->isDebuggingEnabled:Z

    .line 5
    new-instance v1, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    invoke-direct {v1}, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->debugItemDecoration:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    .line 6
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 7
    new-instance v1, L돸뎹딁땳듸둘돛돼땟뒐뎹뒘돸둔듸드땵듼디됨뒘땄딤땳돸듼둬뒛뒻땁둘땋드땩듔땟들땸땠듐돤둘따땝뎡딽딨땟듼딎딸땡땨땝뎨뒤땲땫듨땤따두됐뒼땵딜딞드뒐둘딟돳됴듐두뒐도땁뎡됐둥뎻딅딞땋듰딹둘땰듽딻됐돠땃뒬딎돰돨딽둬든딅땁뒬땜땲딤둬됐딤듼딄땟돤땋둬땯득땵딽둣됫둬둣딄둑땡돰뎠뒾;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, L돸뎹딁땳듸둘돛돼땟뒐뎹뒘돸둔듸드땵듼디됨뒘땄딤땳돸듼둬뒛뒻땁둘땋드땩듔땟들땸땠듐돤둘따땝뎡딽딨땟듼딎딸땡땨땝뎨뒤땲땫듨땤따두됐뒼땵딜딞드뒐둘딟돳됴듐두뒐도땁뎡됐둥뎻딅딞땋듰딹둘땰듽딻됐돠땃뒬딎돰돨딽둬든딅땁뒬땜땲딤둬됐딤듼딄땟돤땋둬땯득땵딽둣됫둬둣딄둑땡돰뎠뒾;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->recyclerViewSizeChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentEstimatedPosition:I

    .line 9
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselAlignment:I

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setCarouselStrategy(Lcom/google/android/material/carousel/CarouselStrategy;)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setOrientation(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/KeylineStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/carousel/CarouselLayoutManager;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentTop()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$200(Lcom/google/android/material/carousel/CarouselLayoutManager;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentBottom()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Lcom/google/android/material/carousel/CarouselLayoutManager;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentLeft()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Lcom/google/android/material/carousel/CarouselLayoutManager;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentRight()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private addAndLayoutView(Landroid/view/View;ILcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x40000000    # 2.0f

    .line 8
    .line 9
    div-float/2addr v0, v1

    .line 10
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    iget p2, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->offsetCenter:F

    .line 14
    .line 15
    sub-float v1, p2, v0

    .line 16
    .line 17
    float-to-int v1, v1

    .line 18
    add-float/2addr p2, v0

    .line 19
    float-to-int p2, p2

    .line 20
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 21
    .line 22
    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->layoutDecoratedWithMargins(Landroid/view/View;II)V

    .line 23
    .line 24
    .line 25
    iget p2, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->center:F

    .line 26
    .line 27
    iget-object p3, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->range:Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 28
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateChildMaskForLocation(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private addEnd(FF)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sub-float/2addr p1, p2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    add-float/2addr p1, p2

    .line 10
    :goto_0
    return p1
.end method

.method private addStart(FF)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    add-float/2addr p1, p2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sub-float/2addr p1, p2

    .line 10
    :goto_0
    return p1
.end method

.method private addViewAtPosition(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-ltz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt p2, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildStartForFill(I)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->makeChildCalculations(Landroidx/recyclerview/widget/RecyclerView$Recycler;FI)Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->child:Landroid/view/View;

    .line 19
    .line 20
    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addAndLayoutView(Landroid/view/View;ILcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method private addViewsEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildStartForFill(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge p3, v1, :cond_2

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->makeChildCalculations(Landroidx/recyclerview/widget/RecyclerView$Recycler;FI)Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget v2, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->offsetCenter:F

    .line 16
    .line 17
    iget-object v3, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->range:Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 18
    .line 19
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsEnd(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(FF)F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget v2, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->offsetCenter:F

    .line 37
    .line 38
    iget-object v3, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->range:Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 39
    .line 40
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsStart(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-object v2, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->child:Landroid/view/View;

    .line 48
    .line 49
    const/4 v3, -0x1

    .line 50
    invoke-direct {p0, v2, v3, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addAndLayoutView(Landroid/view/View;ILcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    :goto_2
    return-void
.end method

.method private addViewsStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildStartForFill(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    if-ltz p2, :cond_2

    .line 6
    .line 7
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->makeChildCalculations(Landroidx/recyclerview/widget/RecyclerView$Recycler;FI)Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->offsetCenter:F

    .line 12
    .line 13
    iget-object v3, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->range:Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 14
    .line 15
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsStart(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addStart(FF)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget v2, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->offsetCenter:F

    .line 33
    .line 34
    iget-object v3, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->range:Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 35
    .line 36
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsEnd(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v2, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->child:Landroid/view/View;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0, v2, v3, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addAndLayoutView(Landroid/view/View;ILcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    add-int/lit8 p2, p2, -0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_2
    return-void
.end method

.method private calculateChildOffsetCenterForLocation(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F
    .locals 4

    .line 1
    iget-object v0, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->leftOrTop:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 4
    .line 5
    iget-object v2, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->rightOrBottom:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 6
    .line 7
    iget v3, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 8
    .line 9
    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 10
    .line 11
    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 12
    .line 13
    invoke-static {v1, v3, v0, v2, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->rightOrBottom:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eq v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v1, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->leftOrTop:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-ne v1, v2, :cond_1

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->getMaskMargins(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    div-float/2addr p1, v1

    .line 56
    iget-object p3, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->rightOrBottom:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 57
    .line 58
    iget v1, p3, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 59
    .line 60
    sub-float/2addr p2, v1

    .line 61
    const/high16 v1, 0x3f800000    # 1.0f

    .line 62
    .line 63
    iget p3, p3, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 64
    .line 65
    sub-float/2addr v1, p3

    .line 66
    add-float/2addr v1, p1

    .line 67
    mul-float v1, v1, p2

    .line 68
    .line 69
    add-float/2addr v0, v1

    .line 70
    :cond_1
    return v0
.end method

.method private calculateChildStartForFill(I)F
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentStart()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    int-to-float v0, v0

    .line 9
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    int-to-float p1, p1

    .line 16
    mul-float v1, v1, p1

    .line 17
    .line 18
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(FF)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method private calculateEndScroll(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/material/carousel/KeylineStateList;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineStateList;->getStartState()Lcom/google/android/material/carousel/KeylineState;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineStateList;->getEndState()Lcom/google/android/material/carousel/KeylineState;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    add-int/lit8 p1, p1, -0x1

    .line 32
    .line 33
    int-to-float p1, p1

    .line 34
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    mul-float p1, p1, p2

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const/high16 p2, -0x40800000    # -1.0f

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    .line 46
    .line 47
    :goto_2
    mul-float p1, p1, p2

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget p2, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->leftOrTopPaddingShift:F

    .line 52
    .line 53
    neg-float p2, p2

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    iget p2, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->rightOrBottomPaddingShift:F

    .line 56
    .line 57
    :goto_3
    iget v2, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentStart()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    int-to-float v3, v3

    .line 64
    sub-float/2addr v2, v3

    .line 65
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentEnd()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    int-to-float v3, v3

    .line 70
    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 71
    .line 72
    sub-float/2addr v3, v1

    .line 73
    sub-float/2addr p1, v2

    .line 74
    add-float/2addr p1, v3

    .line 75
    add-float/2addr p1, p2

    .line 76
    float-to-int p1, p1

    .line 77
    const/4 p2, 0x0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    goto :goto_4

    .line 85
    :cond_4
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    :goto_4
    return p1
.end method

.method private static calculateShouldScrollBy(IIII)I
    .locals 1

    add-int v0, p1, p0

    if-ge v0, p2, :cond_0

    sub-int/2addr p2, p1

    return p2

    :cond_0
    if-le v0, p3, :cond_1

    sub-int/2addr p3, p1

    return p3

    :cond_1
    return p0
.end method

.method private calculateStartScroll(Lcom/google/android/material/carousel/KeylineStateList;)I
    .locals 2
    .param p1    # Lcom/google/android/material/carousel/KeylineStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineStateList;->getEndState()Lcom/google/android/material/carousel/KeylineState;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineStateList;->getStartState()Lcom/google/android/material/carousel/KeylineState;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_1
    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/high16 v1, 0x40000000    # 2.0f

    .line 34
    .line 35
    div-float/2addr p1, v1

    .line 36
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addStart(FF)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentStart()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    int-to-float v0, v0

    .line 45
    sub-float/2addr v0, p1

    .line 46
    float-to-int p1, v0

    .line 47
    return p1
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getOrientation()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, -0x1

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq p1, v3, :cond_b

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    if-eq p1, v4, :cond_a

    .line 12
    .line 13
    const/16 v4, 0x11

    .line 14
    .line 15
    const/high16 v5, -0x80000000

    .line 16
    .line 17
    if-eq p1, v4, :cond_7

    .line 18
    .line 19
    const/16 v4, 0x21

    .line 20
    .line 21
    if-eq p1, v4, :cond_5

    .line 22
    .line 23
    const/16 v4, 0x42

    .line 24
    .line 25
    if-eq p1, v4, :cond_2

    .line 26
    .line 27
    const/16 v2, 0x82

    .line 28
    .line 29
    if-eq p1, v2, :cond_0

    .line 30
    .line 31
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v1, v0, [J

    .line 34
    .line 35
    fill-array-data v1, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v0, v0, [J

    .line 47
    .line 48
    fill-array-data v0, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    return v5

    .line 58
    :cond_0
    if-ne v1, v3, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/high16 v3, -0x80000000

    .line 62
    .line 63
    :goto_0
    return v3

    .line 64
    :cond_2
    if-nez v1, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const/4 v2, 0x1

    .line 74
    :goto_1
    return v2

    .line 75
    :cond_4
    return v5

    .line 76
    :cond_5
    if-ne v1, v3, :cond_6

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_6
    const/high16 v2, -0x80000000

    .line 80
    .line 81
    :goto_2
    return v2

    .line 82
    :cond_7
    if-nez v1, :cond_9

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_8

    .line 89
    .line 90
    const/4 v2, 0x1

    .line 91
    :cond_8
    return v2

    .line 92
    :cond_9
    return v5

    .line 93
    :cond_a
    return v3

    .line 94
    :cond_b
    return v2

    .line 95
    :array_0
    .array-data 8
        -0x5f692ed506f7cc1cL
        -0x4120b01ed4b6d67dL    # -7.465369595902724E-6
        -0x57cbb3650204f974L    # -5.15182904412484E-115
        -0x7ebabd1684ed47c9L
    .end array-data

    .line 96
    .line 97
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
    .line 114
    .line 115
    :array_1
    .array-data 8
        -0x574370e4581da2e9L
        0x7a291f425d798a1eL    # 2.850112685834455E280
        -0x19c247891b4a74d1L    # -3.157144159646127E184
        -0x1bb2cfebd74f25eL
    .end array-data
.end method

.method private fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->removeAndRecycleOutOfBoundsViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addViewsStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 18
    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addViewsEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/lit8 v1, v1, -0x1

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/lit8 v0, v0, -0x1

    .line 47
    .line 48
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addViewsStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addViewsEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->validateChildOrderIfDebugging()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method private getContainerSize()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method private getDecoratedCenterWithMargins(Landroid/view/View;)F
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    :goto_0
    int-to-float p1, p1

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0
.end method

.method private getItemMargins()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 19
    .line 20
    iget v1, v1, Lcom/google/android/material/carousel/CarouselOrientationHelper;->orientation:I

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 25
    .line 26
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 27
    .line 28
    :goto_0
    add-int/2addr v1, v0

    .line 29
    return v1

    .line 30
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 31
    .line 32
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return v1
.end method

.method private getKeylineStateForPosition(I)Lcom/google/android/material/carousel/KeylineState;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStatePositionMap:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {p1, v2, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/google/android/material/carousel/KeylineState;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineStateList;->getDefaultState()Lcom/google/android/material/carousel/KeylineState;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method private getLeftOrTopPaddingForKeylineShift()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselStrategy;->isContained()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getOrientation()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method private getMaskedItemSizeForLocOffset(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F
    .locals 3

    .line 1
    iget-object v0, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->leftOrTop:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    .line 4
    .line 5
    iget-object p2, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->rightOrBottom:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 6
    .line 7
    iget v2, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    .line 8
    .line 9
    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 10
    .line 11
    iget p2, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 12
    .line 13
    invoke-static {v1, v2, v0, p2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method private getParentBottom()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->getParentBottom()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private getParentEnd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->getParentEnd()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private getParentLeft()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->getParentLeft()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private getParentRight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->getParentRight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private getParentStart()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->getParentStart()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private getParentTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->getParentTop()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private getRightOrBottomPaddingForKeylineShift()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselStrategy;->isContained()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getOrientation()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method private getScrollOffsetForPosition(ILcom/google/android/material/carousel/KeylineState;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerSize()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 19
    .line 20
    sub-float/2addr v0, v2

    .line 21
    int-to-float p1, p1

    .line 22
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    mul-float p1, p1, v2

    .line 27
    .line 28
    sub-float/2addr v0, p1

    .line 29
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    div-float/2addr p1, v1

    .line 34
    sub-float/2addr v0, p1

    .line 35
    float-to-int p1, v0

    .line 36
    return p1

    .line 37
    :cond_0
    int-to-float p1, p1

    .line 38
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    mul-float p1, p1, v0

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 49
    .line 50
    sub-float/2addr p1, v0

    .line 51
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    div-float/2addr p2, v1

    .line 56
    add-float/2addr p2, p1

    .line 57
    float-to-int p1, p2

    .line 58
    return p1
.end method

.method private getSmallestScrollOffsetToFocalKeyline(ILcom/google/android/material/carousel/KeylineState;)I
    .locals 6
    .param p2    # Lcom/google/android/material/carousel/KeylineState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getFocalKeylines()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7fffffff

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 23
    .line 24
    int-to-float v3, p1

    .line 25
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    mul-float v3, v3, v4

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/high16 v5, 0x40000000    # 2.0f

    .line 36
    .line 37
    div-float/2addr v4, v5

    .line 38
    add-float/2addr v4, v3

    .line 39
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerSize()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    int-to-float v3, v3

    .line 50
    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 51
    .line 52
    sub-float/2addr v3, v2

    .line 53
    sub-float/2addr v3, v4

    .line 54
    float-to-int v2, v3

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 57
    .line 58
    sub-float/2addr v4, v2

    .line 59
    float-to-int v2, v4

    .line 60
    :goto_1
    iget v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 61
    .line 62
    sub-int/2addr v2, v3

    .line 63
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-le v3, v4, :cond_0

    .line 72
    .line 73
    move v1, v2

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    return v1
.end method

.method private static getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;FZ)",
            "Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    .line 4
    .line 5
    const v2, -0x800001

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 10
    .line 11
    .line 12
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 13
    .line 14
    .line 15
    const v4, -0x800001

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, -0x1

    .line 20
    const/4 v7, -0x1

    .line 21
    const/4 v8, -0x1

    .line 22
    const/4 v9, -0x1

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v10

    .line 27
    if-ge v5, v10, :cond_5

    .line 28
    .line 29
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    check-cast v10, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    iget v10, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iget v10, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 41
    .line 42
    :goto_1
    sub-float v11, v10, p1

    .line 43
    .line 44
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    cmpg-float v12, v10, p1

    .line 49
    .line 50
    if-gtz v12, :cond_1

    .line 51
    .line 52
    cmpg-float v12, v11, v1

    .line 53
    .line 54
    if-gtz v12, :cond_1

    .line 55
    .line 56
    move v6, v5

    .line 57
    move v1, v11

    .line 58
    :cond_1
    cmpl-float v12, v10, p1

    .line 59
    .line 60
    if-lez v12, :cond_2

    .line 61
    .line 62
    cmpg-float v12, v11, v2

    .line 63
    .line 64
    if-gtz v12, :cond_2

    .line 65
    .line 66
    move v8, v5

    .line 67
    move v2, v11

    .line 68
    :cond_2
    cmpg-float v11, v10, v3

    .line 69
    .line 70
    if-gtz v11, :cond_3

    .line 71
    .line 72
    move v7, v5

    .line 73
    move v3, v10

    .line 74
    :cond_3
    cmpl-float v11, v10, v4

    .line 75
    .line 76
    if-lez v11, :cond_4

    .line 77
    .line 78
    move v9, v5

    .line 79
    move v4, v10

    .line 80
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    if-ne v6, v0, :cond_6

    .line 84
    .line 85
    move v6, v7

    .line 86
    :cond_6
    if-ne v8, v0, :cond_7

    .line 87
    .line 88
    move v8, v9

    .line 89
    :cond_7
    new-instance p1, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 90
    .line 91
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    check-cast p2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 96
    .line 97
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 102
    .line 103
    invoke-direct {p1, p2, p0}, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;-><init>(Lcom/google/android/material/carousel/KeylineState$Keyline;Lcom/google/android/material/carousel/KeylineState$Keyline;)V

    .line 104
    .line 105
    .line 106
    return-object p1
.end method

.method private isLocOffsetOutOfFillBoundsEnd(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getMaskedItemSizeForLocOffset(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr p2, v0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addStart(FF)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    cmpg-float p1, p1, p2

    .line 22
    .line 23
    if-gez p1, :cond_1

    .line 24
    .line 25
    :goto_0
    const/4 v0, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerSize()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    int-to-float p2, p2

    .line 32
    cmpl-float p1, p1, p2

    .line 33
    .line 34
    if-lez p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    return v0
.end method

.method private isLocOffsetOutOfFillBoundsStart(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getMaskedItemSizeForLocOffset(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr p2, v0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(FF)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerSize()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    int-to-float p2, p2

    .line 25
    cmpl-float p1, p1, p2

    .line 26
    .line 27
    if-lez p1, :cond_1

    .line 28
    .line 29
    :goto_0
    const/4 v0, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 p2, 0x0

    .line 32
    cmpg-float p1, p1, p2

    .line 33
    .line 34
    if-gez p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    return v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    if-ne p2, p6, :cond_0

    .line 2
    .line 3
    if-ne p3, p7, :cond_0

    .line 4
    .line 5
    if-ne p4, p8, :cond_0

    .line 6
    .line 7
    if-eq p5, p9, :cond_1

    .line 8
    .line 9
    :cond_0
    new-instance p2, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;

    .line 10
    .line 11
    const/16 p3, 0x8

    .line 12
    .line 13
    invoke-direct {p2, p0, p3}, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;-><init>(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method private logChildrenIfDebugging()V
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    iget-boolean v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->isDebuggingEnabled:Z

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v3, v0, [J

    .line 11
    .line 12
    fill-array-data v3, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v3, v0, [J

    .line 31
    .line 32
    fill-array-data v3, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 v3, 0x7

    .line 44
    new-array v3, v3, [J

    .line 45
    .line 46
    fill-array-data v3, :array_2

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-ge v2, v3, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-direct {p0, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getDecoratedCenterWithMargins(Landroid/view/View;)F

    .line 67
    .line 68
    .line 69
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v5, v0, [J

    .line 72
    .line 73
    fill-array-data v5, :array_3

    .line 74
    .line 75
    .line 76
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v5, v1, [J

    .line 85
    .line 86
    fill-array-data v5, :array_4

    .line 87
    .line 88
    .line 89
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 96
    .line 97
    .line 98
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v4, v1, [J

    .line 101
    .line 102
    fill-array-data v4, :array_5

    .line 103
    .line 104
    .line 105
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    new-array v4, v1, [J

    .line 114
    .line 115
    fill-array-data v4, :array_6

    .line 116
    .line 117
    .line 118
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    new-array v0, v0, [J

    .line 130
    .line 131
    fill-array-data v0, :array_7

    .line 132
    .line 133
    .line 134
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v1, v1, [J

    .line 143
    .line 144
    fill-array-data v1, :array_8

    .line 145
    .line 146
    .line 147
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    :cond_2
    return-void

    .line 154
    nop

    .line 155
    :array_0
    .array-data 8
        0x334e1a16a2c8122dL    # 1.4634736931946901E-61
        -0x4d6f36a7d63d165dL    # -3.984934058182088E-65
        -0x13f2a47acebfbd70L
        -0x2e888f67798c2c7fL    # -2.84598896449041E84
    .end array-data

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
    :array_1
    .array-data 8
        -0x1b0522246af8a25dL    # -2.7217653068622605E178
        0x296a9774b4ea5330L    # 3.538314669591587E-109
        0x576d9dbbc56a63c9L    # 1.4244819145233192E113
        0x5d67ea6316d4819dL    # 9.113575435267999E141
    .end array-data

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
    :array_2
    .array-data 8
        0x115db90288535a62L    # 5.018702306097376E-225
        0x2650fc1999d3d9a3L    # 4.014591436005087E-124
        -0x1bf37be346902503L    # -8.816111730216553E173
        -0x5b53296b4956354cL
        0x32e83c9f32696e25L    # 1.8411377261465017E-63
        0x108d45c306d0ecccL
        -0x5341f04daa66c426L    # -3.602876089232719E-93
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
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_3
    .array-data 8
        0x35d7cb535dbf2b2dL    # 2.5438562863895406E-49
        0x61349f6034e9ced2L    # 1.812092334477104E160
        -0x779f17b9a9c5d234L    # -2.560287454565814E-268
        0x6e005aa607964161L    # 7.389471221645513E221
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_4
    .array-data 8
        0x25f32477b9fc3fe6L
        0x5e5a6be2c9bfa6dfL    # 3.299242339772587E146
        0x2440185a1ec7f9e8L    # 4.428802315483024E-134
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_5
    .array-data 8
        0x32fd0380cf18cd9dL    # 4.408022464879882E-63
        0x46c9d1c1b99e9527L    # 1.0473577621276609E33
        0x37f6def4966c5eb3L    # 4.2007245000322144E-39
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_6
    .array-data 8
        0x775f34150f51d7c6L    # 1.006140750614788E267
        -0x74f7c846580a0505L
        -0x4c476d4146240cb2L    # -1.5291954058704137E-59
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :array_7
    .array-data 8
        -0x4e8b6888bc87f025L    # -1.86471496965214E-70
        0x187595de224c2e1L
        0x128934d747e593e6L
        0x79bc48050b48fbf5L    # 2.5066620942060397E278
    .end array-data

    :array_8
    .array-data 8
        -0x7360bd3ec5e05038L    # -6.985912254122493E-248
        -0xf24cb1978555c76L    # -4.325253619653946E235
        -0x13ffe8e63007895fL    # -1.692736730939743E212
    .end array-data
.end method

.method private makeChildCalculations(Landroidx/recyclerview/widget/RecyclerView$Recycler;FI)Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;
    .locals 2

    .line 1
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p3, 0x0

    .line 6
    invoke-virtual {p0, p1, p3, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/high16 v1, 0x40000000    # 2.0f

    .line 16
    .line 17
    div-float/2addr v0, v1

    .line 18
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(FF)F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildOffsetCenterForLocation(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    new-instance v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;

    .line 37
    .line 38
    invoke-direct {v1, p1, p2, v0, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;-><init>(Landroid/view/View;FFLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V

    .line 39
    .line 40
    .line 41
    return-object v1
.end method

.method private offsetChild(Landroid/view/View;FFLandroid/graphics/Rect;)F
    .locals 2

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(FF)F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, p2, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildOffsetCenterForLocation(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-super {p0, p1, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateChildMaskForLocation(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 27
    .line 28
    invoke-virtual {p2, p1, p4, p3, v1}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->offsetChild(Landroid/view/View;Landroid/graphics/Rect;FF)V

    .line 29
    .line 30
    .line 31
    return v1
.end method

.method private recalculateKeylineStateList(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;

    .line 10
    .line 11
    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/carousel/CarouselStrategy;->onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerSize()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    int-to-float v0, v0

    .line 26
    invoke-static {p1, v0}, Lcom/google/android/material/carousel/KeylineState;->reverse(Lcom/google/android/material/carousel/KeylineState;F)Lcom/google/android/material/carousel/KeylineState;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getItemMargins()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    int-to-float v0, v0

    .line 35
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getLeftOrTopPaddingForKeylineShift()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    int-to-float v1, v1

    .line 40
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getRightOrBottomPaddingForKeylineShift()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    int-to-float v2, v2

    .line 45
    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/android/material/carousel/KeylineStateList;->from(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;FFF)Lcom/google/android/material/carousel/KeylineStateList;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 50
    .line 51
    return-void
.end method

.method private refreshKeylineState()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private removeAndRecycleOutOfBoundsViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 4

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getDecoratedCenterWithMargins(Landroid/view/View;)F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v3, v2, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsStart(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sub-int/2addr v0, v1

    .line 42
    if-ltz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    sub-int/2addr v0, v1

    .line 49
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getDecoratedCenterWithMargins(Landroid/view/View;)F

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iget-object v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v3, v2, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsEnd(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    return-void
.end method

.method private scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 9

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->recalculateKeylineStateList(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 7
    :cond_1
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    iget v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    iget v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateShouldScrollBy(IIII)I

    move-result p1

    .line 8
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 9
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateCurrentKeylineStateForScrollOffset(Lcom/google/android/material/carousel/KeylineStateList;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 11
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 12
    invoke-direct {p0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildStartForFill(I)F

    move-result v2

    .line 13
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 15
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    goto :goto_0

    .line 16
    :cond_2
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    :goto_0
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 17
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 18
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 19
    invoke-direct {p0, v6, v2, v0, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->offsetChild(Landroid/view/View;FFLandroid/graphics/Rect;)F

    move-result v7

    sub-float v7, v4, v7

    .line 20
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    if-eqz v6, :cond_3

    cmpg-float v8, v7, v5

    if-gez v8, :cond_3

    .line 21
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentEstimatedPosition:I

    move v5, v7

    .line 22
    :cond_3
    iget-object v6, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v6}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v6

    invoke-direct {p0, v2, v6}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(FF)F

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 23
    :cond_4
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return p1

    :cond_5
    :goto_2
    return v1
.end method

.method private scrollBy(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :goto_0
    return-void
.end method

.method private setCarouselAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/material/R$styleable;->Carousel:[I

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget p2, Lcom/google/android/material/R$styleable;->Carousel_carousel_alignment:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setCarouselAlignment(I)V

    .line 17
    .line 18
    .line 19
    sget p2, Lcom/google/android/material/R$styleable;->RecyclerView_android_orientation:I

    .line 20
    .line 21
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setOrientation(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private updateChildMaskForLocation(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V
    .locals 8

    .line 1
    instance-of v0, p1, Lcom/google/android/material/carousel/Maskable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->leftOrTop:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 7
    .line 8
    iget v1, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 9
    .line 10
    iget-object v2, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->rightOrBottom:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 11
    .line 12
    iget v3, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 13
    .line 14
    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 15
    .line 16
    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 17
    .line 18
    invoke-static {v1, v3, v0, v2, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-float v1, v1

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-float v2, v2

    .line 32
    const/high16 v3, 0x40000000    # 2.0f

    .line 33
    .line 34
    div-float v4, v2, v3

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/high16 v6, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-static {v5, v4, v5, v6, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    div-float v7, v1, v3

    .line 44
    .line 45
    invoke-static {v5, v7, v5, v6, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-object v5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 50
    .line 51
    invoke-virtual {v5, v1, v2, v0, v4}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->getMaskRect(FFFF)Landroid/graphics/RectF;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildOffsetCenterForLocation(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    div-float/2addr p3, v3

    .line 64
    sub-float p3, p2, p3

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    div-float/2addr v1, v3

    .line 71
    add-float/2addr v1, p2

    .line 72
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    div-float/2addr v2, v3

    .line 77
    sub-float v2, p2, v2

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    div-float/2addr v4, v3

    .line 84
    add-float/2addr v4, p2

    .line 85
    new-instance p2, Landroid/graphics/RectF;

    .line 86
    .line 87
    invoke-direct {p2, v2, p3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 88
    .line 89
    .line 90
    new-instance p3, Landroid/graphics/RectF;

    .line 91
    .line 92
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentLeft()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    int-to-float v1, v1

    .line 97
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentTop()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    int-to-float v2, v2

    .line 102
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentRight()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    int-to-float v3, v3

    .line 107
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentBottom()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    int-to-float v4, v4

    .line 112
    invoke-direct {p3, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/google/android/material/carousel/CarouselStrategy;->isContained()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_1

    .line 122
    .line 123
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 124
    .line 125
    invoke-virtual {v1, v0, p2, p3}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->containMaskWithinBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 126
    .line 127
    .line 128
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 129
    .line 130
    invoke-virtual {v1, v0, p2, p3}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->moveMaskOnEdgeOutsideBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 131
    .line 132
    .line 133
    check-cast p1, Lcom/google/android/material/carousel/Maskable;

    .line 134
    .line 135
    invoke-interface {p1, v0}, Lcom/google/android/material/carousel/Maskable;->setMaskRectF(Landroid/graphics/RectF;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method private updateCurrentKeylineStateForScrollOffset(Lcom/google/android/material/carousel/KeylineStateList;)V
    .locals 3
    .param p1    # Lcom/google/android/material/carousel/KeylineStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineStateList;->getEndState()Lcom/google/android/material/carousel/KeylineState;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineStateList;->getStartState()Lcom/google/android/material/carousel/KeylineState;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 26
    .line 27
    int-to-float v2, v2

    .line 28
    int-to-float v1, v1

    .line 29
    int-to-float v0, v0

    .line 30
    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/material/carousel/KeylineStateList;->getShiftedState(FFF)Lcom/google/android/material/carousel/KeylineState;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 35
    .line 36
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->debugItemDecoration:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;->setKeylines(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private updateItemCount()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->lastItemCount:I

    .line 6
    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;

    .line 15
    .line 16
    invoke-virtual {v2, p0, v1}, Lcom/google/android/material/carousel/CarouselStrategy;->shouldRefreshKeylineState(Lcom/google/android/material/carousel/Carousel;I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->refreshKeylineState()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->lastItemCount:I

    .line 26
    .line 27
    :cond_2
    :goto_0
    return-void
.end method

.method private validateChildOrderIfDebugging()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x4

    .line 3
    iget-boolean v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->isDebuggingEnabled:Z

    .line 4
    .line 5
    if-eqz v2, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sub-int/2addr v3, v0

    .line 21
    if-ge v2, v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/lit8 v4, v2, 0x1

    .line 32
    .line 33
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-gt v3, v5, :cond_1

    .line 42
    .line 43
    move v2, v4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->logChildrenIfDebugging()V

    .line 46
    .line 47
    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 v8, 0x7

    .line 58
    new-array v8, v8, [J

    .line 59
    .line 60
    fill-array-data v8, :array_0

    .line 61
    .line 62
    .line 63
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v7, v1, [J

    .line 79
    .line 80
    fill-array-data v7, :array_1

    .line 81
    .line 82
    .line 83
    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v3, v1, [J

    .line 99
    .line 100
    fill-array-data v3, :array_2

    .line 101
    .line 102
    .line 103
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v1, v1, [J

    .line 119
    .line 120
    fill-array-data v1, :array_3

    .line 121
    .line 122
    .line 123
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    const/4 v2, 0x2

    .line 139
    new-array v2, v2, [J

    .line 140
    .line 141
    fill-array-data v2, :array_4

    .line 142
    .line 143
    .line 144
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-static {v1, v6}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :cond_2
    :goto_1
    return-void

    .line 156
    nop

    .line 157
    :array_0
    .array-data 8
        -0x2046b502d3669de3L    # -1.3246980033574256E153
        -0x2ae83daff8e9d37L
        0x2042fb4b3f2295d8L    # 2.831427332716288E-153
        -0x3f31762a0215fd5L    # -3.521548562436272E289
        -0x6b88b892b0bcacc0L    # -4.425553278119242E-210
        -0x29450b6792b245aaL    # -6.330602416130259E109
        -0x72e69e3b51f87deeL
    .end array-data

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
    :array_1
    .array-data 8
        0x7b01290804ce749L
        0x7aae703183ec4104L    # 8.840273566077484E282
        -0x4ba1843815de84a0L    # -1.9425219146892221E-56
        -0x70793a3b36f47d88L    # -7.162171829612242E-234
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
    .line 206
    .line 207
    .line 208
    .line 209
    :array_2
    .array-data 8
        0x20c7b0ae8bc37ec5L    # 9.046492688160198E-151
        -0x669aacd1cf976009L
        0x35738a0413f6761dL    # 3.2639676894465885E-51
        -0x2461c836339562a1L    # -2.1448785711330332E133
    .end array-data

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
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_3
    .array-data 8
        0x106ad6f3a1c5064fL
        -0x734b001259498c7fL
        -0x4e17f85b38d44c10L
        -0x5d11514134363c88L
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_4
    .array-data 8
        0x2131d757400651d7L    # 8.720584723512195E-149
        -0x74b4c986fe334ac3L    # -2.89979065422367E-254
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/google/android/material/carousel/CarouselLayoutManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->refreshKeylineState()V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/google/android/material/carousel/CarouselLayoutManager;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/google/android/material/carousel/CarouselLayoutManager;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method


# virtual methods
.method public calculateScrollDeltaToMakePositionVisible(I)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getKeylineStateForPosition(I)Lcom/google/android/material/carousel/KeylineState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getScrollOffsetForPosition(ILcom/google/android/material/carousel/KeylineState;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 11
    .line 12
    int-to-float v0, v0

    .line 13
    sub-float/2addr v0, p1

    .line 14
    float-to-int p1, v0

    .line 15
    return p1
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-gt v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineStateList;->getDefaultState()Lcom/google/android/material/carousel/KeylineState;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    int-to-float p1, p1

    .line 34
    div-float/2addr v0, p1

    .line 35
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    int-to-float p1, p1

    .line 40
    mul-float p1, p1, v0

    .line 41
    .line 42
    float-to-int p1, p1

    .line 43
    return p1

    .line 44
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 45
    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 2
    .line 3
    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    .line 4
    .line 5
    sub-int/2addr p1, v0

    .line 6
    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getKeylineStateForPosition(I)Lcom/google/android/material/carousel/KeylineState;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getOffsetToScrollToPosition(ILcom/google/android/material/carousel/KeylineState;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Landroid/graphics/PointF;

    .line 23
    .line 24
    int-to-float p1, p1

    .line 25
    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    .line 30
    .line 31
    int-to-float p1, p1

    .line 32
    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-gt v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineStateList;->getDefaultState()Lcom/google/android/material/carousel/KeylineState;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    int-to-float p1, p1

    .line 34
    div-float/2addr v0, p1

    .line 35
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    int-to-float p1, p1

    .line 40
    mul-float p1, p1, v0

    .line 41
    .line 42
    float-to-int p1, p1

    .line 43
    return p1

    .line 44
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 45
    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 2
    .line 3
    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    .line 4
    .line 5
    sub-int/2addr p1, v0

    .line 6
    return p1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public getCarouselAlignment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselAlignment:I

    .line 2
    .line 3
    return v0
.end method

.method public getContainerHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getContainerWidth()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    int-to-float p1, p1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    int-to-float p1, p1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {v0, p1, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getMaskedItemSizeForLocOffset(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x0

    .line 40
    const/high16 v2, 0x40000000    # 2.0f

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    int-to-float v0, v0

    .line 49
    sub-float/2addr v0, p1

    .line 50
    div-float/2addr v0, v2

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    int-to-float v1, v1

    .line 65
    sub-float/2addr v1, p1

    .line 66
    div-float/2addr v1, v2

    .line 67
    :goto_1
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 68
    .line 69
    int-to-float p1, p1

    .line 70
    add-float/2addr p1, v0

    .line 71
    float-to-int p1, p1

    .line 72
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 73
    .line 74
    int-to-float v2, v2

    .line 75
    add-float/2addr v2, v1

    .line 76
    float-to-int v2, v2

    .line 77
    iget v3, p2, Landroid/graphics/Rect;->right:I

    .line 78
    .line 79
    int-to-float v3, v3

    .line 80
    sub-float/2addr v3, v0

    .line 81
    float-to-int v0, v3

    .line 82
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 83
    .line 84
    int-to-float v3, v3

    .line 85
    sub-float/2addr v3, v1

    .line 86
    float-to-int v1, v3

    .line 87
    invoke-virtual {p2, p1, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public getOffsetToScrollToPosition(ILcom/google/android/material/carousel/KeylineState;)I
    .locals 0
    .param p2    # Lcom/google/android/material/carousel/KeylineState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getScrollOffsetForPosition(ILcom/google/android/material/carousel/KeylineState;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 6
    .line 7
    sub-int/2addr p1, p2

    .line 8
    return p1
.end method

.method public getOffsetToScrollToPositionForSnap(IZ)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    iget v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    .line 7
    .line 8
    int-to-float v2, v2

    .line 9
    iget v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    .line 10
    .line 11
    int-to-float v3, v3

    .line 12
    const/4 v4, 0x1

    .line 13
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/carousel/KeylineStateList;->getShiftedState(FFFZ)Lcom/google/android/material/carousel/KeylineState;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getOffsetToScrollToPosition(ILcom/google/android/material/carousel/KeylineState;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStatePositionMap:Ljava/util/Map;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getKeylineStateForPosition(I)Lcom/google/android/material/carousel/KeylineState;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getOffsetToScrollToPosition(ILcom/google/android/material/carousel/KeylineState;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move p1, v0

    .line 35
    :goto_0
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-ge p2, v1, :cond_1

    .line 46
    .line 47
    move v0, p1

    .line 48
    :cond_1
    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/material/carousel/CarouselOrientationHelper;->orientation:I

    .line 4
    .line 5
    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isHorizontal()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/material/carousel/CarouselOrientationHelper;->orientation:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    return v1
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/android/material/carousel/Maskable;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 10
    .line 11
    new-instance v1, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 22
    .line 23
    add-int/2addr v2, v3

    .line 24
    add-int/2addr v2, p2

    .line 25
    iget p2, v1, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 28
    .line 29
    add-int/2addr p2, v1

    .line 30
    add-int/2addr p2, p3

    .line 31
    iget-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 32
    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 36
    .line 37
    iget v1, v1, Lcom/google/android/material/carousel/CarouselOrientationHelper;->orientation:I

    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p3}, Lcom/google/android/material/carousel/KeylineStateList;->getDefaultState()Lcom/google/android/material/carousel/KeylineState;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p3}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 51
    .line 52
    int-to-float p3, p3

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 58
    .line 59
    iget v3, v3, Lcom/google/android/material/carousel/CarouselOrientationHelper;->orientation:I

    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    if-ne v3, v4, :cond_1

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineStateList;->getDefaultState()Lcom/google/android/material/carousel/KeylineState;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 74
    .line 75
    int-to-float v1, v1

    .line 76
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    add-int/2addr v6, v5

    .line 93
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 94
    .line 95
    add-int/2addr v6, v5

    .line 96
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 97
    .line 98
    add-int/2addr v6, v5

    .line 99
    add-int/2addr v6, v2

    .line 100
    float-to-int p3, p3

    .line 101
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->canScrollHorizontally()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-static {v3, v4, v6, p3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    add-int/2addr v5, v4

    .line 126
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 127
    .line 128
    add-int/2addr v5, v4

    .line 129
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 130
    .line 131
    add-int/2addr v5, v0

    .line 132
    add-int/2addr v5, p2

    .line 133
    float-to-int p2, v1

    .line 134
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->canScrollVertically()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-static {v2, v3, v5, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 147
    .line 148
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    const/16 p3, 0xf

    .line 151
    .line 152
    new-array p3, p3, [J

    .line 153
    .line 154
    fill-array-data p3, :array_0

    .line 155
    .line 156
    .line 157
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    nop

    .line 169
    :array_0
    .array-data 8
        0x33b4fc2c61ec771fL    # 1.3059030059309184E-59
        0x2528af62a9fccf99L
        -0x30e6375bd8a0dbc5L    # -1.1388987866597366E73
        0x79204ba46beeaf39L    # 2.820935421578474E275
        -0x6de3910775919ce8L
        0x3ed09c3423ab8599L    # 3.960173269064275E-6
        -0x56386b1c35eada8cL    # -2.008190182553728E-107
        0x1b61d4d6288e660fL    # 8.800712238455713E-177
        0x4d2332a6816b0b94L    # 3.948769360850222E63
        -0x185bcb63d756b085L    # -1.8005162004340252E191
        0x67212ebb5e84bdb0L    # 5.981014113641749E188
        0x3927635b446d0eeaL    # 2.2521932023078067E-33
        -0x6d6c00b9f7f28796L    # -3.540556569053771E-219
        0x5960fc87b00c6ee3L    # 3.5090597312258605E122
        -0x42c9095f3e89978aL    # -8.158235131899781E-14
    .end array-data
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/material/carousel/CarouselStrategy;->initialize(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->refreshKeylineState()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->recyclerViewSizeChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->recyclerViewSizeChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p4, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/high16 p4, -0x80000000

    .line 14
    .line 15
    if-ne p2, p4, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    const/4 p4, -0x1

    .line 19
    if-ne p2, p4, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_2
    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    add-int/lit8 p2, p2, -0x1

    .line 38
    .line 39
    invoke-direct {p0, p3, p2, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addViewAtPosition(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildClosestToStart()Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    add-int/lit8 p2, p2, -0x1

    .line 56
    .line 57
    if-ne p1, p2, :cond_4

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    add-int/lit8 p1, p1, -0x1

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    add-int/lit8 p1, p1, 0x1

    .line 75
    .line 76
    invoke-direct {p0, p3, p1, p4}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addViewAtPosition(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :goto_0
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateItemCount()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateItemCount()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_6

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerSize()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    cmpg-float v0, v0, v2

    .line 15
    .line 16
    if-gtz v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_0
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->recalculateKeylineStateList(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 37
    .line 38
    invoke-direct {p0, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateStartScroll(Lcom/google/android/material/carousel/KeylineStateList;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 43
    .line 44
    invoke-direct {p0, p2, v4}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateEndScroll(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/material/carousel/KeylineStateList;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    move v5, v4

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move v5, v3

    .line 53
    :goto_1
    iput v5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    move v4, v3

    .line 58
    :cond_4
    iput v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    .line 59
    .line 60
    if-eqz v2, :cond_5

    .line 61
    .line 62
    iput v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 63
    .line 64
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    iget v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    .line 71
    .line 72
    iget v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/material/carousel/KeylineStateList;->getKeylineStateForPositionMap(IIIZ)Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStatePositionMap:Ljava/util/Map;

    .line 83
    .line 84
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentEstimatedPosition:I

    .line 85
    .line 86
    const/4 v2, -0x1

    .line 87
    if-eq v0, v2, :cond_5

    .line 88
    .line 89
    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getKeylineStateForPosition(I)Lcom/google/android/material/carousel/KeylineState;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getScrollOffsetForPosition(ILcom/google/android/material/carousel/KeylineState;)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 98
    .line 99
    :cond_5
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 100
    .line 101
    iget v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    .line 102
    .line 103
    iget v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    .line 104
    .line 105
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateShouldScrollBy(IIII)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    add-int/2addr v0, v2

    .line 110
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 111
    .line 112
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 113
    .line 114
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-static {v0, v1, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 123
    .line 124
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 125
    .line 126
    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateCurrentKeylineStateForScrollOffset(Lcom/google/android/material/carousel/KeylineStateList;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->lastItemCount:I

    .line 140
    .line 141
    return-void

    .line 142
    :cond_6
    :goto_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 143
    .line 144
    .line 145
    iput v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 146
    .line 147
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 23
    .line 24
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->validateChildOrderIfDebugging()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    return p4

    .line 7
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p5

    .line 15
    invoke-direct {p0, p5}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getKeylineStateForPosition(I)Lcom/google/android/material/carousel/KeylineState;

    .line 16
    .line 17
    .line 18
    move-result-object p5

    .line 19
    invoke-direct {p0, p3, p5}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSmallestScrollOffsetToFocalKeyline(ILcom/google/android/material/carousel/KeylineState;)I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-nez p3, :cond_1

    .line 24
    .line 25
    return p4

    .line 26
    :cond_1
    iget p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 27
    .line 28
    iget p5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    .line 29
    .line 30
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    .line 31
    .line 32
    invoke-static {p3, p4, p5, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateShouldScrollBy(IIII)I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    iget-object p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 37
    .line 38
    iget p5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 39
    .line 40
    add-int/2addr p5, p3

    .line 41
    int-to-float p3, p5

    .line 42
    iget p5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    .line 43
    .line 44
    int-to-float p5, p5

    .line 45
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    .line 46
    .line 47
    int-to-float v0, v0

    .line 48
    invoke-virtual {p4, p3, p5, v0}, Lcom/google/android/material/carousel/KeylineStateList;->getShiftedState(FFF)Lcom/google/android/material/carousel/KeylineState;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSmallestScrollOffsetToFocalKeyline(ILcom/google/android/material/carousel/KeylineState;)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollBy(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    return p1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->canScrollHorizontally()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public scrollToPosition(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentEstimatedPosition:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getKeylineStateForPosition(I)Lcom/google/android/material/carousel/KeylineState;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getScrollOffsetForPosition(ILcom/google/android/material/carousel/KeylineState;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {p1, v1, v0}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 34
    .line 35
    iget-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateCurrentKeylineStateForScrollOffset(Lcom/google/android/material/carousel/KeylineStateList;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->canScrollVertically()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public setCarouselAlignment(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselAlignment:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->refreshKeylineState()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCarouselStrategy(Lcom/google/android/material/carousel/CarouselStrategy;)V
    .locals 0
    .param p1    # Lcom/google/android/material/carousel/CarouselStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->refreshKeylineState()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDebuggingEnabled(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iput-boolean p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->isDebuggingEnabled:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->debugItemDecoration:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->debugItemDecoration:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setOrientation(I)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    new-array v3, v3, [J

    .line 18
    .line 19
    fill-array-data v3, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v1, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget v0, v0, Lcom/google/android/material/carousel/CarouselOrientationHelper;->orientation:I

    .line 42
    .line 43
    if-eq p1, v0, :cond_3

    .line 44
    .line 45
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->createOrientationHelper(Lcom/google/android/material/carousel/CarouselLayoutManager;I)Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->refreshKeylineState()V

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void

    .line 55
    :array_0
    .array-data 8
        -0x4b6148d93234059cL    # -3.1316807936144654E-55
        -0x443567b0a06a5c27L    # -1.1263404158949133E-20
        0x6dd1f9a834c54f3eL
        0x4db298c5d5d7ec24L    # 1.9584683323240263E66
    .end array-data
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 1
    new-instance p2, Lcom/google/android/material/carousel/CarouselLayoutManager$1;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager$1;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
