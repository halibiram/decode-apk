.class public final Lcom/google/android/material/transition/SlideDistanceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/transition/VisibilityAnimatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/SlideDistanceProvider$GravityFlag;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISTANCE:I = -0x1


# instance fields
.field private slideDistance:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field private slideEdge:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideDistance:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    .line 8
    .line 9
    return-void
.end method

.method private static createTranslationAppearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;
    .locals 4
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x3

    .line 11
    if-eq p2, v3, :cond_7

    .line 12
    .line 13
    if-eq p2, v0, :cond_6

    .line 14
    .line 15
    const/16 v3, 0x30

    .line 16
    .line 17
    if-eq p2, v3, :cond_5

    .line 18
    .line 19
    const/16 v3, 0x50

    .line 20
    .line 21
    if-eq p2, v3, :cond_4

    .line 22
    .line 23
    const v2, 0x800003

    .line 24
    .line 25
    .line 26
    if-eq p2, v2, :cond_2

    .line 27
    .line 28
    const v2, 0x800005

    .line 29
    .line 30
    .line 31
    if-ne p2, v2, :cond_1

    .line 32
    .line 33
    invoke-static {p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    int-to-float p0, p3

    .line 40
    sub-float p0, v1, p0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    int-to-float p0, p3

    .line 44
    add-float/2addr p0, v1

    .line 45
    :goto_0
    invoke-static {p1, p0, v1, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v0, v0, [J

    .line 60
    .line 61
    fill-array-data v0, :array_0

    .line 62
    .line 63
    .line 64
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-static {p3, p1, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_2
    invoke-static {p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    int-to-float p0, p3

    .line 82
    add-float/2addr p0, v1

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    int-to-float p0, p3

    .line 85
    sub-float p0, v1, p0

    .line 86
    .line 87
    :goto_1
    invoke-static {p1, p0, v1, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_4
    int-to-float p0, p3

    .line 93
    add-float/2addr p0, v2

    .line 94
    invoke-static {p1, p0, v2, v2}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :cond_5
    int-to-float p0, p3

    .line 100
    sub-float p0, v2, p0

    .line 101
    .line 102
    invoke-static {p1, p0, v2, v2}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :cond_6
    int-to-float p0, p3

    .line 108
    sub-float p0, v1, p0

    .line 109
    .line 110
    invoke-static {p1, p0, v1, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :cond_7
    int-to-float p0, p3

    .line 116
    add-float/2addr p0, v1

    .line 117
    invoke-static {p1, p0, v1, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    nop

    .line 123
    :array_0
    .array-data 8
        0x25d15757c50802baL
        -0x7f3678d18a286317L    # -7.27063074213762E-305
        -0x32072827288c175cL    # -4.1860629136606315E67
        -0x50288c6050edcc2dL    # -3.164569505430498E-78
        -0x7e0d57da70ae5c90L
    .end array-data
.end method

.method private static createTranslationDisappearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;
    .locals 4
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x3

    .line 11
    if-eq p2, v3, :cond_7

    .line 12
    .line 13
    if-eq p2, v0, :cond_6

    .line 14
    .line 15
    const/16 v3, 0x30

    .line 16
    .line 17
    if-eq p2, v3, :cond_5

    .line 18
    .line 19
    const/16 v3, 0x50

    .line 20
    .line 21
    if-eq p2, v3, :cond_4

    .line 22
    .line 23
    const v2, 0x800003

    .line 24
    .line 25
    .line 26
    if-eq p2, v2, :cond_2

    .line 27
    .line 28
    const v2, 0x800005

    .line 29
    .line 30
    .line 31
    if-ne p2, v2, :cond_1

    .line 32
    .line 33
    invoke-static {p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    int-to-float p0, p3

    .line 40
    add-float/2addr p0, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    int-to-float p0, p3

    .line 43
    sub-float p0, v1, p0

    .line 44
    .line 45
    :goto_0
    invoke-static {p1, v1, p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v0, v0, [J

    .line 60
    .line 61
    fill-array-data v0, :array_0

    .line 62
    .line 63
    .line 64
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-static {p3, p1, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_2
    invoke-static {p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    int-to-float p0, p3

    .line 82
    sub-float p0, v1, p0

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    int-to-float p0, p3

    .line 86
    add-float/2addr p0, v1

    .line 87
    :goto_1
    invoke-static {p1, v1, p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_4
    int-to-float p0, p3

    .line 93
    sub-float p0, v2, p0

    .line 94
    .line 95
    invoke-static {p1, v2, p0, v2}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_5
    int-to-float p0, p3

    .line 101
    add-float/2addr p0, v2

    .line 102
    invoke-static {p1, v2, p0, v2}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :cond_6
    int-to-float p0, p3

    .line 108
    add-float/2addr p0, v1

    .line 109
    invoke-static {p1, v1, p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :cond_7
    int-to-float p0, p3

    .line 115
    sub-float p0, v1, p0

    .line 116
    .line 117
    invoke-static {p1, v1, p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    nop

    .line 123
    :array_0
    .array-data 8
        0x196f7955bb16a5aeL
        0x1f46bf586462ddd0L
        -0x40b27925ac7df081L    # -9.010854764856939E-4
        -0x228bfe5d5250812fL    # -1.5247781830813407E142
        0x7a8d0d096a87c202L    # 2.109336746877346E282
    .end array-data
.end method

.method private static createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;
    .locals 3

    .line 1
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [F

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput p1, v1, v2

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    aput p2, v1, p1

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    new-array p1, p1, [Landroid/animation/PropertyValuesHolder;

    .line 17
    .line 18
    aput-object p2, p1, v2

    .line 19
    .line 20
    invoke-static {p0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Lcom/google/android/material/transition/SlideDistanceProvider$1;

    .line 25
    .line 26
    invoke-direct {p2, p0, p3}, Lcom/google/android/material/transition/SlideDistanceProvider$1;-><init>(Landroid/view/View;F)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method

.method private static createTranslationYAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;
    .locals 3

    .line 1
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [F

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput p1, v1, v2

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    aput p2, v1, p1

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    new-array p1, p1, [Landroid/animation/PropertyValuesHolder;

    .line 17
    .line 18
    aput-object p2, p1, v2

    .line 19
    .line 20
    invoke-static {p0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Lcom/google/android/material/transition/SlideDistanceProvider$2;

    .line 25
    .line 26
    invoke-direct {p2, p0, p3}, Lcom/google/android/material/transition/SlideDistanceProvider$2;-><init>(Landroid/view/View;F)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method

.method private getSlideDistanceOrDefault(Landroid/content/Context;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideDistance:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_transition_shared_axis_slide_distance:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method private static isRtl(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->getSlideDistanceOrDefault(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationAppearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->getSlideDistanceOrDefault(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationDisappearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public getSlideDistance()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideDistance:I

    .line 2
    .line 3
    return v0
.end method

.method public getSlideEdge()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    .line 2
    .line 3
    return v0
.end method

.method public setSlideDistance(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideDistance:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    new-array v1, v1, [J

    .line 13
    .line 14
    fill-array-data v1, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        0x496ca19b66528059L    # 5.1079905869629656E45
        -0x4320d74efcc23e70L    # -1.729669241104887E-15
        0x30377e5765286935L    # 2.0289400768973463E-76
        0x10a398246547db6cL
        0x7e9ecbe92ae41b4bL    # 8.249685832002309E301
        -0x2e1396bf3da73392L    # -4.415475712925398E86
        0x5daaf7f84c8924d3L    # 1.6443220582923635E143
        0x277678d9e73490f5L
        -0x5791f17e90485930L    # -6.102564908568482E-114
        -0x237c8d3ede639c4bL    # -4.523439388210219E137
        0x533a96f478e98b4aL    # 8.666257601954942E92
        -0x6042defea980a387L    # -8.486463288966889E-156
        0x2def6abf21bfb64eL    # 1.974129740994897E-87
        0x753e7d9fd98ec739L    # 5.722739906548875E256
        0x37e496c37eeec2c9L    # 1.8907937321972417E-39
        0x20e888d7ddc8271dL    # 3.747573509817907E-150
    .end array-data
.end method

.method public setSlideEdge(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    .line 2
    .line 3
    return-void
.end method
