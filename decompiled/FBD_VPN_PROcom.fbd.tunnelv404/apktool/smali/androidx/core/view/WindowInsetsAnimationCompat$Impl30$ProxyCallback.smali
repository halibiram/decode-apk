.class Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxyCallback"
.end annotation


# instance fields
.field private final mAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/WindowInsetsAnimation;",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompat:Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

.field private mRORunningAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->getDispatchMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mAnimations:Ljava/util/HashMap;

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mCompat:Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    .line 16
    .line 17
    return-void
.end method

.method private getWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/WindowInsetsAnimationCompat;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mAnimations:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->toWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mAnimations:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mCompat:Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->getWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mAnimations:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mCompat:Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->getWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onPrepare(Landroidx/core/view/WindowInsetsAnimationCompat;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mTmpRunningAnimations:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mTmpRunningAnimations:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mRORunningAnimations:Ljava/util/List;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    :goto_1
    if-ltz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, L땠뎹딨둘듬뒛됴땧뒛뎽뒋듔딠듨딹두둠되뎻땵둬땐딅듸땔듻뎡딹돰돰됐뒵땲딨딟뎰둥땍돝둘돰뒼돼땤땻딠돤땐뎹딸돝땯뒀듌뒐됐딞땠뎨돶땯딄돤뒘돝땠뒋딽듽딹뒾돛둣드딐땪뒈듔땵땬땧땳됐돵둘뒵뎠뎽땰듟둑뒷듐뒘땸뎡둣땮돝딀뒛뎽됨뒾땬땅딹뒬둥돰돴땫듰땭뒨둥딨땸돶땜땃뒤땄뒾디땲딃땋땣뎡;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Ljava/lang/Object;)Landroid/view/WindowInsetsAnimation;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {p0, v1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->getWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v1}, L땠뎹딨둘듬뒛됴땧뒛뎽뒋듔딠듨딹두둠되뎻땵둬땐딅듸땔듻뎡딹돰돰됐뒵땲딨딟뎰둥땍돝둘돰뒼돼땤땻딠돤땐뎹딸돝땯뒀듌뒐됐딞땠뎨돶땯딄돤뒘돝땠뒋딽듽딹뒾돛둣드딐땪뒈듔땵땬땧땳됐돵둘뒵뎠뎽땰듟둑뒷듐뒘땸뎡둣땮돝딀뒛뎽됨뒾땬땅딹뒬둥돰돴땫듰땭뒨둥딨땸돶땜땃뒤땄뒾디땲딃땋땣뎡;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨(Landroid/view/WindowInsetsAnimation;)F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v2, v1}, Landroidx/core/view/WindowInsetsAnimationCompat;->setFraction(F)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mTmpRunningAnimations:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v0, v0, -0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mCompat:Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    .line 62
    .line 63
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mRORunningAnimations:Ljava/util/List;

    .line 68
    .line 69
    invoke-virtual {p2, p1, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method

.method public onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mCompat:Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->getWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->toBoundsCompat(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->toBounds()Landroid/view/WindowInsetsAnimation$Bounds;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
