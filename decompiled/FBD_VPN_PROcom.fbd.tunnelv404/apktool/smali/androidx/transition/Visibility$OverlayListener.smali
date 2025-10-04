.class Landroidx/transition/Visibility$OverlayListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverlayListener"
.end annotation


# instance fields
.field private mHasOverlay:Z

.field private final mOverlayHost:Landroid/view/ViewGroup;

.field private final mOverlayView:Landroid/view/View;

.field private final mStartView:Landroid/view/View;

.field final synthetic this$0:Landroidx/transition/Visibility;


# direct methods
.method public constructor <init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/Visibility$OverlayListener;->this$0:Landroidx/transition/Visibility;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/transition/Visibility$OverlayListener;->mHasOverlay:Z

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayHost:Landroid/view/ViewGroup;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayView:Landroid/view/View;

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/transition/Visibility$OverlayListener;->mStartView:Landroid/view/View;

    .line 14
    .line 15
    return-void
.end method

.method private removeFromOverlay()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/transition/Visibility$OverlayListener;->mStartView:Landroid/view/View;

    .line 2
    .line 3
    sget v1, Landroidx/transition/R$id;->save_overlay_view:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayHost:Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Landroidx/transition/Visibility$OverlayListener;->mHasOverlay:Z

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/transition/Visibility$OverlayListener;->removeFromOverlay()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 2
    invoke-direct {p0}, Landroidx/transition/Visibility$OverlayListener;->removeFromOverlay()V

    :cond_0
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayHost:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayView:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayHost:Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Landroidx/transition/Visibility$OverlayListener;->this$0:Landroidx/transition/Visibility;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/transition/Transition;->cancel()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/transition/Visibility$OverlayListener;->mStartView:Landroid/view/View;

    .line 4
    .line 5
    sget p2, Landroidx/transition/R$id;->save_overlay_view:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayView:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayHost:Landroid/view/ViewGroup;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayView:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Landroidx/transition/Visibility$OverlayListener;->mHasOverlay:Z

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Landroidx/transition/Visibility$OverlayListener;->mHasOverlay:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/transition/Visibility$OverlayListener;->removeFromOverlay()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public final synthetic onTransitionEnd(Landroidx/transition/Transition;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, L땬땅돠둘돶돛딄듰돨됴땱돷따둘땬든듻뒬될뎻뒼뒛듰돶땮땡됴뒛듼땍둥뒹땯뒋딟땥땭뎸딎땜됩땠땐듽땲뒘뒛돰뎸드땳땳딨땬땣돠듬돶듽돨뒛뒘땰돠뒘든둑땸땨듨둬든땔뒾딠뒼땧뒻두도뒷돳됫땸뒛되둬듸뎨딠딟둠뒾땐둥뒘둑딝됐드듟듼딃땦딹듟돝뒤뎨듽땠돴듼둡땮둑뎽뒷땠땋딤딹뒐듰땱딄듌땵듌됩;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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
