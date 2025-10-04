.class public Lcom/tknetwork/tunnel/view/RippleBackground;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/view/RippleBackground$RippleView;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION_TIME:I = 0xbb8

.field private static final DEFAULT_FILL_TYPE:I = 0x0

.field private static final DEFAULT_RIPPLE_COUNT:I = 0x6

.field private static final DEFAULT_SCALE:F = 6.0f


# instance fields
.field private animationRunning:Z

.field private animatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private paint:Landroid/graphics/Paint;

.field private rippleAmount:I

.field private rippleColor:I

.field private rippleDelay:I

.field private rippleDurationTime:I

.field private rippleParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private rippleRadius:F

.field private rippleScale:F

.field private rippleStrokeWidth:F

.field private rippleType:I

.field private rippleViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tknetwork/tunnel/view/RippleBackground$RippleView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->animationRunning:Z

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleViewList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->animationRunning:Z

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleViewList:Ljava/util/ArrayList;

    .line 7
    sget-object v1, Lcom/v2ray/ang/R$styleable;->RippleBackground:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const v2, 0x7f060335

    .line 8
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleColor:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070329

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleStrokeWidth:F

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070328

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleRadius:F

    const/4 v2, 0x1

    const/16 v3, 0xbb8

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleDurationTime:I

    const/4 v2, 0x3

    const/4 v3, 0x6

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleAmount:I

    const/4 v2, 0x4

    const/high16 v4, 0x40c00000    # 6.0f

    .line 13
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleScale:F

    .line 14
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleType:I

    .line 15
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/view/RippleBackground;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 18
    iput-boolean p3, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->animationRunning:Z

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleViewList:Ljava/util/ArrayList;

    .line 20
    sget-object v0, Lcom/v2ray/ang/R$styleable;->RippleBackground:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v1, 0x7f060335

    .line 21
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleColor:I

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070329

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleStrokeWidth:F

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070328

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleRadius:F

    const/4 v1, 0x1

    const/16 v2, 0xbb8

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleDurationTime:I

    const/4 v1, 0x3

    const/4 v2, 0x6

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleAmount:I

    const/4 v1, 0x4

    const/high16 v3, 0x40c00000    # 6.0f

    .line 26
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleScale:F

    .line 27
    invoke-virtual {v0, v2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleType:I

    .line 28
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/view/RippleBackground;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget p1, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleDurationTime:I

    .line 9
    .line 10
    iget p2, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleAmount:I

    .line 11
    .line 12
    div-int/2addr p1, p2

    .line 13
    iput p1, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleDelay:I

    .line 14
    .line 15
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16
    .line 17
    iget p2, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleRadius:F

    .line 18
    .line 19
    iget v0, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleStrokeWidth:F

    .line 20
    .line 21
    add-float v1, p2, v0

    .line 22
    .line 23
    const/high16 v2, 0x40000000    # 2.0f

    .line 24
    .line 25
    mul-float v1, v1, v2

    .line 26
    .line 27
    float-to-int v1, v1

    .line 28
    add-float/2addr p2, v0

    .line 29
    mul-float p2, p2, v2

    .line 30
    .line 31
    float-to-int p2, p2

    .line 32
    invoke-direct {p1, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 36
    .line 37
    const/16 p2, 0xd

    .line 38
    .line 39
    const/4 v0, -0x1

    .line 40
    invoke-virtual {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/view/RippleBackground;)Landroid/graphics/Paint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/view/RippleBackground;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleColor:I

    return p0
.end method

.method public static bridge synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/view/RippleBackground;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleStrokeWidth:F

    return p0
.end method

.method public static bridge synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/tknetwork/tunnel/view/RippleBackground;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleType:I

    return p0
.end method

.method public static bridge synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/tknetwork/tunnel/view/RippleBackground;Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public static bridge synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/tknetwork/tunnel/view/RippleBackground;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleStrokeWidth:F

    return-void
.end method


# virtual methods
.method public isRippleAnimationRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->animationRunning:Z

    .line 2
    .line 3
    return v0
.end method

.method public setRippleColor(I)Lcom/tknetwork/tunnel/view/RippleBackground;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleColor:I

    .line 2
    .line 3
    return-object p0
.end method

.method public startRippleAnimation()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/view/RippleBackground;->isRippleAnimationRunning()Z

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-nez v3, :cond_2

    .line 9
    .line 10
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 11
    .line 12
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v3, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->animatorSet:Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 18
    .line 19
    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v3, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->animatorList:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleViewList:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    :goto_0
    iget v4, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleAmount:I

    .line 42
    .line 43
    if-ge v3, v4, :cond_0

    .line 44
    .line 45
    new-instance v4, Lcom/tknetwork/tunnel/view/RippleBackground$RippleView;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-direct {v4, p0, v5}, Lcom/tknetwork/tunnel/view/RippleBackground$RippleView;-><init>(Lcom/tknetwork/tunnel/view/RippleBackground;Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    iget-object v5, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 55
    .line 56
    invoke-virtual {p0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    .line 58
    .line 59
    iget-object v5, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleViewList:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v6, v2, [J

    .line 67
    .line 68
    fill-array-data v6, :array_0

    .line 69
    .line 70
    .line 71
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    iget v6, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleScale:F

    .line 79
    .line 80
    const/high16 v7, 0x3f800000    # 1.0f

    .line 81
    .line 82
    new-array v8, v2, [F

    .line 83
    .line 84
    aput v7, v8, v0

    .line 85
    .line 86
    aput v6, v8, v1

    .line 87
    .line 88
    invoke-static {v4, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    const/4 v6, -0x1

    .line 93
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 97
    .line 98
    .line 99
    iget v8, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleDelay:I

    .line 100
    .line 101
    mul-int v8, v8, v3

    .line 102
    .line 103
    int-to-long v8, v8

    .line 104
    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 105
    .line 106
    .line 107
    iget v8, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleDurationTime:I

    .line 108
    .line 109
    int-to-long v8, v8

    .line 110
    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 111
    .line 112
    .line 113
    iget-object v8, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->animatorList:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    new-array v8, v2, [J

    .line 121
    .line 122
    fill-array-data v8, :array_1

    .line 123
    .line 124
    .line 125
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    iget v8, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleScale:F

    .line 133
    .line 134
    new-array v9, v2, [F

    .line 135
    .line 136
    aput v7, v9, v0

    .line 137
    .line 138
    aput v8, v9, v1

    .line 139
    .line 140
    invoke-static {v4, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 148
    .line 149
    .line 150
    iget v7, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleDelay:I

    .line 151
    .line 152
    mul-int v7, v7, v3

    .line 153
    .line 154
    int-to-long v7, v7

    .line 155
    invoke-virtual {v5, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 156
    .line 157
    .line 158
    iget v7, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleDurationTime:I

    .line 159
    .line 160
    int-to-long v7, v7

    .line 161
    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 162
    .line 163
    .line 164
    iget-object v7, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->animatorList:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 170
    .line 171
    new-array v7, v2, [J

    .line 172
    .line 173
    fill-array-data v7, :array_2

    .line 174
    .line 175
    .line 176
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    new-array v7, v2, [F

    .line 184
    .line 185
    fill-array-data v7, :array_3

    .line 186
    .line 187
    .line 188
    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 196
    .line 197
    .line 198
    iget v5, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleDelay:I

    .line 199
    .line 200
    mul-int v5, v5, v3

    .line 201
    .line 202
    int-to-long v5, v5

    .line 203
    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 204
    .line 205
    .line 206
    iget v5, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleDurationTime:I

    .line 207
    .line 208
    int-to-long v5, v5

    .line 209
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 210
    .line 211
    .line 212
    iget-object v5, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->animatorList:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    add-int/2addr v3, v1

    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_0
    iget-object v2, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->animatorSet:Landroid/animation/AnimatorSet;

    .line 221
    .line 222
    iget-object v3, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->animatorList:Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 225
    .line 226
    .line 227
    iget-object v2, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->rippleViewList:Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-eqz v3, :cond_1

    .line 238
    .line 239
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    check-cast v3, Lcom/tknetwork/tunnel/view/RippleBackground$RippleView;

    .line 244
    .line 245
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->animatorSet:Landroid/animation/AnimatorSet;

    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 252
    .line 253
    .line 254
    iput-boolean v1, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->animationRunning:Z

    .line 255
    .line 256
    :cond_2
    return-void

    .line 257
    :array_0
    .array-data 8
        0x65b9b56a237134afL    # 1.0667844672529565E182
        -0x5968e9fe7f29a849L    # -8.730713255769061E-123
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_1
    .array-data 8
        -0x72d38701d4d6fa06L
        -0x7e2a967416d33d71L    # -7.993324916432027E-300
    .end array-data

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
    .line 280
    .line 281
    :array_2
    .array-data 8
        -0x6c6cf003f9fa83f9L    # -2.211880043419899E-214
        -0x2a687e76342f8879L    # -2.1058983894682944E104
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public stopRippleAnimation()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/view/RippleBackground;->isRippleAnimationRunning()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->animatorSet:Landroid/animation/AnimatorSet;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/RippleBackground;->animationRunning:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method
