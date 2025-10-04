.class final Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyframesWrapperImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private cachedCurrentKeyframe:Lcom/airbnb/lottie/value/Keyframe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation
.end field

.field private cachedInterpolatedProgress:F

.field private currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedCurrentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 6
    .line 7
    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    .line 9
    iput v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedInterpolatedProgress:F

    .line 10
    .line 11
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->findKeyframe(F)Lcom/airbnb/lottie/value/Keyframe;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 19
    .line 20
    return-void
.end method

.method private findKeyframe(F)Lcom/airbnb/lottie/value/Keyframe;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(ILjava/util/List;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    cmpl-float v2, p1, v2

    .line 15
    .line 16
    if-ltz v2, :cond_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/lit8 v0, v0, -0x2

    .line 26
    .line 27
    :goto_0
    if-lt v0, v1, :cond_3

    .line 28
    .line 29
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/airbnb/lottie/value/Keyframe;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 38
    .line 39
    if-ne v3, v2, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/value/Keyframe;->containsProgress(F)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/airbnb/lottie/value/Keyframe;

    .line 60
    .line 61
    return-object p1
.end method


# virtual methods
.method public getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndProgress()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(ILjava/util/List;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getStartDelayProgress()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public isCachedValueEnabled(F)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedCurrentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedInterpolatedProgress:F

    .line 8
    .line 9
    cmpl-float v0, v0, p1

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedCurrentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 16
    .line 17
    iput p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedInterpolatedProgress:F

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValueChanged(F)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/value/Keyframe;->containsProgress(F)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    xor-int/2addr p1, v1

    .line 17
    return p1

    .line 18
    :cond_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->findKeyframe(F)Lcom/airbnb/lottie/value/Keyframe;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 23
    .line 24
    return v1
.end method
