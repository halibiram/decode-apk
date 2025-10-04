.class public Lcom/google/android/material/search/SearchView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;
.implements Lcom/google/android/material/motion/MaterialBackHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/search/SearchView$SavedState;,
        Lcom/google/android/material/search/SearchView$TransitionState;,
        Lcom/google/android/material/search/SearchView$TransitionListener;,
        Lcom/google/android/material/search/SearchView$Behavior;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final TALKBACK_FOCUS_CHANGE_DELAY_MS:J = 0x64L


# instance fields
.field private animatedMenuItems:Z

.field private animatedNavigationIcon:Z

.field private autoShowKeyboard:Z

.field private final backHandlingEnabled:Z

.field private final backOrchestrator:Lcom/google/android/material/motion/MaterialBackOrchestrator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final backgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field final backgroundView:Landroid/view/View;

.field private childImportantForAccessibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final clearButton:Landroid/widget/ImageButton;

.field final contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

.field private currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final divider:Landroid/view/View;

.field final dummyToolbar:Landroidx/appcompat/widget/Toolbar;

.field final editText:Landroid/widget/EditText;

.field private final elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

.field final headerContainer:Landroid/widget/FrameLayout;

.field private final layoutInflated:Z

.field final rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

.field final scrim:Landroid/view/View;

.field private searchBar:Lcom/google/android/material/search/SearchBar;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final searchPrefix:Landroid/widget/TextView;

.field private final searchViewAnimationHelper:Lcom/google/android/material/search/SearchViewAnimationHelper;

.field private softInputMode:I

.field final statusBarSpacer:Landroid/view/View;

.field private statusBarSpacerEnabledOverride:Z

.field final toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

.field final toolbarContainer:Landroid/widget/FrameLayout;

