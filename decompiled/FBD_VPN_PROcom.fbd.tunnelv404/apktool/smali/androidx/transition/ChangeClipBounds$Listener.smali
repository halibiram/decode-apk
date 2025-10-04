.class Landroidx/transition/ChangeClipBounds$Listener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeClipBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# instance fields
.field private final mEnd:Landroid/graphics/Rect;

.field private final mStart:Landroid/graphics/Rect;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/transition/ChangeClipBounds$Listener;->mStart:Landroid/graphics/Rect;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/transition/ChangeClipBounds$Listener;->mEnd:Landroid/graphics/Rect;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/transition/ChangeClipBounds$Listener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    iget-object p2, p0, Landroidx/transition/ChangeClipBounds$Listener;->mEnd:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    iget-object p2, p0, Landroidx/transition/ChangeClipBounds$Listener;->mStart:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public final synthetic onTransitionEnd(Landroidx/transition/Transition;Z)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, L땬땅돠둘돶돛딄듰돨됴땱돷따둘땬든듻뒬될뎻뒼뒛듰돶땮땡됴뒛듼땍둥뒹땯뒋딟땥땭뎸딎땜됩땠땐듽땲뒘뒛돰뎸드땳땳딨땬땣돠듬돶듽돨뒛뒘땰돠뒘든둑땸땨듨둬든땔뒾딠뒼땧뒻두도뒷돳됫땸뒛되둬듸뎨딠딟둠뒾땐둥뒘둑딝됐드듟듼딃땦딹듟돝뒤뎨듽땠돴듼둡땮둑뎽뒷땠땋딤딹뒐듰땱딄듌땵듌됩;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 2
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Landroidx/transition/ChangeClipBounds;->NULL_SENTINEL:Landroid/graphics/Rect;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    .line 12
    .line 13
    sget v1, Landroidx/transition/R$id;->transition_clip:I

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/transition/ChangeClipBounds$Listener;->mEnd:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 2
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    .line 2
    .line 3
    sget v0, Landroidx/transition/R$id;->transition_clip:I

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/graphics/Rect;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public final synthetic onTransitionStart(Landroidx/transition/Transition;Z)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, L땬땅돠둘돶돛딄듰돨됴땱돷따둘땬든듻뒬될뎻뒼뒛듰돶땮땡됴뒛듼땍둥뒹땯뒋딟땥땭뎸딎땜됩땠땐듽땲뒘뒛돰뎸드땳땳딨땬땣돠듬돶듽돨뒛뒘땰돠뒘든둑땸땨듨둬든땔뒾딠뒼땧뒻두도뒷돳됫땸뒛되둬듸뎨딠딟둠뒾땐둥뒘둑딝됐드듟듼딃땦딹듟돝뒤뎨듽땠돴듼둡땮둑뎽뒷땠땋딤딹뒐듰땱딄듌땵듌됩;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V

    return-void
.end method
