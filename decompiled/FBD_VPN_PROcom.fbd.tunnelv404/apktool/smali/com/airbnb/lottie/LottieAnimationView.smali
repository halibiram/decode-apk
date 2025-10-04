.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;,
        Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;,
        Lcom/airbnb/lottie/LottieAnimationView$SavedState;,
        Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;
    }
.end annotation


# static fields
.field private static final DEFAULT_FAILURE_LISTENER:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LottieAnimationView"


# instance fields
.field private animationName:Ljava/lang/String;

.field private animationResId:I
    .annotation build Landroidx/annotation/RawRes;
    .end annotation
.end field

.field private autoPlay:Z

.field private cacheComposition:Z

.field private compositionTask:Lcom/airbnb/lottie/LottieTask;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation
.end field

.field private failureListener:Lcom/airbnb/lottie/LottieListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private fallbackResource:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private ignoreUnschedule:Z

.field private final loadedListener:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final lottieOnCompositionLoadedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final userActionsTaken:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;",
            ">;"
        }
    .end annotation
.end field

.field private final wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, L딌땍땬땹딤뎽뒤딁딟땜뒤뎡땭든땡땸땜뒤땀둬돝땔땣뒙디딤딽땤땜뒉뒷뒾들뒀드딨땰딤뒻딜뎡둔땹뒐땰둘뒀둘딎딝돰됩된둠드땰땁뒬딀땭디딐듌뒝땝딅딤땫땍땧돸땩돤땯됴땄듨득둔딝뒵뒘됨땹땣뒀돨둡땩뒻딤딝뒾뒷딝땨땭딃땬돰뒙뒤뒬뎠듰뒨됴땨딐땥돷두땬뒙땨뒐땐뎬디돼돷따땪땁땃든뒀뒤돰된;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->DEFAULT_FAILURE_LISTENER:Lcom/airbnb/lottie/LottieListener;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 3
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 5
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 6
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    .line 7
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 9
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 10
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    const/4 p1, 0x0

    .line 11
    sget v0, Lcom/airbnb/lottie/R$attr;->lottieAnimationViewStyle:I

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 14
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 16
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 17
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    .line 18
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 20
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 21
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 22
    sget p1, Lcom/airbnb/lottie/R$attr;->lottieAnimationViewStyle:I

    invoke-direct {p0, p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 25
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 27
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 28
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    .line 29
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 31
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 32
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 33
    invoke-direct {p0, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/airbnb/lottie/LottieAnimationView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/lottie/LottieListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200()Lcom/airbnb/lottie/LottieListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->DEFAULT_FAILURE_LISTENER:Lcom/airbnb/lottie/LottieListener;

    .line 2
    .line 3
    return-object v0
.end method

.method private cancelLoaderTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->removeListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->removeFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private clearComposition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->clearComposition()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private fromAssets(Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/airbnb/lottie/LottieTask;

    .line 8
    .line 9
    new-instance v1, L돴뎬땐땰딽딞드딨뎸땸뎸도땀듬땩뒝땅뒹돴땀땵돷됩뎻땵땡땸땜딄딅뒘된땤드둣딄드딠뎡돸땀뒤돸됫땦듻듬딠딽땩딄듌둘땸듐돴딹땬딄땐돵들딻땵돰돶땰땥듼둡뎠땄들땬땫뒵딤뎡뒀뒹땭뒉딜두뎬뒻뒋돼둘돼딝땥돶듬땪듟뎡딀따땬뎸딅둥땐됩땅도딌땱둘딽딀뒈땤뎹땰돛돷듽둑딄드뒐딝땅땱됩딃뎰둬;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, p0, p1, v2}, L돴뎬땐땰딽딞드딨뎸땸뎸도땀듬땩뒝땅뒹돴땀땵돷됩뎻땵땡땸땜딄딅뒘된땤드둣딄드딠뎡돸땀뒤돸됫땦듻듬딠딽땩딄듌둘땸듐돴딹땬딄땐돵들딻땵돰돶땰땥듼둡뎠땄들땬땫뒵딤뎡뒀뒹땭뒉딜두뎬뒻뒋돼둘돼딝땥돶듬땪듟뎡딀따땬뎸딅둥땐됩땅도딌땱둘딽딀뒈땤뎹땰돛돷듽둑딄드뒐딝땅땱됩딃뎰둬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-direct {v0, v1, p1}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;Z)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_0
    return-object p1
.end method

.method private fromRawRes(I)Lcom/airbnb/lottie/LottieTask;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/airbnb/lottie/LottieTask;

    .line 8
    .line 9
    new-instance v1, L딌땨딸뒤딌뎻듐됩뎻땍돝뒛뒉뎨듼듻돸뒛땐딟땡될돛땥된땐돛뒛뎽땱딻땬뎬땬뒝됫딜뎠뒤듔땤뒝땜둑땧듬돨됩뒵땀땄뒤듐뒐뒼둠딀딟뒐땲돨디땵듟딅땐돝뎰땩땀득땸딝땋돝듬뎸뒈뒀땍땜뎰된돨듽뒋뒋뒋땍돸뎻땡땃듟뒉뎨딠딜뎡드뒘땠딎둥됩둬딄땀땨땸돼돛돝듻뒬딨뒷뒐딽딝땱딌되땀됩뒉딨뒵땥땔;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, L딌땨딸뒤딌뎻듐됩뎻땍돝뒛뒉뎨듼듻돸뒛땐딟땡될돛땥된땐돛뒛뎽땱딻땬뎬땬뒝됫딜뎠뒤듔땤뒝땜둑땧듬돨됩뒵땀땄뒤듐뒐뒼둠딀딟뒐땲돨디땵듟딅땐돝뎰땩땀득땸딝땋돝듬뎸뒈뒀땍땜뎰된돨듽뒋뒋뒋땍돸뎻땡땃듟뒉뎨딠딜뎡드뒘땠딎둥됩둬딄땀땨땸돼돛돝듻뒬딨뒷뒐딽딝땱딌되땀됩뒉딨뒵땥땔;-><init>(Lcom/airbnb/lottie/LottieAnimationView;I)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-direct {v0, v1, p1}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;Z)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieTask;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView:[I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_cacheComposition:I

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 20
    .line 21
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sget v3, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    sget v5, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    .line 34
    .line 35
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/16 v0, 0xd

    .line 49
    .line 50
    new-array v0, v0, [J

    .line 51
    .line 52
    fill-array-data v0, :array_0

    .line 53
    .line 54
    .line 55
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    if-eqz v4, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-eqz p2, :cond_4

    .line 85
    .line 86
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    if-eqz v6, :cond_4

    .line 91
    .line 92
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    if-eqz p2, :cond_4

    .line 97
    .line 98
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_1
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fallbackRes:I

    .line 102
    .line 103
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setFallbackResource(I)V

    .line 108
    .line 109
    .line 110
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_autoPlay:I

    .line 111
    .line 112
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    if-eqz p2, :cond_5

    .line 117
    .line 118
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 119
    .line 120
    :cond_5
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_loop:I

    .line 121
    .line 122
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    const/4 v1, -0x1

    .line 127
    if-eqz p2, :cond_6

    .line 128
    .line 129
    iget-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 130
    .line 131
    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 132
    .line 133
    .line 134
    :cond_6
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_7

    .line 141
    .line 142
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 147
    .line 148
    .line 149
    :cond_7
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_8

    .line 156
    .line 157
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 162
    .line 163
    .line 164
    :cond_8
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_speed:I

    .line 165
    .line 166
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_9

    .line 171
    .line 172
    const/high16 v3, 0x3f800000    # 1.0f

    .line 173
    .line 174
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 179
    .line 180
    .line 181
    :cond_9
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_clipToCompositionBounds:I

    .line 182
    .line 183
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_a

    .line 188
    .line 189
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setClipToCompositionBounds(Z)V

    .line 194
    .line 195
    .line 196
    :cond_a
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_clipTextToBoundingBox:I

    .line 197
    .line 198
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_b

    .line 203
    .line 204
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setClipTextToBoundingBox(Z)V

    .line 209
    .line 210
    .line 211
    :cond_b
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_defaultFontFileExtension:I

    .line 212
    .line 213
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-eqz v3, :cond_c

    .line 218
    .line 219
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setDefaultFontFileExtension(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_c
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_imageAssetsFolder:I

    .line 227
    .line 228
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_progress:I

    .line 236
    .line 237
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    const/4 v4, 0x0

    .line 242
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 243
    .line 244
    .line 245
    move-result p2

    .line 246
    invoke-direct {p0, p2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setProgressInternal(FZ)V

    .line 247
    .line 248
    .line 249
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove:I

    .line 250
    .line 251
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->enableMergePathsForKitKatAndAbove(Z)V

    .line 256
    .line 257
    .line 258
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_applyOpacityToLayers:I

    .line 259
    .line 260
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 261
    .line 262
    .line 263
    move-result p2

    .line 264
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setApplyingOpacityToLayersEnabled(Z)V

    .line 265
    .line 266
    .line 267
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_applyShadowToLayers:I

    .line 268
    .line 269
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 270
    .line 271
    .line 272
    move-result p2

    .line 273
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setApplyingShadowToLayersEnabled(Z)V

    .line 274
    .line 275
    .line 276
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    .line 277
    .line 278
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_d

    .line 283
    .line 284
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 285
    .line 286
    .line 287
    move-result p2

    .line 288
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-static {v0, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 293
    .line 294
    .line 295
    move-result-object p2

    .line 296
    new-instance v0, Lcom/airbnb/lottie/SimpleColorFilter;

    .line 297
    .line 298
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 299
    .line 300
    .line 301
    move-result p2

    .line 302
    invoke-direct {v0, p2}, Lcom/airbnb/lottie/SimpleColorFilter;-><init>(I)V

    .line 303
    .line 304
    .line 305
    new-instance p2, Lcom/airbnb/lottie/model/KeyPath;

    .line 306
    .line 307
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 308
    .line 309
    const/4 v3, 0x2

    .line 310
    new-array v3, v3, [J

    .line 311
    .line 312
    fill-array-data v3, :array_1

    .line 313
    .line 314
    .line 315
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    filled-new-array {v1}, [Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-direct {p2, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    new-instance v1, Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 330
    .line 331
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 335
    .line 336
    invoke-virtual {p0, p2, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 337
    .line 338
    .line 339
    :cond_d
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_renderMode:I

    .line 340
    .line 341
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-eqz v0, :cond_f

    .line 346
    .line 347
    sget-object v0, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 354
    .line 355
    .line 356
    move-result p2

    .line 357
    invoke-static {}, Lcom/airbnb/lottie/RenderMode;->values()[Lcom/airbnb/lottie/RenderMode;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    array-length v1, v1

    .line 362
    if-lt p2, v1, :cond_e

    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 365
    .line 366
    .line 367
    move-result p2

    .line 368
    :cond_e
    invoke-static {}, Lcom/airbnb/lottie/RenderMode;->values()[Lcom/airbnb/lottie/RenderMode;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    aget-object p2, v0, p2

    .line 373
    .line 374
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    .line 375
    .line 376
    .line 377
    :cond_f
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_asyncUpdates:I

    .line 378
    .line 379
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    if-eqz v0, :cond_11

    .line 384
    .line 385
    sget-object v0, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    .line 386
    .line 387
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 392
    .line 393
    .line 394
    move-result p2

    .line 395
    invoke-static {}, Lcom/airbnb/lottie/RenderMode;->values()[Lcom/airbnb/lottie/RenderMode;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    array-length v1, v1

    .line 400
    if-lt p2, v1, :cond_10

    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 403
    .line 404
    .line 405
    move-result p2

    .line 406
    :cond_10
    invoke-static {}, Lcom/airbnb/lottie/AsyncUpdates;->values()[Lcom/airbnb/lottie/AsyncUpdates;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    aget-object p2, v0, p2

    .line 411
    .line 412
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAsyncUpdates(Lcom/airbnb/lottie/AsyncUpdates;)V

    .line 413
    .line 414
    .line 415
    :cond_11
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_ignoreDisabledSystemAnimations:I

    .line 416
    .line 417
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 418
    .line 419
    .line 420
    move-result p2

    .line 421
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setIgnoreDisabledSystemAnimations(Z)V

    .line 422
    .line 423
    .line 424
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_useCompositionFrameRate:I

    .line 425
    .line 426
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-eqz v0, :cond_12

    .line 431
    .line 432
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 433
    .line 434
    .line 435
    move-result p2

    .line 436
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setUseCompositionFrameRate(Z)V

    .line 437
    .line 438
    .line 439
    :cond_12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 440
    .line 441
    .line 442
    return-void

    .line 443
    :array_0
    .array-data 8
        0x42cadc630cc443c3L    # 5.906771381671152E13
        0x7cc5e6ea6ab9feL
        0x2918d8c36b91aebaL
        0x557ce4a851a1dfc7L    # 6.471337787298187E103
        -0x1e2366dd13af0746L    # -2.573215751912077E163
        0x2db6decc74d031a7L    # 1.7963596143636193E-88
        -0x5b456f2fbff38589L    # -9.356702181625045E-132
        -0x7e2995ab89c40e28L    # -8.367772740322819E-300
        -0x39cc8e7d77b9ccfbL    # -1.5404646977741744E30
        -0x43d29e82e0e78f2L
        -0x6f2ec53e6ad9b802L
        0x76f08abd75fc558fL    # 8.334182299203047E264
        -0x3f80e4546d8c7cd2L    # -497.7293877136425
    .end array-data

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    :array_1
    .array-data 8
        0x12e1e294d099145eL
        0x2283a0d57a36e70eL    # 2.0120269998948527E-142
    .end array-data
.end method

.method private synthetic lambda$fromAssets$2(Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    return-object p1
.end method

.method private synthetic lambda$fromRawRes$1(I)Lcom/airbnb/lottie/LottieResult;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawResSync(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieResult;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawResSync(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    return-object p1
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->isNetworkException(Ljava/lang/Throwable;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v0, v0, [J

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0, p0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v0, v0, [J

    .line 31
    .line 32
    fill-array-data v0, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        -0x9b718e4a35eb9beL    # -6.126236442026201E261
        0x1652c326ab1945b3L    # 3.829915430205506E-201
        0x5e10bcc8e3e06a1eL
        -0x3c0f7f89439b0a5fL    # -1.902529365032895E19
        0x7749c98eceaaf08bL    # 4.157503729314473E266
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_1
    .array-data 8
        0xc9b14577764144fL    # 6.051507492434999E-248
        -0x39ba76a3153cba25L    # -3.412606377912771E30
        0x7956e9a4899cd3e0L    # 3.1731578604630735E276
        -0xf2a246a9e9397deL    # -3.474897859354406E235
        0x22cc0cefa50225e6L    # 4.600585854905805E-141
    .end array-data
.end method

.method private setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieTask;->getResult()Lcom/airbnb/lottie/LottieResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-ne v1, v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 27
    .line 28
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_ANIMATION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->clearComposition()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    .line 52
    .line 53
    return-void
.end method

.method private setLottieDrawable()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->resumeAnimation()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private setProgressInternal(FZ)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 4
    .line 5
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_PROGRESS:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 6
    .line 7
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->lambda$fromAssets$2(Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/airbnb/lottie/LottieAnimationView;->lambda$static$0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/airbnb/lottie/LottieAnimationView;I)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->lambda$fromRawRes$1(I)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z
    .locals 1
    .param p1    # Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;->onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;",
            "Lcom/airbnb/lottie/value/SimpleLottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$1;

    invoke-direct {v1, p0, p3}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void
.end method

.method public cancelAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 5
    .line 6
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->PLAY_OPTION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->cancelAnimation()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public clearValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public disableExtraScaleModeInFitXY()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->disableExtraScaleModeInFitXY()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enableFeatureFlag(Lcom/airbnb/lottie/LottieFeatureFlag;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->enableFeatureFlag(Lcom/airbnb/lottie/LottieFeatureFlag;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    sget-object v1, Lcom/airbnb/lottie/LottieFeatureFlag;->MergePathsApi19:Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/airbnb/lottie/LottieDrawable;->enableFeatureFlag(Lcom/airbnb/lottie/LottieFeatureFlag;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getAsyncUpdates()Lcom/airbnb/lottie/AsyncUpdates;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getAsyncUpdates()Lcom/airbnb/lottie/AsyncUpdates;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAsyncUpdatesEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getAsyncUpdatesEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getClipTextToBoundingBox()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getClipTextToBoundingBox()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getClipToCompositionBounds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getClipToCompositionBounds()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getComposition()Lcom/airbnb/lottie/LottieComposition;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    float-to-long v0, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    :goto_0
    return-wide v0
.end method

.method public getFrame()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getFrame()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetsFolder()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMaintainOriginalImageBounds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getMaintainOriginalImageBounds()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMaxFrame()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getMaxFrame()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMinFrame()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getMinFrame()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRenderMode()Lcom/airbnb/lottie/RenderMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getRenderMode()Lcom/airbnb/lottie/RenderMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getSpeed()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasMasks()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->hasMasks()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasMatte()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->hasMatte()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public invalidate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/airbnb/lottie/LottieDrawable;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/airbnb/lottie/LottieDrawable;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getRenderMode()Lcom/airbnb/lottie/RenderMode;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/airbnb/lottie/RenderMode;->SOFTWARE:Lcom/airbnb/lottie/RenderMode;

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isFeatureFlagEnabled(Lcom/airbnb/lottie/LottieFeatureFlag;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->isFeatureFlagEnabled(Lcom/airbnb/lottie/LottieFeatureFlag;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    sget-object v1, Lcom/airbnb/lottie/LottieFeatureFlag;->MergePathsApi19:Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->isFeatureFlagEnabled(Lcom/airbnb/lottie/LottieFeatureFlag;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public loop(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 23
    .line 24
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_ANIMATION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationResId:I

    .line 46
    .line 47
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 48
    .line 49
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 50
    .line 51
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 65
    .line 66
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_PROGRESS:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 67
    .line 68
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgressInternal(FZ)V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 81
    .line 82
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->PLAY_OPTION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 83
    .line 84
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_4

    .line 89
    .line 90
    iget-boolean v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 95
    .line 96
    .line 97
    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 98
    .line 99
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_IMAGE_ASSETS:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 100
    .line 101
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_5

    .line 106
    .line 107
    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 113
    .line 114
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_REPEAT_MODE:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 115
    .line 116
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_6

    .line 121
    .line 122
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 125
    .line 126
    .line 127
    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 128
    .line 129
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_REPEAT_COUNT:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 130
    .line 131
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_7

    .line 136
    .line 137
    iget p1, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 140
    .line 141
    .line 142
    :cond_7
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    .line 13
    .line 14
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 15
    .line 16
    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationResId:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    .line 25
    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->isAnimatingOrWillAnimateOnVisible()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-boolean v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    .line 33
    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetsFolder()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatMode()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    .line 49
    .line 50
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    .line 57
    .line 58
    return-object v1
.end method

.method public pauseAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->pauseAnimation()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public playAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 2
    .line 3
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->PLAY_OPTION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public removeAllAnimatorListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->removeAllAnimatorListeners()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeAllLottieOnCompositionLoadedListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->removeAllUpdateListeners()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->removeAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z
    .locals 1
    .param p1    # Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public resumeAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 2
    .line 3
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->PLAY_OPTION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->resumeAnimation()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimationSpeed()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAnimation(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 3
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->fromRawRes(I)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    return-void
.end method

.method public setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-static {p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1

    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 6
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->fromAssets(Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    return-void
.end method

.method public setAnimation(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-static {p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStream(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    .line 3
    :goto_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setApplyingOpacityToLayersEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setApplyingShadowToLayersEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setApplyingShadowToLayersEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAsyncUpdates(Lcom/airbnb/lottie/AsyncUpdates;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setAsyncUpdates(Lcom/airbnb/lottie/AsyncUpdates;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCacheComposition(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 2
    .line 3
    return-void
.end method

.method public setClipTextToBoundingBox(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setClipTextToBoundingBox(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setClipToCompositionBounds(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setClipToCompositionBounds(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 3
    .param p1    # Lcom/airbnb/lottie/LottieComposition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-boolean v0, Lcom/airbnb/lottie/L;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    .line 29
    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setComposition(Lcom/airbnb/lottie/LottieComposition;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 53
    .line 54
    if-ne v1, v2, :cond_2

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    if-nez v0, :cond_3

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->setLottieDrawable()V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {p0, p0, v0}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;

    .line 91
    .line 92
    invoke-interface {v1, p1}, Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;->onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    return-void

    .line 97
    :array_0
    .array-data 8
        -0x71d8b47ac49ac1edL    # -1.746771992148404E-240
        0x230f03193acb863fL    # 8.138104322424966E-140
        -0x641e33f96f652c7bL
        0x1f64417177216ea9L    # 1.844158287390391E-157
    .end array-data
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setDefaultFontFileExtension(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFailureListener(Lcom/airbnb/lottie/LottieListener;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/LottieListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    .line 2
    .line 3
    return-void
.end method

.method public setFallbackResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 2
    .line 3
    return-void
.end method

.method public setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFontMap(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setFontMap(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFrame(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIgnoreDisabledSystemAnimations(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setIgnoreDisabledSystemAnimations(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setImagesAssetsFolder(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setMaintainOriginalImageBounds(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaintainOriginalImageBounds(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxProgress(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxProgress(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMinFrame(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinProgress(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setOutlineMasksAndMattes(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setPerformanceTrackingEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgressInternal(FZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setRenderMode(Lcom/airbnb/lottie/RenderMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 2
    .line 3
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_REPEAT_COUNT:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 2
    .line 3
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_REPEAT_MODE:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatMode(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setSafeMode(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setSpeed(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUseCompositionFrameRate(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setUseCompositionFrameRate(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    instance-of v0, p1, Lcom/airbnb/lottie/LottieDrawable;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/airbnb/lottie/LottieDrawable;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->pauseAnimation()V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