.field private final transitionListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/material/search/SearchView$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private useWindowInsetsController:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_Material3_SearchView:I

    .line 2
    .line 3
    sput v0, Lcom/google/android/material/search/SearchView;->DEF_STYLE_RES:I

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->materialSearchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/search/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    sget v4, Lcom/google/android/material/search/SearchView;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/google/android/material/motion/MaterialBackOrchestrator;

    invoke-direct {p1, p0}, Lcom/google/android/material/motion/MaterialBackOrchestrator;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/material/search/SearchView;->backOrchestrator:Lcom/google/android/material/motion/MaterialBackOrchestrator;

    .line 5
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/SearchView;->transitionListeners:Ljava/util/Set;

    const/16 p1, 0x10

    .line 6
    iput p1, p0, Lcom/google/android/material/search/SearchView;->softInputMode:I

    .line 7
    sget-object p1, Lcom/google/android/material/search/SearchView$TransitionState;->HIDDEN:Lcom/google/android/material/search/SearchView$TransitionState;

    iput-object p1, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 9
    sget-object v2, Lcom/google/android/material/R$styleable;->SearchView:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    sget p3, Lcom/google/android/material/R$styleable;->SearchView_backgroundTint:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/search/SearchView;->backgroundColor:I

    .line 12
    sget p3, Lcom/google/android/material/R$styleable;->SearchView_headerLayout:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 13
    sget v1, Lcom/google/android/material/R$styleable;->SearchView_android_textAppearance:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 14
    sget v1, Lcom/google/android/material/R$styleable;->SearchView_android_text:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 15
    sget v2, Lcom/google/android/material/R$styleable;->SearchView_android_hint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 16
    sget v3, Lcom/google/android/material/R$styleable;->SearchView_searchPrefixText:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 17
    sget v4, Lcom/google/android/material/R$styleable;->SearchView_useDrawerArrowDrawable:I

    .line 18
    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 19
    sget v5, Lcom/google/android/material/R$styleable;->SearchView_animateNavigationIcon:I

    const/4 v7, 0x1

    invoke-virtual {p2, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/material/search/SearchView;->animatedNavigationIcon:Z

    .line 20
    sget v5, Lcom/google/android/material/R$styleable;->SearchView_animateMenuItems:I

    invoke-virtual {p2, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/material/search/SearchView;->animatedMenuItems:Z

    .line 21
    sget v5, Lcom/google/android/material/R$styleable;->SearchView_hideNavigationIcon:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 22
    sget v6, Lcom/google/android/material/R$styleable;->SearchView_autoShowKeyboard:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/material/search/SearchView;->autoShowKeyboard:Z

    .line 23
    sget v6, Lcom/google/android/material/R$styleable;->SearchView_backHandlingEnabled:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/material/search/SearchView;->backHandlingEnabled:Z

    .line 24
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v6, Lcom/google/android/material/R$layout;->mtrl_search_view:I

    invoke-virtual {p2, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    iput-boolean v7, p0, Lcom/google/android/material/search/SearchView;->layoutInflated:Z

    .line 27
    sget p2, Lcom/google/android/material/R$id;->open_search_view_scrim:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->scrim:Landroid/view/View;

    .line 28
    sget p2, Lcom/google/android/material/R$id;->open_search_view_root:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 29
    sget p2, Lcom/google/android/material/R$id;->open_search_view_background:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->backgroundView:Landroid/view/View;

    .line 30
    sget p2, Lcom/google/android/material/R$id;->open_search_view_status_bar_spacer:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->statusBarSpacer:Landroid/view/View;

    .line 31
    sget p2, Lcom/google/android/material/R$id;->open_search_view_header_container:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    .line 32
    sget p2, Lcom/google/android/material/R$id;->open_search_view_toolbar_container:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->toolbarContainer:Landroid/widget/FrameLayout;

    .line 33
    sget p2, Lcom/google/android/material/R$id;->open_search_view_toolbar:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/MaterialToolbar;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 34
    sget p2, Lcom/google/android/material/R$id;->open_search_view_dummy_toolbar:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 35
    sget p2, Lcom/google/android/material/R$id;->open_search_view_search_prefix:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->searchPrefix:Landroid/widget/TextView;

    .line 36
    sget p2, Lcom/google/android/material/R$id;->open_search_view_edit_text:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 37
    sget p2, Lcom/google/android/material/R$id;->open_search_view_clear_button:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->clearButton:Landroid/widget/ImageButton;

    .line 38
    sget p2, Lcom/google/android/material/R$id;->open_search_view_divider:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->divider:Landroid/view/View;

    .line 39
    sget p2, Lcom/google/android/material/R$id;->open_search_view_content_container:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/TouchObserverFrameLayout;

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    .line 40
    new-instance p2, Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-direct {p2, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;-><init>(Lcom/google/android/material/search/SearchView;)V

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->searchViewAnimationHelper:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 41
    new-instance p2, Lcom/google/android/material/elevation/ElevationOverlayProvider;

    invoke-direct {p2, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/material/search/SearchView;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 42
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpRootView()V

    .line 43
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpBackgroundViewElevationOverlay()V

    .line 44
    invoke-direct {p0, p3}, Lcom/google/android/material/search/SearchView;->setUpHeaderLayout(I)V

    .line 45
    invoke-virtual {p0, v3}, Lcom/google/android/material/search/SearchView;->setSearchPrefixText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/search/SearchView;->setUpEditText(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, v4, v5}, Lcom/google/android/material/search/SearchView;->setUpBackButton(ZZ)V

    .line 48
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpClearButton()V

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpContentOnTouchListener()V

    .line 50
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpInsetListeners()V

    return-void
.end method

.method private getActivityWindow()Landroid/view/Window;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/material/internal/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    return-object v0
.end method

.method private getOverlayElevation()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getCompatElevation()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget v1, Lcom/google/android/material/R$dimen;->m3_searchview_elevation:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method private getStatusBarHeight()I
    .locals 5
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v2, v2, [J

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
    move-result-object v1

    .line 20
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    new-array v4, v3, [J

    .line 24
    .line 25
    fill-array-data v4, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v3, v3, [J

    .line 38
    .line 39
    fill-array-data v3, :array_2

    .line 40
    .line 41
    .line 42
    invoke-direct {v4, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-lez v0, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 65
    return v0

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        -0x273bc73c1ad78642L    # -4.0794987019092834E119
        0x634a19a7b9006542L    # 1.9700246511367285E170
        0x7def4c8b73088207L    # 4.0938904939890123E298
        -0x15068f5ffc343f9fL    # -2.041893773108321E207
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        -0x49c94edb2daa2f41L    # -1.552647463659622E-47
        -0x791c8824ab1ca993L    # -1.757193398546577E-275
    .end array-data

    :array_2
    .array-data 8
        0x3e6689c92f841093L    # 4.1980717515141864E-8
        0x337564ae37e08740L    # 8.320670574489435E-61
    .end array-data
.end method

.method private isHiddenOrHiding()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->HIDDEN:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 12
    .line 13
    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->HIDING:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method private isNavigationIconDrawerArrowDrawable(Landroidx/appcompat/widget/Toolbar;)Z
    .locals 0
    .param p1    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    instance-of p1, p1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 10
    .line 11
    return p1
.end method

.method private synthetic lambda$clearFocusAndHideKeyboard$9()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/google/android/material/search/SearchView;->useWindowInsetsController:Z

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->hideKeyboard(Landroid/view/View;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private synthetic lambda$requestFocusAndShowKeyboard$8()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/google/android/material/search/SearchView;->useWindowInsetsController:Z

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->showKeyboard(Landroid/view/View;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private synthetic lambda$setUpBackButton$1(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->hide()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setUpClearButton$2(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->clearText()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->requestFocusAndShowKeyboardIfNeeded()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$setUpContentOnTouchListener$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method private static synthetic lambda$setUpDividerInsetListener$6(Landroid/view/ViewGroup$MarginLayoutParams;IILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-virtual {p4}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    add-int/2addr p3, p1

    .line 6
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 7
    .line 8
    invoke-virtual {p4}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    add-int/2addr p1, p2

    .line 13
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 14
    .line 15
    return-object p4
.end method

.method private static synthetic lambda$setUpRootView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$setUpStatusBarSpacerInsetListener$5(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->setUpStatusBarSpacer(I)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->statusBarSpacerEnabledOverride:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->setStatusBarSpacerEnabledInternal(Z)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-object p2
.end method

.method private synthetic lambda$setUpToolbarInsetListener$4(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 13
    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget p1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget p1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 20
    .line 21
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-int/2addr v2, v0

    .line 28
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    .line 29
    .line 30
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    add-int/2addr v3, p1

    .line 35
    iget p1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 36
    .line 37
    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 38
    .line 39
    .line 40
    return-object p2
.end method

.method private synthetic lambda$setupWithSearchBar$7(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->show()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setStatusBarSpacerEnabledInternal(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->statusBarSpacer:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 p1, 0x8

    .line 8
    .line 9
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;Z)V
    .locals 2
    .param p1    # Lcom/google/android/material/search/SearchView$TransitionState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 3
    sget-object p2, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWN:Lcom/google/android/material/search/SearchView$TransitionState;

    if-ne p1, p2, :cond_1

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchView;->setModalForAccessibility(Z)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p2, Lcom/google/android/material/search/SearchView$TransitionState;->HIDDEN:Lcom/google/android/material/search/SearchView$TransitionState;

    if-ne p1, p2, :cond_2

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchView;->setModalForAccessibility(Z)V

    .line 7
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 8
    iput-object p1, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 9
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->transitionListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/search/SearchView$TransitionListener;

    .line 11
    invoke-interface {v1, p0, p2, p1}, Lcom/google/android/material/search/SearchView$TransitionListener;->onStateChanged(Lcom/google/android/material/search/SearchView;Lcom/google/android/material/search/SearchView$TransitionState;Lcom/google/android/material/search/SearchView$TransitionState;)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->updateListeningForBackCallbacks(Lcom/google/android/material/search/SearchView$TransitionState;)V

    return-void
.end method

.method private setUpBackButton(ZZ)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 11
    .line 12
    new-instance v0, L땍땅딀듨뎡돰뒻땥득듐땜뒹돶뎬땵땁된땥디두뎬돵돳돵득됩듻딹돴땬듽딁둘땹뒻둠딁되따딝도땁둣땤돠됐뎸들땸딌뒛득딜드딸땨딐딨딹땄뒷뒹땳돝딞돠땻듻돳땵듰뎻땵딨돼듌든딄뎸뒋땭땫땹뎡된딌도듰되디땠딸돶돰땟돰듐땱됐돛뒀딄땅돤뒈땸땫뒝뒙땯듟땦땣돷듔땹돠딻땭땦됐딜듼딀땱땵땬땸됴땁;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p0, v1}, L땍땅딀듨뎡돰뒻땥득듐땜뒹돶뎬땵땁된땥디두뎬돵돳돵득됩듻딹돴땬듽딁둘땹뒻둠딁되따딝도땁둣땤돠됐뎸들땸딌뒛득딜드딸땨딐딨딹땄뒷뒹땳돝딞돠땻듻돳땵듰뎻땵딨돼듌든딄뎸뒋땭땫땹뎡된딌도듰되디땠딸돶돰땟돰듐땱됐돛뒀딄땅돤뒈땸땫뒝뒙땯듟땦땣돷듔땹돠딻땭땦됐딜듼딀땱땵땬땸됴땁;-><init>(Lcom/google/android/material/search/SearchView;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    new-instance p1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-direct {p1, p2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    sget p2, Lcom/google/android/material/R$attr;->colorOnSurface:I

    .line 33
    .line 34
    invoke-static {p0, p2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-virtual {p1, p2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method private setUpBackgroundViewElevationOverlay()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->getOverlayElevation()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchView;->setUpBackgroundViewElevationOverlay(F)V

    return-void
.end method

.method private setUpBackgroundViewElevationOverlay(F)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->backgroundView:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/google/android/material/search/SearchView;->backgroundColor:I

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(IF)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setUpClearButton()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->clearButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    new-instance v1, L땍땅딀듨뎡돰뒻땥득듐땜뒹돶뎬땵땁된땥디두뎬돵돳돵득됩듻딹돴땬듽딁둘땹뒻둠딁되따딝도땁둣땤돠됐뎸들땸딌뒛득딜드딸땨딐딨딹땄뒷뒹땳돝딞돠땻듻돳땵듰뎻땵딨돼듌든딄뎸뒋땭땫땹뎡된딌도듰되디땠딸돶돰땟돰듐땱됐돛뒀딄땅돤뒈땸땫뒝뒙땯듟땦땣돷듔땹돠딻땭땦됐딜듼딀땱땵땬땸됴땁;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, L땍땅딀듨뎡돰뒻땥득듐땜뒹돶뎬땵땁된땥디두뎬돵돳돵득됩듻딹돴땬듽딁둘땹뒻둠딁되따딝도땁둣땤돠됐뎸들땸딌뒛득딜드딸땨딐딨딹땄뒷뒹땳돝딞돠땻듻돳땵듰뎻땵딨돼듌든딄뎸뒋땭땫땹뎡된딌도듰되디땠딸돶돰땟돰듐땱됐돛뒀딄땅돤뒈땸땫뒝뒙땯듟땦땣돷듔땹돠딻땭땦됐딜듼딀땱땵땬땸됴땁;-><init>(Lcom/google/android/material/search/SearchView;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 13
    .line 14
    new-instance v1, Lcom/google/android/material/search/SearchView$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchView$1;-><init>(Lcom/google/android/material/search/SearchView;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private setUpContentOnTouchListener()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    .line 2
    .line 3
    new-instance v1, L뒐듽딹딀돛딐딐딃뒵됩땯뒵땹뒐뎻땫땨듼딸뒙돼둡딨땁됩뎨뒾든뒋돤돶듰딎듻뒐둘듟땣듬드딻됐뎹뎬디땸땦뎨뎬딄땦땨땳딸땩뒐됩땮딄땀땮땠땱돤땥듐듻뒙뒉듸땱딎뎰디땋뒘뒨뒀땥뒝든둘땍돠듨땡땰땡뒾딃둠땁땃돼딎땰땲뒝땔땧뒻뒻땫땠돠딐땅뎽둔듐딁둡뒷땐땱디듼듽둑뎻땲돝딞뒾뒹땠뒤딎디듬;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, v2}, L뒐듽딹딀돛딐딐딃뒵됩땯뒵땹뒐뎻땫땨듼딸뒙돼둡딨땁됩뎨뒾든뒋돤돶듰딎듻뒐둘듟땣듬드딻됐뎹뎬디땸땦뎨뎬딄땦땨땳딸땩뒐됩땮딄땀땮땠땱돤땥듐듻뒙뒉듸땱딎뎰디땋뒘뒨뒀땥뒝든둘땍돠듨땡땰땡뒾딃둠땁땃돼딎땰땲뒝땔땧뒻뒻땫땠돠딐땅뎽둔듐딁둡뒷땐땱디듼듽둑뎻땲돝딞뒾뒹땠뒤딎디듬;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/TouchObserverFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setUpDividerInsetListener()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->divider:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    .line 9
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 10
    .line 11
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 12
    .line 13
    iget-object v3, p0, Lcom/google/android/material/search/SearchView;->divider:Landroid/view/View;

    .line 14
    .line 15
    new-instance v4, L뒈듨듼땬딜딄듐듟뎨됫듌딞뒤돵딄뎨뎽뎸뒐둑뎽듌뒻뒈둑딄뒼뒤뒉돝땭땤됩됨둔둘딅땅뒘땲딄땤땸뒘딁땐돷된돴딸땯딽듽됴도딁땨땦땻뒾딀땀땠딃딠뒋듐됩듼딄땟딄딅땝듨딅땲듬뒐도둘뒈듸도땨땅딤돤땋딄딹딽든듬된뒝땜땲된돸됐듐돶뒝뎨땦듟둘딐땳땪땅듐듐딻둔두듔땤뎸땔땱둑둠땟따뎻돼돨돸;

    .line 16
    .line 17
    invoke-direct {v4, v0, v1, v2}, L뒈듨듼땬딜딄듐듟뎨됫듌딞뒤돵딄뎨뎽뎸뒐둑뎽듌뒻뒈둑딄뒼뒤뒉돝땭땤됩됨둔둘딅땅뒘땲딄땤땸뒘딁땐돷된돴딸땯딽듽됴도딁땨땦땻뒾딀땀땠딃딠뒋듐됩듼딄땟딄딅땝듨딅땲듬뒐도둘뒈듸도땨땅딤돤땋딄딹딽든듬된뒝땜땲된돸됐듐돶뒝뎨땦듟둘딐땳땪땅듐듐딻둔두듔땤뎸땔땱둑둠땟따뎻돼돨돸;-><init>(Ljava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private setUpEditText(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 15
    .line 16
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private setUpHeaderLayout(I)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchView;->addHeaderView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private setUpInsetListeners()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpToolbarInsetListener()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpDividerInsetListener()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpStatusBarSpacerInsetListener()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private setUpRootView()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 2
    .line 3
    new-instance v1, L땐돵돳땻땭땵둘뒷딁땲뒬뒨땪땳듬땱땜뒛뎬뒋돛땱둘됴딽땵듌뎨땹돠딞둘돴뒝땧땥돨뒵딹땡땭땯돵됫뒘땤득뒀땄딅뒘땳땐둣땻뒬되뎨듌땸딻땣땫됫땨땋땣된땀땫땭딸땯됩딄딃딹뎰됐뎽딝땥딟땸땭딝땣땧땤돼땅됐됴땍뎰됫둥뒾뒀땫돝땭득뎬뒵땠뒙땅땮땭되땸뒛땟돨뒬둘뒼돶뒋뒻뎬땡뒙뒨딄딟땵도뎸;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setUpStatusBarSpacer(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->statusBarSpacer:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    .line 9
    if-eq v0, p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->statusBarSpacer:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->statusBarSpacer:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private setUpStatusBarSpacerInsetListener()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->getStatusBarHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchView;->setUpStatusBarSpacer(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->statusBarSpacer:Landroid/view/View;

    .line 9
    .line 10
    new-instance v1, L땍땵드딜듻딝듼둠땁딎뒋뎨딤땤땋딠뎸뒉듨뎡됨딐둘땮돴돳땅땁뎰듔두땦뎠땍뒷돴둠땤돼딀딸듽땜땪득뎻딝땥뎰땠땨될됴둣땣되둬뎸됫돴땵뒨땝됐땬돤뒹듔땡뎹딁땅뒻땻땮돝돸뒋뒙땰땋뒷딨땠땨뒨뒵돳돰땄뒷땩딸듻둔땸뒾딽땫될딸땨듬딹딨딤뒼되뎬됫땰돛딐될딟드돵딀딨땰뒾땭뒙땀돷땳돰됐딎땯;

    .line 11
    .line 12
    invoke-direct {v1, p0}, L땍땵드딜듻딝듼둠땁딎뒋뎨딤땤땋딠뎸뒉듨뎡됨딐둘땮돴돳땅땁뎰듔두땦뎠땍뒷돴둠땤돼딀딸듽땜땪득뎻딝땥뎰땠땨될됴둣땣되둬뎸됫돴땵뒨땝됐땬돤뒹듔땡뎹딁땅뒻땻땮돝돸뒋뒙땰땋뒷딨땠땨뒨뒵돳돰땄뒷땩딸듻둔땸뒾딽땫될딸땨듬딹딨딤뒼되뎬됫땰돛딐될딟드돵딀딨땰뒾땭뒙땀돷땳돰됐딎땯;-><init>(Lcom/google/android/material/search/SearchView;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private setUpToolbarInsetListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 2
    .line 3
    new-instance v1, L땍땵드딜듻딝듼둠땁딎뒋뎨딤땤땋딠뎸뒉듨뎡됨딐둘땮돴돳땅땁뎰듔두땦뎠땍뒷돴둠땤돼딀딸듽땜땪득뎻딝땥뎰땠땨될됴둣땣되둬뎸됫돴땵뒨땝됐땬돤뒹듔땡뎹딁땅뒻땻땮돝돸뒋뒙땰땋뒷딨땠땨뒨뒵돳돰땄뒷땩딸듻둔땸뒾딽땫될딸땨듬딹딨딤뒼되뎬됫땰돛딐될딟드돵딀딨땰뒾땭뒙땀돷땳돰됐딎땯;

    .line 4
    .line 5
    invoke-direct {v1, p0}, L땍땵드딜듻딝듼둠땁딎뒋뎨딤땤땋딠뎸뒉듨뎡됨딐둘땮돴돳땅땁뎰듔두땦뎠땍뒷돴둠땤돼딀딸듽땜땪득뎻딝땥뎰땠땨될됴둣땣되둬뎸됫돴땵뒨땝됐땬돤뒹듔땡뎹딁땅뒻땻땮돝돸뒋뒙땰땋뒷딨땠땨뒨뒵돳돰땄뒷땩딸듻둔땸뒾딽땫될딸땨듬딹딨딤뒼되뎬됫땰돛딐될딟드돵딀딨땰뒾땭뒙땀돷땳돰됐딎땯;-><init>(Lcom/google/android/material/search/SearchView;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private updateChildImportantForAccessibility(Landroid/view/ViewGroup;Z)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-ne v1, p0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    check-cast v1, Landroid/view/ViewGroup;

    .line 28
    .line 29
    invoke-direct {p0, v1, p2}, Lcom/google/android/material/search/SearchView;->updateChildImportantForAccessibility(Landroid/view/ViewGroup;Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    if-nez p2, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/android/material/search/SearchView;->childImportantForAccessibilityMap:Ljava/util/Map;

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/android/material/search/SearchView;->childImportantForAccessibilityMap:Ljava/util/Map;

    .line 46
    .line 47
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/search/SearchView;->childImportantForAccessibilityMap:Ljava/util/Map;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const/4 v2, 0x4

    .line 75
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    return-void
.end method

.method private updateListeningForBackCallbacks(Lcom/google/android/material/search/SearchView$TransitionState;)V
    .locals 1
    .param p1    # Lcom/google/android/material/search/SearchView$TransitionState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->backHandlingEnabled:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWN:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->backOrchestrator:Lcom/google/android/material/motion/MaterialBackOrchestrator;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/material/motion/MaterialBackOrchestrator;->startListeningForBackCallbacks()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lcom/google/android/material/search/SearchView$TransitionState;->HIDDEN:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->backOrchestrator:Lcom/google/android/material/motion/MaterialBackOrchestrator;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/android/material/motion/MaterialBackOrchestrator;->stopListeningForBackCallbacks()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method private updateNavigationIconIfNeeded()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchView;->isNavigationIconDrawerArrowDrawable(Landroidx/appcompat/widget/Toolbar;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->getDefaultNavigationIconResource()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/google/android/material/appbar/MaterialToolbar;->getNavigationIconTint()Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/google/android/material/appbar/MaterialToolbar;->getNavigationIconTint()Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 65
    .line 66
    new-instance v2, Lcom/google/android/material/internal/FadeThroughDrawable;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 69
    .line 70
    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-direct {v2, v3, v0}, Lcom/google/android/material/internal/FadeThroughDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->updateNavigationIconProgressIfNeeded()V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method

.method private updateNavigationIconProgressIfNeeded()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v2, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    move-object v2, v0

    .line 34
    check-cast v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 35
    .line 36
    int-to-float v3, v1

    .line 37
    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 38
    .line 39
    .line 40
    :cond_2
    instance-of v2, v0, Lcom/google/android/material/internal/FadeThroughDrawable;

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    check-cast v0, Lcom/google/android/material/internal/FadeThroughDrawable;

    .line 45
    .line 46
    int-to-float v1, v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/FadeThroughDrawable;->setProgress(F)V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/google/android/material/search/SearchView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->lambda$setupWithSearchBar$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroid/view/ViewGroup$MarginLayoutParams;IILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/material/search/SearchView;->lambda$setUpDividerInsetListener$6(Landroid/view/ViewGroup$MarginLayoutParams;IILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/google/android/material/search/SearchView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/SearchView;->lambda$setUpContentOnTouchListener$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/google/android/material/search/SearchView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->lambda$clearFocusAndHideKeyboard$9()V

    return-void
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/google/android/material/search/SearchView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->lambda$requestFocusAndShowKeyboard$8()V

    return-void
.end method

.method public static synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/google/android/material/search/SearchView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->lambda$setUpClearButton$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Lcom/google/android/material/search/SearchView;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchView;->lambda$setUpToolbarInsetListener$4(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Lcom/google/android/material/search/SearchView;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/SearchView;->lambda$setUpStatusBarSpacerInsetListener$5(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/search/SearchView;->lambda$setUpRootView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/google/android/material/search/SearchView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->lambda$setUpBackButton$1(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public addTransitionListener(Lcom/google/android/material/search/SearchView$TransitionListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/search/SearchView$TransitionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->transitionListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->layoutInflated:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public cancelBackProgress()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->isHiddenOrHiding()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v1, 0x22

    .line 14
    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchViewAnimationHelper:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->cancelBackProgress()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public clearFocusAndHideKeyboard()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 2
    .line 3
    new-instance v1, L땍땝딟됨땩땲듼딠땹뒻둬돼돨딻땁뒀뒀땥땳뎰뎠듟땧딽돛딀땱디딀땡딄뒾돷땜땨땅됩돰땭딄듐뎹딐뒘딟뒬들땦뒨둬듔돶돶딠뒷땦돼뒙딌듬둣땩딁딸땳듼됫딎땭땩뒻딁딝뒀땭돨뒋뒹따땜땯돝땱딀뒛땃듔됫땮된땜뒤딅뒬돷든뒤뒷딽뒬뎡돷땝땤뒼둣둔듐듟딻뒋될뒘뒐딐땔뎡돴둘듌듻뒛딝땧뒀뎸두뎹돰땤;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, L땍땝딟됨땩땲듼딠땹뒻둬돼돨딻땁뒀뒀땥땳뎰뎠듟땧딽돛딀땱디딀땡딄뒾돷땜땨땅됩돰땭딄듐뎹딐뒘딟뒬들땦뒨둬듔돶돶딠뒷땦돼뒙딌듬둣땩딁딸땳듼됫딎땭땩뒻딁딝뒀땭돨뒋뒹따땜땯돝땱딀뒛땃듔됫땮된땜뒤딅뒬돷든뒤뒷딽뒬뎡돷땝땤뒼둣둔듐듟딻뒋될뒘뒐딐땔뎡돴둘듌듻뒛딝땧뒀뎸두뎹돰땤;-><init>(Lcom/google/android/material/search/SearchView;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public clearText()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    const-wide v3, -0x187ce598ab7543e7L    # -4.255709872288222E190

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    aput-wide v3, v2, v5

    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public getBackHelper()Lcom/google/android/material/motion/MaterialMainContainerBackHelper;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchViewAnimationHelper:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getBackHelper()Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lcom/google/android/material/search/SearchView;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/search/SearchView$Behavior;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/material/search/SearchView$Behavior;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getCurrentTransitionState()Lcom/google/android/material/search/SearchView$TransitionState;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultNavigationIconResource()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/material/R$drawable;->ic_arrow_back_black_24:I

    .line 2
    .line 3
    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSearchPrefix()Landroid/widget/TextView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchPrefix:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSearchPrefixText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchPrefix:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSoftInputMode()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "KotlinPropertyAccess"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/search/SearchView;->softInputMode:I

    .line 2
    .line 3
    return v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "KotlinPropertyAccess"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleBackInvoked()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->isHiddenOrHiding()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchViewAnimationHelper:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->onHandleBackInvoked()Landroidx/activity/BackEventCompat;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v2, 0x22

    .line 17
    .line 18
    if-lt v1, v2, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchViewAnimationHelper:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->finishBackProgress()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->hide()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->HIDDEN:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 12
    .line 13
    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->HIDING:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchViewAnimationHelper:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->hide()Landroid/animation/AnimatorSet;

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public inflateMenu(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/MenuRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->inflateMenu(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isAdjustNothingSoftInputMode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/search/SearchView;->softInputMode:I

    .line 2
    .line 3
    const/16 v1, 0x30

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

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

.method public isAnimatedNavigationIcon()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->animatedNavigationIcon:Z

    .line 2
    .line 3
    return v0
.end method

.method public isAutoShowKeyboard()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->autoShowKeyboard:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMenuItemsAnimated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->animatedMenuItems:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSetupWithSearchBar()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWN:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 12
    .line 13
    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWING:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public isUseWindowInsetsController()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->useWindowInsetsController:Z

    .line 2
    .line 3
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->updateSoftInputMode()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/material/search/SearchView$SavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lcom/google/android/material/search/SearchView$SavedState;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lcom/google/android/material/search/SearchView$SavedState;->text:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    iget p1, p1, Lcom/google/android/material/search/SearchView$SavedState;->visibility:I

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchView;->setVisible(Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/search/SearchView$SavedState;

    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/material/search/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->getText()Landroid/text/Editable;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    iput-object v1, v0, Lcom/google/android/material/search/SearchView$SavedState;->text:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, v0, Lcom/google/android/material/search/SearchView$SavedState;->visibility:I

    .line 31
    .line 32
    return-object v0
.end method

.method public removeAllHeaderViews()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public removeTransitionListener(Lcom/google/android/material/search/SearchView$TransitionListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/search/SearchView$TransitionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->transitionListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public requestFocusAndShowKeyboard()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 2
    .line 3
    new-instance v1, L땍땝딟됨땩땲듼딠땹뒻둬돼돨딻땁뒀뒀땥땳뎰뎠듟땧딽돛딀땱디딀땡딄뒾돷땜땨땅됩돰땭딄듐뎹딐뒘딟뒬들땦뒨둬듔돶돶딠뒷땦돼뒙딌듬둣땩딁딸땳듼됫딎땭땩뒻딁딝뒀땭돨뒋뒹따땜땯돝땱딀뒛땃듔됫땮된땜뒤딅뒬돷든뒤뒷딽뒬뎡돷땝땤뒼둣둔듐듟딻뒋될뒘뒐딐땔뎡돴둘듌듻뒛딝땧뒀뎸두뎹돰땤;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, L땍땝딟됨땩땲듼딠땹뒻둬돼돨딻땁뒀뒀땥땳뎰뎠듟땧딽돛딀땱디딀땡딄뒾돷땜땨땅됩돰땭딄듐뎹딐뒘딟뒬들땦뒨둬듔돶돶딠뒷땦돼뒙딌듬둣땩딁딸땳듼됫딎땭땩뒻딁딝뒀땭돨뒋뒹따땜땯돝땱딀뒛땃듔됫땮된땜뒤딅뒬돷든뒤뒷딽뒬뎡돷땝땤뒼둣둔듐듟딻뒋될뒘뒐딐땔뎡돴둘듌듻뒛딝땧뒀뎸두뎹돰땤;-><init>(Lcom/google/android/material/search/SearchView;I)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v2, 0x64

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public requestFocusAndShowKeyboardIfNeeded()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchView;->autoShowKeyboard:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->requestFocusAndShowKeyboard()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAnimatedNavigationIcon(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchView;->animatedNavigationIcon:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAutoShowKeyboard(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchView;->autoShowKeyboard:Z

    .line 2
    .line 3
    return-void
.end method

.method public setElevation(F)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->setUpBackgroundViewElevationOverlay(F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setHint(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(I)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMenuItemsAnimated(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchView;->animatedMenuItems:Z

    .line 2
    .line 3
    return-void
.end method

.method public setModalForAccessibility(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/google/android/material/search/SearchView;->childImportantForAccessibilityMap:Ljava/util/Map;

    .line 19
    .line 20
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/search/SearchView;->updateChildImportantForAccessibility(Landroid/view/ViewGroup;Z)V

    .line 21
    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/google/android/material/search/SearchView;->childImportantForAccessibilityMap:Ljava/util/Map;

    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 1
    .param p1    # Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSearchPrefixText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchPrefix:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchPrefix:Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/16 p1, 0x8

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setStatusBarSpacerEnabled(Z)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/search/SearchView;->statusBarSpacerEnabledOverride:Z

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->setStatusBarSpacerEnabledInternal(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "KotlinPropertyAccess"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setToolbarTouchscreenBlocksFocus(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;)V
    .locals 1
    .param p1    # Lcom/google/android/material/search/SearchView$TransitionState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;Z)V

    return-void
.end method

.method public setUseWindowInsetsController(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchView;->useWindowInsetsController:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVisible(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/16 v4, 0x8

    .line 21
    .line 22
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->updateNavigationIconProgressIfNeeded()V

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    sget-object v3, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWN:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    sget-object v3, Lcom/google/android/material/search/SearchView$TransitionState;->HIDDEN:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 34
    .line 35
    :goto_2
    if-eq v0, p1, :cond_3

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_3
    const/4 v1, 0x0

    .line 39
    :goto_3
    invoke-direct {p0, v3, v1}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public setupWithSearchBar(Lcom/google/android/material/search/SearchBar;)V
    .locals 2
    .param p1    # Lcom/google/android/material/search/SearchBar;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchViewAnimationHelper:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setSearchBar(Lcom/google/android/material/search/SearchBar;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance v0, L땍땅딀듨뎡돰뒻땥득듐땜뒹돶뎬땵땁된땥디두뎬돵돳돵득됩듻딹돴땬듽딁둘땹뒻둠딁되따딝도땁둣땤돠됐뎸들땸딌뒛득딜드딸땨딐딨딹땄뒷뒹땳돝딞돠땻듻돳땵듰뎻땵딨돼듌든딄뎸뒋땭땫땹뎡된딌도듰되디땠딸돶돰땟돰듐땱됐돛뒀딄땅돤뒈땸땫뒝뒙땯듟땦땣돷듔땹돠딻땭땦됐딜듼딀땱땵땬땸됴땁;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-direct {v0, p0, v1}, L땍땅딀듨뎡돰뒻땥득듐땜뒹돶뎬땵땁된땥디두뎬돵돳돵득됩듻딹돴땬듽딁둘땹뒻둠딁되따딝도땁둣땤돠됐뎸들땸딌뒛득딜드딸땨딐딨딹땄뒷뒹땳돝딞돠땻듻돳땵듰뎻땵딨돼듌든딄뎸뒋땭땫땹뎡된딌도듰되디땠딸돶돰땟돰듐땱됐돛뒀딄땅돤뒈땸땫뒝뒙땯듟땦땣돷듔땹돠딻땭땦됐딜듼딀땱땵땬땸됴땁;-><init>(Lcom/google/android/material/search/SearchView;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v1, 0x22

    .line 22
    .line 23
    if-lt v0, v1, :cond_0

    .line 24
    .line 25
    :try_start_0
    new-instance v0, L땍땝딟됨땩땲듼딠땹뒻둬돼돨딻땁뒀뒀땥땳뎰뎠듟땧딽돛딀땱디딀땡딄뒾돷땜땨땅됩돰땭딄듐뎹딐뒘딟뒬들땦뒨둬듔돶돶딠뒷땦돼뒙딌듬둣땩딁딸땳듼됫딎땭땩뒻딁딝뒀땭돨뒋뒹따땜땯돝땱딀뒛땃듔됫땮된땜뒤딅뒬돷든뒤뒷딽뒬뎡돷땝땤뒼둣둔듐듟딻뒋될뒘뒐딐땔뎡돴둘듌듻뒛딝땧뒀뎸두뎹돰땤;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-direct {v0, p0, v1}, L땍땝딟됨땩땲듼딠땹뒻둬돼돨딻땁뒀뒀땥땳뎰뎠듟땧딽돛딀땱디딀땡딄뒾돷땜땨땅됩돰땭딄듐뎹딐뒘딟뒬들땦뒨둬듔돶돶딠뒷땦돼뒙딌듬둣땩딁딸땳듼됫딎땭땩뒻딁딝뒀땭돨뒋뒹따땜땯돝땱딀뒛땃듔됫땮된땜뒤딅뒬돷든뒤뒷딽뒬뎡돷땝땤뒼둣둔듐듟딻뒋될뒘뒐딐땔뎡돴둘듌듻뒛딝땧뒀뎸두뎹돰땤;-><init>(Lcom/google/android/material/search/SearchView;I)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, L딝딨뒐뒹듔듻듐땜뒛듬땹뎬땦딃뒋듻돴땣땻돵뎡도듟둑딸뒛딞뒷뎡돨딁땡됐돼땝들딸돛둑딝뒘듬뎠땍뎠딻뒀땁땦듰둑뎰뎡딎돸됩됫땯딃듸땥뎰딨뒻땳뒀땻뎻뒤뒉됨듰들돠뒋뒙딌땁땨땬드땥딹뎠뒤두돨뎰뒀돸딜뒐디뎬듔돴땳돛뎨돼땮땰땧돵돸듼딜돨딠드될땠도됫뒝땥뒙둠듰뒹땱둥땵돨돛땥땦딅돸딐;->뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Lcom/google/android/material/search/SearchBar;L땍땝딟됨땩땲듼딠땹뒻둬돼돨딻땁뒀뒀땥땳뎰뎠듟땧딽돛딀땱디딀땡딄뒾돷땜땨땅됩돰땭딄듐뎹딐뒘딟뒬들땦뒨둬듔돶돶딠뒷땦돼뒙딌듬둣땩딁딸땳듼됫딎땭땩뒻딁딝뒀땭돨뒋뒹따땜땯돝땱딀뒛땃듔됫땮된땜뒤딅뒬돷든뒤뒷딽뒬뎡돷땝땤뒼둣둔듐듟딻뒋될뒘뒐딐땔뎡돴둘듌듻뒛딝땧뒀뎸두뎹돰땤;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    .line 35
    .line 36
    invoke-static {p1}, L딝딨뒐뒹듔듻듐땜뒛듬땹뎬땦딃뒋듻돴땣땻돵뎡도듟둑딸뒛딞뒷뎡돨딁땡됐돼땝들딸돛둑딝뒘듬뎠땍뎠딻뒀땁땦듰둑뎰뎡딎돸됩됫땯딃듸땥뎰딨뒻땳뒀땻뎻뒤뒉됨듰들돠뒋뒙딌땁땨땬드땥딹뎠뒤두돨뎰뒀돸딜뒐디뎬듔돴땳돛뎨돼땮땰땧돵돸듼딜돨딠드될땠도됫뒝땥뒙둠듰뒹땱둥땵돨돛땥땦딅돸딐;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Landroid/widget/EditText;)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->updateNavigationIconIfNeeded()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->setUpBackgroundViewElevationOverlay()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->getCurrentTransitionState()Lcom/google/android/material/search/SearchView$TransitionState;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchView;->updateListeningForBackCallbacks(Lcom/google/android/material/search/SearchView$TransitionState;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWN:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 12
    .line 13
    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWING:Lcom/google/android/material/search/SearchView$TransitionState;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchViewAnimationHelper:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->show()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public startBackProgress(Landroidx/activity/BackEventCompat;)V
    .locals 1
    .param p1    # Landroidx/activity/BackEventCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->isHiddenOrHiding()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchViewAnimationHelper:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->startBackProgress(Landroidx/activity/BackEventCompat;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public updateBackProgress(Landroidx/activity/BackEventCompat;)V
    .locals 2
    .param p1    # Landroidx/activity/BackEventCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->isHiddenOrHiding()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v1, 0x22

    .line 14
    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchView;->searchViewAnimationHelper:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->updateBackProgress(Landroidx/activity/BackEventCompat;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public updateSoftInputMode()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/search/SearchView;->getActivityWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 12
    .line 13
    iput v0, p0, Lcom/google/android/material/search/SearchView;->softInputMode:I

    .line 14
    .line 15
    :cond_0
    return-void
.end method
