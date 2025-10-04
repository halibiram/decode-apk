.class public Lcom/google/android/material/motion/MaterialMainContainerBackHelper;
.super Lcom/google/android/material/motion/MaterialBackAnimationHelper;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/motion/MaterialBackAnimationHelper<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_SCALE:F = 0.9f


# instance fields
.field private expandedCornerSize:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private initialHideFromClipBounds:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private initialHideToClipBounds:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private initialTouchY:F

.field private final maxTranslationY:F

.field private final minEdgeGap:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_main_container_min_edge_gap:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->minEdgeGap:F

    .line 15
    .line 16
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_main_container_max_translation_y:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->maxTranslationY:F

    .line 23
    .line 24
    return-void
.end method

.method private createCornerAnimator(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;)Landroid/animation/ValueAnimator;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getCornerRadius()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getExpandedCornerSize()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    const/4 v2, 0x2

    .line 11
    new-array v3, v2, [F

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aput v0, v3, v4

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    aput v1, v3, v0

    .line 18
    .line 19
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, L뒐딅땍땔딀땤땳뒙뒋디뒹땝땵뎽듌땅뒉들뒘딞딻드둬뒛딅돛둡듌됴돳땸둬됐딠땭땝뒘딃땫땲땀땀듨돠듬드땱딜땧딞듬들돝땨디됐딨땬땟들뒝된돰땪돛뒬돸도뎨땋될딟뎨뎡땭땍둣딸딎듽듐둑땔듐뎸돶딁듼땣될땵땱된딞땠땫될땣뒋땲딜땲땅듸땠돠딅듸뒹딽둘뒾뒀뎹돶뒹뎽듸땨됩돰돳둥딝뒬돛뒛됫딌땤;

    .line 24
    .line 25
    invoke-direct {v1, p1, v2}, L뒐딅땍땔딀땤땳뒙뒋디뒹땝땵뎽듌땅뒉들뒘딞딻드둬뒛딅돛둡듌됴돳땸둬됐딠땭땝뒘딃땫땲땀땀듨돠듬드땱딜땧딞듬들돝땨디됐딨땬땟들뒝된돰땪돛뒬돸도뎨땋될딟뎨뎡땭땍둣딸딎듽듐둑땔듐뎸돶딁듼땣될땵땱된딞땠땫될땣뒋땲딜땲땅듸땠돠딅듸뒹딽둘뒾뒀뎹돶뒹뎽듸땨됩돰돳둥딝뒬돛뒛됫딌땤;-><init>(Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private createResetScaleAndTranslationAnimator(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    .line 7
    .line 8
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 9
    .line 10
    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    new-array v5, v4, [F

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    aput v3, v5, v6

    .line 17
    .line 18
    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    .line 23
    .line 24
    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 25
    .line 26
    new-array v7, v4, [F

    .line 27
    .line 28
    aput v3, v7, v6

    .line 29
    .line 30
    invoke-static {v2, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    .line 35
    .line 36
    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    new-array v8, v4, [F

    .line 40
    .line 41
    aput v7, v8, v6

    .line 42
    .line 43
    invoke-static {v3, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v5, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    .line 48
    .line 49
    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 50
    .line 51
    new-array v9, v4, [F

    .line 52
    .line 53
    aput v7, v9, v6

    .line 54
    .line 55
    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const/4 v7, 0x4

    .line 60
    new-array v7, v7, [Landroid/animation/Animator;

    .line 61
    .line 62
    aput-object v1, v7, v6

    .line 63
    .line 64
    aput-object v2, v7, v4

    .line 65
    .line 66
    const/4 v1, 0x2

    .line 67
    aput-object v3, v7, v1

    .line 68
    .line 69
    const/4 v1, 0x3

    .line 70
    aput-object v5, v7, v1

    .line 71
    .line 72
    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$1;

    .line 76
    .line 77
    invoke-direct {v1, p0, p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$1;-><init>(Lcom/google/android/material/motion/MaterialMainContainerBackHelper;Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    .line 82
    .line 83
    return-object v0
.end method

.method private getMaxDeviceCornerRadius()I
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    .line 9
    .line 10
    invoke-static {v0}, L땸듬땠뒝드딻돳땟뒉땠따듰땮될듨뎽두딻둥뎡딸땵땄땸돶둡돸뎽땹득뒋딸딃딟되땮딅되됴두땪땥땠땥돵뒘뒵돠뒤따딎딀듔땅둥둬땠듌돛둥둑땝땔딠뒬둡뎹돵뒋듸둣돤둬둘돸땸듐둡뒵될들땹돤듨땔땥땅땔둬뎸딹됫뒹뒘뒉둔든돷땬뎬딎땵땯된뒙땩돷땃뎸딠돨돤돸딌듽뒛됫뒻딐땃뒨따도뎰듨딁됨듼뎬둡;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Landroid/view/View;)Landroid/view/WindowInsets;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getRoundedCornerRadius(Landroid/view/WindowInsets;I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getRoundedCornerRadius(Landroid/view/WindowInsets;I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x3

    .line 30
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getRoundedCornerRadius(Landroid/view/WindowInsets;I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x2

    .line 35
    invoke-direct {p0, v0, v3}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getRoundedCornerRadius(Landroid/view/WindowInsets;I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    return v0

    .line 48
    :cond_0
    return v2
.end method

.method private getRoundedCornerRadius(Landroid/view/WindowInsets;I)I
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    .line 1
    invoke-static {p1, p2}, L돨뎻듐뎠뎽둔돶뒨뒐돨듌돶도땪딤뒬딌딟두딤듌땲되뒤됫땫됴뒹땲땤뎻땤땹돷될뎽땨딅땭둣뒀듬돷땮땱됐뎹딸땸땣뒹뒬딐땫둠뒤뎻뒨듨뎠딅딸땁딁뒐뎬땱듬든딨듨된뎠땍따둡땁땹됩둘딌둣땹땧듼땠땜땨땠땳뒼땐땟뎽땋돝듸뒼뎠땀딝든땍듽땠듟듸뎰딀땯땍뒛땮뎬듌둬듐듼뎰딎된들돛뎬듽딀딀딃돝땵;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, L돨뎻듐뎠뎽둔돶뒨뒐돨듌돶도땪딤뒬딌딟두딤듌땲되뒤됫땫됴뒹땲땤뎻땤땹돷될뎽땨딅땭둣뒀듬돷땮땱됐뎹딸땸땣뒹뒬딐땫둠뒤뎻뒨듨뎠딅딸땁딁뒐뎬땱듬든딨듨된뎠땍따둡땁땹됩둘딌둣땹땧듼땠땜땨땠땳뒼땐땟뎽땋돝듸뒼뎠땀딝든땍듽땠듟듸뎰딀땯땍뒛땮뎬듌둬듐듼뎰딎된들돛뎬듽딀딀딃돝땵;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroid/view/RoundedCorner;)I

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

.method private isAtTopOfScreen()Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    aget v0, v0, v1

    .line 11
    .line 12
    if-nez v0, :cond_0

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

.method private static synthetic lambda$createCornerAnimator$0(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateCornerRadius(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private resetInitialValues()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialTouchY:F

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideToClipBounds:Landroid/graphics/Rect;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideFromClipBounds:Landroid/graphics/Rect;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->lambda$createCornerAnimator$0(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public cancelBackProgress(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onCancelBackProgress()Landroidx/activity/BackEventCompat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->createResetScaleAndTranslationAnimator(Landroid/view/View;)Landroid/animation/AnimatorSet;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    .line 13
    .line 14
    instance-of v1, v0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->createCornerAnimator(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;)Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x1

    .line 25
    new-array v1, v1, [Landroid/animation/Animator;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    aput-object v0, v1, v2

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->cancelDuration:I

    .line 34
    .line 35
    int-to-long v0, v0

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->resetInitialValues()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public finishBackProgress(JLandroid/view/View;)V
    .locals 0
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->createResetScaleAndTranslationAnimator(Landroid/view/View;)Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p3, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->resetInitialValues()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getExpandedCornerSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->expandedCornerSize:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->isAtTopOfScreen()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getMaxDeviceCornerRadius()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->expandedCornerSize:Ljava/lang/Integer;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->expandedCornerSize:Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public getInitialHideFromClipBounds()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideFromClipBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInitialHideToClipBounds()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideToClipBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public startBackProgress(FLandroid/view/View;)V
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->calculateRectFromBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideToClipBounds:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/google/android/material/internal/ViewUtils;->calculateOffsetRectFromBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideFromClipBounds:Landroid/graphics/Rect;

    .line 5
    :cond_0
    iput p1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialTouchY:F

    return-void
.end method

.method public startBackProgress(Landroidx/activity/BackEventCompat;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroidx/activity/BackEventCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onStartBackProgress(Landroidx/activity/BackEventCompat;)V

    .line 2
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getTouchY()F

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->startBackProgress(FLandroid/view/View;)V

    return-void
.end method

.method public updateBackProgress(FZFF)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->interpolateProgress(F)F

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 9
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-lez v3, :cond_2

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    .line 10
    invoke-static {v3, v4, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v3

    mul-float v4, v4, v0

    sub-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    .line 11
    iget v5, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->minEdgeGap:F

    sub-float/2addr v0, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 12
    invoke-static {v2, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    int-to-float p2, p2

    mul-float v0, v0, p2

    mul-float p2, v3, v1

    sub-float p2, v1, p2

    div-float/2addr p2, v4

    .line 13
    iget v4, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->minEdgeGap:F

    sub-float/2addr p2, v4

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 14
    iget v4, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->maxTranslationY:F

    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 15
    iget v4, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialTouchY:F

    sub-float/2addr p3, v4

    .line 16
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v1

    .line 17
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p3

    .line 18
    invoke-static {v2, p2, v4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p2

    mul-float p2, p2, p3

    .line 19
    iget-object p3, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->setScaleX(F)V

    .line 20
    iget-object p3, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->setScaleY(F)V

    .line 21
    iget-object p3, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 22
    iget-object p3, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 23
    iget-object p2, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    instance-of p3, p2, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    if-eqz p3, :cond_2

    .line 24
    check-cast p2, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 25
    invoke-virtual {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getExpandedCornerSize()I

    move-result p3

    int-to-float p3, p3

    invoke-static {p3, p4, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateCornerRadius(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateBackProgress(Landroidx/activity/BackEventCompat;Landroid/view/View;F)V
    .locals 2
    .param p1    # Landroidx/activity/BackEventCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onUpdateBackProgress(Landroidx/activity/BackEventCompat;)Landroidx/activity/BackEventCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getSwipeEdge()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result v0

    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getTouchY()F

    move-result p1

    .line 6
    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->updateBackProgress(FZFF)V

    return-void
.end method
