.class Landroidx/camera/view/ScreenFlashView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageCapture$ScreenFlash;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/view/ScreenFlashView;->updateScreenFlash(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mPreviousBrightness:F

.field final synthetic this$0:Landroidx/camera/view/ScreenFlashView;


# direct methods
.method public constructor <init>(Landroidx/camera/view/ScreenFlashView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/view/ScreenFlashView$1;->this$0:Landroidx/camera/view/ScreenFlashView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public apply(JLandroidx/camera/core/ImageCapture$ScreenFlashListener;)V
    .locals 1
    .param p3    # Landroidx/camera/core/ImageCapture$ScreenFlashListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "ScreenFlashView"

    .line 2
    .line 3
    const-string p2, "ScreenFlash#apply"

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroidx/camera/view/ScreenFlashView$1;->this$0:Landroidx/camera/view/ScreenFlashView;

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/camera/view/ScreenFlashView;->access$000(Landroidx/camera/view/ScreenFlashView;)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Landroidx/camera/view/ScreenFlashView$1;->mPreviousBrightness:F

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/camera/view/ScreenFlashView$1;->this$0:Landroidx/camera/view/ScreenFlashView;

    .line 17
    .line 18
    const/high16 p2, 0x3f800000    # 1.0f

    .line 19
    .line 20
    invoke-static {p1, p2}, Landroidx/camera/view/ScreenFlashView;->access$100(Landroidx/camera/view/ScreenFlashView;F)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroidx/camera/view/ScreenFlashView$1;->mAnimator:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Landroidx/camera/view/ScreenFlashView$1;->this$0:Landroidx/camera/view/ScreenFlashView;

    .line 31
    .line 32
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    new-instance p2, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;

    .line 36
    .line 37
    const/4 v0, 0x5

    .line 38
    invoke-direct {p2, p3, v0}, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p2}, Landroidx/camera/view/ScreenFlashView;->access$200(Landroidx/camera/view/ScreenFlashView;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Landroidx/camera/view/ScreenFlashView$1;->mAnimator:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    return-void
.end method

.method public clear()V
    .locals 2

    .line 1
    const-string v0, "ScreenFlashView"

    .line 2
    .line 3
    const-string v1, "ScreenFlash#clearScreenFlashUi"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/camera/view/ScreenFlashView$1;->mAnimator:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Landroidx/camera/view/ScreenFlashView$1;->mAnimator:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/ScreenFlashView$1;->this$0:Landroidx/camera/view/ScreenFlashView;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/camera/view/ScreenFlashView$1;->this$0:Landroidx/camera/view/ScreenFlashView;

    .line 25
    .line 26
    iget v1, p0, Landroidx/camera/view/ScreenFlashView$1;->mPreviousBrightness:F

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroidx/camera/view/ScreenFlashView;->access$100(Landroidx/camera/view/ScreenFlashView;F)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
