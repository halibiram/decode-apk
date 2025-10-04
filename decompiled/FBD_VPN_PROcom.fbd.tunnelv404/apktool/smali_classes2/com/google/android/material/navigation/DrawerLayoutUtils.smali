.class public Lcom/google/android/material/navigation/DrawerLayoutUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_ALPHA:I

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/high16 v0, -0x67000000

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/google/android/material/navigation/DrawerLayoutUtils;->DEFAULT_SCRIM_ALPHA:I

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getScrimCloseAnimatorListener(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0    # Landroidx/drawerlayout/widget/DrawerLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/navigation/DrawerLayoutUtils$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/navigation/DrawerLayoutUtils$1;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static getScrimCloseAnimatorUpdateListener(Landroidx/drawerlayout/widget/DrawerLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 2
    .param p0    # Landroidx/drawerlayout/widget/DrawerLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, L뒐딅땍땔딀땤땳뒙뒋디뒹땝땵뎽듌땅뒉들뒘딞딻드둬뒛딅돛둡듌됴돳땸둬됐딠땭땝뒘딃땫땲땀땀듨돠듬드땱딜땧딞듬들돝땨디됐딨땬땟들뒝된돰땪돛뒬돸도뎨땋될딟뎨뎡땭땍둣딸딎듽듐둑땔듐뎸돶딁듼땣될땵땱된딞땠땫될땣뒋땲딜땲땅듸땠돠딅듸뒹딽둘뒾뒀뎹돶뒹뎽듸땨됩돰돳둥딝뒬돛뒛됫딌땤;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, L뒐딅땍땔딀땤땳뒙뒋디뒹땝땵뎽듌땅뒉들뒘딞딻드둬뒛딅돛둡듌됴돳땸둬됐딠땭땝뒘딃땫땲땀땀듨돠듬드땱딜땧딞듬들돝땨디됐딨땬땟들뒝된돰땪돛뒬돸도뎨땋될딟뎨뎡땭땍둣딸딎듽듐둑땔듐뎸돶딁듼땣될땵땱된딞땠땫될땣뒋땲딜땲땅듸땠돠딅듸뒹딽둘뒾뒀뎹돶뒹뎽듸땨됩돰돳둥딝뒬돛뒛됫딌땤;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static synthetic lambda$getScrimCloseAnimatorUpdateListener$0(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/material/navigation/DrawerLayoutUtils;->DEFAULT_SCRIM_ALPHA:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-static {v0, v1, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/high16 v0, -0x67000000

    .line 13
    .line 14
    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setScrimColor(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/navigation/DrawerLayoutUtils;->lambda$getScrimCloseAnimatorUpdateListener$0(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method
