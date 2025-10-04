.class public Lcom/tknetwork/tunnel/view/SwitchButton;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;,
        Lcom/tknetwork/tunnel/view/SwitchButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT:I

.field private static final DEFAULT_WIDTH:I


# instance fields
.field private final ANIMATE_STATE_DRAGING:I

.field private final ANIMATE_STATE_NONE:I

.field private final ANIMATE_STATE_PENDING_DRAG:I

.field private final ANIMATE_STATE_PENDING_RESET:I

.field private final ANIMATE_STATE_PENDING_SETTLE:I

.field private final ANIMATE_STATE_SWITCH:I

.field private afterState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

.field private animateState:I

.field private final animatorListener:Landroid/animation/Animator$AnimatorListener;

.field private final animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final argbEvaluator:Landroid/animation/ArgbEvaluator;

.field private background:I

.field private beforeState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

.field private borderWidth:I

.field private bottom:F

.field private buttonMaxX:F

.field private buttonMinX:F

.field private buttonPaint:Landroid/graphics/Paint;

.field private buttonRadius:F

.field private centerX:F

.field private centerY:F

.field private checkLineColor:I

.field private checkLineLength:F

.field private checkLineWidth:I

.field private checkedColor:I

.field private checkedLineOffsetX:F

.field private checkedLineOffsetY:F

.field private enableEffect:Z

.field private height:F

.field private isChecked:Z

.field private isEventBroadcast:Z

.field private isTouchingDown:Z

.field private isUiInited:Z

.field private left:F

.field private onCheckedChangeListener:Lcom/tknetwork/tunnel/view/SwitchButton$OnCheckedChangeListener;

.field private paint:Landroid/graphics/Paint;

.field private final postPendingDrag:Ljava/lang/Runnable;

.field private final rect:Landroid/graphics/RectF;

.field private right:F

.field private shadowColor:I

.field private shadowEffect:Z

.field private shadowOffset:I

.field private shadowRadius:I

.field private showIndicator:Z

.field private top:F

.field private touchDownTime:J

.field private uncheckCircleColor:I

.field private uncheckCircleOffsetX:F

.field private uncheckCircleRadius:F

.field private uncheckCircleWidth:I

.field private uncheckColor:I

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field private viewRadius:F

.field private viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

.field private width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/high16 v0, 0x42680000    # 58.0f

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tknetwork/tunnel/view/SwitchButton;->dp2pxInt(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/tknetwork/tunnel/view/SwitchButton;->DEFAULT_WIDTH:I

    .line 8
    .line 9
    const/high16 v0, 0x42100000    # 36.0f

    .line 10
    .line 11
    invoke-static {v0}, Lcom/tknetwork/tunnel/view/SwitchButton;->dp2pxInt(F)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/tknetwork/tunnel/view/SwitchButton;->DEFAULT_HEIGHT:I

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_NONE:I

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_PENDING_DRAG:I

    const/4 v1, 0x2

    .line 4
    iput v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_DRAGING:I

    const/4 v1, 0x3

    .line 5
    iput v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_PENDING_RESET:I

    const/4 v1, 0x4

    .line 6
    iput v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_PENDING_SETTLE:I

    const/4 v1, 0x5

    .line 7
    iput v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_SWITCH:I

    .line 8
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->rect:Landroid/graphics/RectF;

    .line 9
    iput v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animateState:I

    .line 10
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 11
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isTouchingDown:Z

    .line 12
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isUiInited:Z

    .line 13
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isEventBroadcast:Z

    .line 14
    new-instance v0, Lcom/tknetwork/tunnel/view/SwitchButton$1;

    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/view/SwitchButton$1;-><init>(Lcom/tknetwork/tunnel/view/SwitchButton;)V

    iput-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lcom/tknetwork/tunnel/view/SwitchButton$2;

    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/view/SwitchButton$2;-><init>(Lcom/tknetwork/tunnel/view/SwitchButton;)V

    iput-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 16
    new-instance v0, Lcom/tknetwork/tunnel/view/SwitchButton$3;

    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/view/SwitchButton$3;-><init>(Lcom/tknetwork/tunnel/view/SwitchButton;)V

    iput-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/tknetwork/tunnel/view/SwitchButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_NONE:I

    const/4 v1, 0x1

    .line 20
    iput v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_PENDING_DRAG:I

    const/4 v1, 0x2

    .line 21
    iput v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_DRAGING:I

    const/4 v1, 0x3

    .line 22
    iput v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_PENDING_RESET:I

    const/4 v1, 0x4

    .line 23
    iput v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_PENDING_SETTLE:I

    const/4 v1, 0x5

    .line 24
    iput v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_SWITCH:I

    .line 25
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->rect:Landroid/graphics/RectF;

    .line 26
    iput v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animateState:I

    .line 27
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 28
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isTouchingDown:Z

    .line 29
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isUiInited:Z

    .line 30
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isEventBroadcast:Z

    .line 31
    new-instance v0, Lcom/tknetwork/tunnel/view/SwitchButton$1;

    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/view/SwitchButton$1;-><init>(Lcom/tknetwork/tunnel/view/SwitchButton;)V

    iput-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Lcom/tknetwork/tunnel/view/SwitchButton$2;

    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/view/SwitchButton$2;-><init>(Lcom/tknetwork/tunnel/view/SwitchButton;)V

    iput-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 33
    new-instance v0, Lcom/tknetwork/tunnel/view/SwitchButton$3;

    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/view/SwitchButton$3;-><init>(Lcom/tknetwork/tunnel/view/SwitchButton;)V

    iput-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/view/SwitchButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 36
    iput p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_NONE:I

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_PENDING_DRAG:I

    const/4 v0, 0x2

    .line 38
    iput v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_DRAGING:I

    const/4 v0, 0x3

    .line 39
    iput v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_PENDING_RESET:I

    const/4 v0, 0x4

    .line 40
    iput v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_PENDING_SETTLE:I

    const/4 v0, 0x5

    .line 41
    iput v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_SWITCH:I

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->rect:Landroid/graphics/RectF;

    .line 43
    iput p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animateState:I

    .line 44
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 45
    iput-boolean p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isTouchingDown:Z

    .line 46
    iput-boolean p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isUiInited:Z

    .line 47
    iput-boolean p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isEventBroadcast:Z

    .line 48
    new-instance p3, Lcom/tknetwork/tunnel/view/SwitchButton$1;

    invoke-direct {p3, p0}, Lcom/tknetwork/tunnel/view/SwitchButton$1;-><init>(Lcom/tknetwork/tunnel/view/SwitchButton;)V

    iput-object p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    .line 49
    new-instance p3, Lcom/tknetwork/tunnel/view/SwitchButton$2;

    invoke-direct {p3, p0}, Lcom/tknetwork/tunnel/view/SwitchButton$2;-><init>(Lcom/tknetwork/tunnel/view/SwitchButton;)V

    iput-object p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 50
    new-instance p3, Lcom/tknetwork/tunnel/view/SwitchButton$3;

    invoke-direct {p3, p0}, Lcom/tknetwork/tunnel/view/SwitchButton$3;-><init>(Lcom/tknetwork/tunnel/view/SwitchButton;)V

    iput-object p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/view/SwitchButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 53
    iput p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_NONE:I

    const/4 p4, 0x1

    .line 54
    iput p4, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_PENDING_DRAG:I

    const/4 p4, 0x2

    .line 55
    iput p4, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_DRAGING:I

    const/4 p4, 0x3

    .line 56
    iput p4, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_PENDING_RESET:I

    const/4 p4, 0x4

    .line 57
    iput p4, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_PENDING_SETTLE:I

    const/4 p4, 0x5

    .line 58
    iput p4, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->ANIMATE_STATE_SWITCH:I

    .line 59
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    iput-object p4, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->rect:Landroid/graphics/RectF;

    .line 60
    iput p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animateState:I

    .line 61
    new-instance p4, Landroid/animation/ArgbEvaluator;

    invoke-direct {p4}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p4, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 62
    iput-boolean p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isTouchingDown:Z

    .line 63
    iput-boolean p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isUiInited:Z

    .line 64
    iput-boolean p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isEventBroadcast:Z

    .line 65
    new-instance p3, Lcom/tknetwork/tunnel/view/SwitchButton$1;

    invoke-direct {p3, p0}, Lcom/tknetwork/tunnel/view/SwitchButton$1;-><init>(Lcom/tknetwork/tunnel/view/SwitchButton;)V

    iput-object p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    .line 66
    new-instance p3, Lcom/tknetwork/tunnel/view/SwitchButton$2;

    invoke-direct {p3, p0}, Lcom/tknetwork/tunnel/view/SwitchButton$2;-><init>(Lcom/tknetwork/tunnel/view/SwitchButton;)V

    iput-object p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 67
    new-instance p3, Lcom/tknetwork/tunnel/view/SwitchButton$3;

    invoke-direct {p3, p0}, Lcom/tknetwork/tunnel/view/SwitchButton$3;-><init>(Lcom/tknetwork/tunnel/view/SwitchButton;)V

    iput-object p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/view/SwitchButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private broadcastEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->onCheckedChangeListener:Lcom/tknetwork/tunnel/view/SwitchButton$OnCheckedChangeListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isEventBroadcast:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-interface {v0, p0, v1}, Lcom/tknetwork/tunnel/view/SwitchButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/tknetwork/tunnel/view/SwitchButton;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isEventBroadcast:Z

    .line 17
    .line 18
    return-void
.end method

.method private static dp2px(F)F
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private static dp2pxInt(F)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->dp2px(F)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    float-to-int p0, p0

    .line 6
    return p0
.end method

.method private drawArc(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V
    .locals 9

    .line 1
    const/4 v7, 0x1

    .line 2
    move-object v0, p1

    .line 3
    move v1, p2

    .line 4
    move v2, p3

    .line 5
    move v3, p4

    .line 6
    move v4, p5

    .line 7
    move v5, p6

    .line 8
    move/from16 v6, p7

    .line 9
    .line 10
    move-object/from16 v8, p8

    .line 11
    .line 12
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private drawButton(Landroid/graphics/Canvas;FF)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonRadius:F

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonPaint:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 9
    .line 10
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 16
    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 23
    .line 24
    const v1, -0x222223

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonRadius:F

    .line 31
    .line 32
    iget-object v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 8

    .line 1
    move-object v0, p1

    .line 2
    move v1, p2

    .line 3
    move v2, p3

    .line 4
    move v3, p4

    .line 5
    move v4, p5

    .line 6
    move v5, p6

    .line 7
    move v6, p6

    .line 8
    move-object v7, p7

    .line 9
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private drawUncheckIndicator(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget v2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->uncheckCircleColor:I

    iget v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->uncheckCircleWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->right:F

    iget v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->uncheckCircleOffsetX:F

    sub-float v4, v0, v1

    iget v5, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->centerY:F

    iget v6, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->uncheckCircleRadius:F

    iget-object v7, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/tknetwork/tunnel/view/SwitchButton;->drawUncheckIndicator(Landroid/graphics/Canvas;IFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object v2, Lcom/v2ray/ang/R$styleable;->SwitchButton:[I

    .line 6
    .line 7
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object p1, v1

    .line 13
    :goto_0
    const/16 p2, 0xa

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {p1, p2, v2}, Lcom/tknetwork/tunnel/view/SwitchButton;->optBoolean(Landroid/content/res/TypedArray;IZ)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iput-boolean p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->shadowEffect:Z

    .line 21
    .line 22
    const/16 p2, 0xf

    .line 23
    .line 24
    const v3, -0x555556

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2, v3}, Lcom/tknetwork/tunnel/view/SwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    iput p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->uncheckCircleColor:I

    .line 32
    .line 33
    const/16 p2, 0x11

    .line 34
    .line 35
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 36
    .line 37
    invoke-static {v3}, Lcom/tknetwork/tunnel/view/SwitchButton;->dp2pxInt(F)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-static {p1, p2, v4}, Lcom/tknetwork/tunnel/view/SwitchButton;->optPixelSize(Landroid/content/res/TypedArray;II)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    iput p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->uncheckCircleWidth:I

    .line 46
    .line 47
    const/high16 p2, 0x41200000    # 10.0f

    .line 48
    .line 49
    invoke-static {p2}, Lcom/tknetwork/tunnel/view/SwitchButton;->dp2px(F)F

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    iput p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->uncheckCircleOffsetX:F

    .line 54
    .line 55
    const/16 p2, 0x10

    .line 56
    .line 57
    const/high16 v4, 0x40800000    # 4.0f

    .line 58
    .line 59
    invoke-static {v4}, Lcom/tknetwork/tunnel/view/SwitchButton;->dp2px(F)F

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-static {p1, p2, v5}, Lcom/tknetwork/tunnel/view/SwitchButton;->optPixelSize(Landroid/content/res/TypedArray;IF)F

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iput p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->uncheckCircleRadius:F

    .line 68
    .line 69
    invoke-static {v4}, Lcom/tknetwork/tunnel/view/SwitchButton;->dp2px(F)F

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    iput p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->checkedLineOffsetX:F

    .line 74
    .line 75
    invoke-static {v4}, Lcom/tknetwork/tunnel/view/SwitchButton;->dp2px(F)F

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    iput p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->checkedLineOffsetY:F

    .line 80
    .line 81
    const/high16 p2, 0x40200000    # 2.5f

    .line 82
    .line 83
    invoke-static {p2}, Lcom/tknetwork/tunnel/view/SwitchButton;->dp2pxInt(F)I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    const/16 v4, 0xc

    .line 88
    .line 89
    invoke-static {p1, v4, p2}, Lcom/tknetwork/tunnel/view/SwitchButton;->optPixelSize(Landroid/content/res/TypedArray;II)I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    iput p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->shadowRadius:I

    .line 94
    .line 95
    const/16 p2, 0xb

    .line 96
    .line 97
    invoke-static {v3}, Lcom/tknetwork/tunnel/view/SwitchButton;->dp2pxInt(F)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-static {p1, p2, v3}, Lcom/tknetwork/tunnel/view/SwitchButton;->optPixelSize(Landroid/content/res/TypedArray;II)I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    iput p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->shadowOffset:I

    .line 106
    .line 107
    const/16 p2, 0x9

    .line 108
    .line 109
    const/high16 v3, 0x33000000

    .line 110
    .line 111
    invoke-static {p1, p2, v3}, Lcom/tknetwork/tunnel/view/SwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    iput p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->shadowColor:I

    .line 116
    .line 117
    const/16 p2, 0xe

    .line 118
    .line 119
    const v3, -0x222223

    .line 120
    .line 121
    .line 122
    invoke-static {p1, p2, v3}, Lcom/tknetwork/tunnel/view/SwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    iput p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->uncheckColor:I

    .line 127
    .line 128
    const/4 p2, 0x4

    .line 129
    const v3, -0xae2c99

    .line 130
    .line 131
    .line 132
    invoke-static {p1, p2, v3}, Lcom/tknetwork/tunnel/view/SwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    iput p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->checkedColor:I

    .line 137
    .line 138
    const/high16 p2, 0x3f800000    # 1.0f

    .line 139
    .line 140
    invoke-static {p2}, Lcom/tknetwork/tunnel/view/SwitchButton;->dp2pxInt(F)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-static {p1, v2, v3}, Lcom/tknetwork/tunnel/view/SwitchButton;->optPixelSize(Landroid/content/res/TypedArray;II)I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    iput v3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->borderWidth:I

    .line 149
    .line 150
    const/4 v3, 0x5

    .line 151
    const/4 v4, -0x1

    .line 152
    invoke-static {p1, v3, v4}, Lcom/tknetwork/tunnel/view/SwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    iput v3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->checkLineColor:I

    .line 157
    .line 158
    const/4 v3, 0x6

    .line 159
    invoke-static {p2}, Lcom/tknetwork/tunnel/view/SwitchButton;->dp2pxInt(F)I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    invoke-static {p1, v3, p2}, Lcom/tknetwork/tunnel/view/SwitchButton;->optPixelSize(Landroid/content/res/TypedArray;II)I

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    iput p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->checkLineWidth:I

    .line 168
    .line 169
    const/high16 p2, 0x40c00000    # 6.0f

    .line 170
    .line 171
    invoke-static {p2}, Lcom/tknetwork/tunnel/view/SwitchButton;->dp2px(F)F

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    iput p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->checkLineLength:F

    .line 176
    .line 177
    invoke-static {p1, v0, v4}, Lcom/tknetwork/tunnel/view/SwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    const/4 v3, 0x7

    .line 182
    const/16 v5, 0x12c

    .line 183
    .line 184
    invoke-static {p1, v3, v5}, Lcom/tknetwork/tunnel/view/SwitchButton;->optInt(Landroid/content/res/TypedArray;II)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    const/4 v5, 0x3

    .line 189
    const/4 v6, 0x0

    .line 190
    invoke-static {p1, v5, v6}, Lcom/tknetwork/tunnel/view/SwitchButton;->optBoolean(Landroid/content/res/TypedArray;IZ)Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    iput-boolean v5, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked:Z

    .line 195
    .line 196
    const/16 v5, 0xd

    .line 197
    .line 198
    invoke-static {p1, v5, v2}, Lcom/tknetwork/tunnel/view/SwitchButton;->optBoolean(Landroid/content/res/TypedArray;IZ)Z

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    iput-boolean v5, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->showIndicator:Z

    .line 203
    .line 204
    invoke-static {p1, v6, v4}, Lcom/tknetwork/tunnel/view/SwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    iput v4, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->background:I

    .line 209
    .line 210
    const/16 v4, 0x8

    .line 211
    .line 212
    invoke-static {p1, v4, v2}, Lcom/tknetwork/tunnel/view/SwitchButton;->optBoolean(Landroid/content/res/TypedArray;IZ)Z

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    iput-boolean v4, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->enableEffect:Z

    .line 217
    .line 218
    if-eqz p1, :cond_1

    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    .line 222
    .line 223
    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    .line 224
    .line 225
    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 226
    .line 227
    .line 228
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 229
    .line 230
    new-instance p1, Landroid/graphics/Paint;

    .line 231
    .line 232
    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 233
    .line 234
    .line 235
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonPaint:Landroid/graphics/Paint;

    .line 236
    .line 237
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    .line 239
    .line 240
    iget-boolean p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->shadowEffect:Z

    .line 241
    .line 242
    const/4 p2, 0x0

    .line 243
    if-eqz p1, :cond_2

    .line 244
    .line 245
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonPaint:Landroid/graphics/Paint;

    .line 246
    .line 247
    iget v4, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->shadowRadius:I

    .line 248
    .line 249
    int-to-float v4, v4

    .line 250
    iget v5, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->shadowOffset:I

    .line 251
    .line 252
    int-to-float v5, v5

    .line 253
    iget v7, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->shadowColor:I

    .line 254
    .line 255
    invoke-virtual {p1, v4, p2, v5, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 256
    .line 257
    .line 258
    :cond_2
    new-instance p1, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 259
    .line 260
    invoke-direct {p1}, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;-><init>()V

    .line 261
    .line 262
    .line 263
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 264
    .line 265
    new-instance p1, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 266
    .line 267
    invoke-direct {p1}, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;-><init>()V

    .line 268
    .line 269
    .line 270
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->beforeState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 271
    .line 272
    new-instance p1, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 273
    .line 274
    invoke-direct {p1}, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;-><init>()V

    .line 275
    .line 276
    .line 277
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->afterState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 278
    .line 279
    new-array p1, v0, [F

    .line 280
    .line 281
    fill-array-data p1, :array_0

    .line 282
    .line 283
    .line 284
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 289
    .line 290
    int-to-long v3, v3

    .line 291
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 292
    .line 293
    .line 294
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 295
    .line 296
    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 297
    .line 298
    .line 299
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 300
    .line 301
    iget-object p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 302
    .line 303
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 304
    .line 305
    .line 306
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 307
    .line 308
    iget-object p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 309
    .line 310
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 311
    .line 312
    .line 313
    invoke-super {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/tknetwork/tunnel/view/SwitchButton;->setPadding(IIII)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isDragState()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animateState:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method private isInAnimating()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animateState:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method private isPendingDragState()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animateState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :cond_1
    :goto_0
    return v1
.end method

.method private static optBoolean(Landroid/content/res/TypedArray;IZ)Z
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return p2

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method private static optColor(Landroid/content/res/TypedArray;II)I
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return p2

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method private static optInt(Landroid/content/res/TypedArray;II)I
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return p2

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method private static optPixelSize(Landroid/content/res/TypedArray;IF)F
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    return p0
.end method

.method private static optPixelSize(Landroid/content/res/TypedArray;II)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p0

    return p0
.end method

.method private pendingCancelDragState()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isDragState()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isPendingDragState()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24
    .line 25
    .line 26
    :cond_1
    const/4 v0, 0x3

    .line 27
    iput v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animateState:I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->beforeState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->afterState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/view/SwitchButton;->setCheckedViewState(Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->afterState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 49
    .line 50
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/view/SwitchButton;->setUncheckViewState(Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void
.end method

.method private pendingDragState()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isInAnimating()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isTouchingDown:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24
    .line 25
    .line 26
    :cond_2
    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animateState:I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->beforeState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->afterState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->afterState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 50
    .line 51
    iget v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->checkedColor:I

    .line 52
    .line 53
    iput v1, v0, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->checkStateColor:I

    .line 54
    .line 55
    iget v2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonMaxX:F

    .line 56
    .line 57
    iput v2, v0, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->buttonX:F

    .line 58
    .line 59
    iput v1, v0, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->checkedLineColor:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->afterState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 63
    .line 64
    iget v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->uncheckColor:I

    .line 65
    .line 66
    iput v1, v0, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->checkStateColor:I

    .line 67
    .line 68
    iget v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonMinX:F

    .line 69
    .line 70
    iput v1, v0, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->buttonX:F

    .line 71
    .line 72
    iget v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewRadius:F

    .line 73
    .line 74
    iput v1, v0, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->radius:F

    .line 75
    .line 76
    :goto_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private pendingSettleState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x4

    .line 15
    iput v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animateState:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->beforeState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->afterState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/view/SwitchButton;->setCheckedViewState(Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->afterState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 37
    .line 38
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/view/SwitchButton;->setUncheckViewState(Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private setCheckedViewState(Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewRadius:F

    .line 2
    .line 3
    iput v0, p1, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->radius:F

    .line 4
    .line 5
    iget v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->checkedColor:I

    .line 6
    .line 7
    iput v0, p1, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->checkStateColor:I

    .line 8
    .line 9
    iget v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->checkLineColor:I

    .line 10
    .line 11
    iput v0, p1, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->checkedLineColor:I

    .line 12
    .line 13
    iget v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonMaxX:F

    .line 14
    .line 15
    iput v0, p1, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->buttonX:F

    .line 16
    .line 17
    return-void
.end method

.method private setUncheckViewState(Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p1, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->radius:F

    .line 3
    .line 4
    iget v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->uncheckColor:I

    .line 5
    .line 6
    iput v0, p1, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->checkStateColor:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p1, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->checkedLineColor:I

    .line 10
    .line 11
    iget v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonMinX:F

    .line 12
    .line 13
    iput v0, p1, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->buttonX:F

    .line 14
    .line 15
    return-void
.end method

.method private toggle(ZZ)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isEventBroadcast:Z

    if-nez v0, :cond_9

    .line 5
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isUiInited:Z

    if-nez v0, :cond_2

    .line 6
    iget-boolean p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked:Z

    if-eqz p2, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->broadcastEvent()V

    :cond_1
    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10
    :cond_3
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->enableEffect:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x5

    .line 11
    iput p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animateState:I

    .line 12
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->beforeState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    iget-object p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    invoke-static {p1, p2}, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;)V

    .line 13
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->afterState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/view/SwitchButton;->setUncheckViewState(Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;)V

    goto :goto_0

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->afterState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/view/SwitchButton;->setCheckedViewState(Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;)V

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 17
    :cond_6
    :goto_1
    iget-boolean p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked:Z

    .line 18
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/view/SwitchButton;->setCheckedViewState(Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;)V

    goto :goto_2

    .line 20
    :cond_7
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/view/SwitchButton;->setUncheckViewState(Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;)V

    .line 21
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    if-eqz p2, :cond_8

    .line 22
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->broadcastEvent()V

    :cond_8
    return-void

    .line 23
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        -0x46632b8c6baf1ba5L    # -3.553558128008763E-31
        -0x61202433eefc82dL
        -0x8068780736701ebL    # -8.41001845702153E269
        -0x27126e3d912adc8bL    # -2.386109686950836E120
        -0xfd919ae7ba039bL
        0x60628bfc7fc5e8ffL    # 1.9893777717209336E156
        -0x591a8379230c74ecL
        -0x2191249963604b1fL    # -7.706232212897114E146
        -0xdcef6c90b6cda99L    # -1.135962592208882E242
    .end array-data
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/view/SwitchButton;)Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->afterState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    return-object p0
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/view/SwitchButton;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animateState:I

    return p0
.end method

.method public static bridge synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/view/SwitchButton;)Landroid/animation/ArgbEvaluator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method

.method public static bridge synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/tknetwork/tunnel/view/SwitchButton;)Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->beforeState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    return-object p0
.end method

.method public static bridge synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/tknetwork/tunnel/view/SwitchButton;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonMaxX:F

    return p0
.end method

.method public static bridge synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/tknetwork/tunnel/view/SwitchButton;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonMinX:F

    return p0
.end method

.method public static bridge synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Lcom/tknetwork/tunnel/view/SwitchButton;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->checkLineColor:I

    return p0
.end method

.method public static bridge synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Lcom/tknetwork/tunnel/view/SwitchButton;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->checkedColor:I

    return p0
.end method

.method public static bridge synthetic 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Lcom/tknetwork/tunnel/view/SwitchButton;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked:Z

    return p0
.end method

.method public static bridge synthetic 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/tknetwork/tunnel/view/SwitchButton;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->uncheckColor:I

    return p0
.end method

.method public static bridge synthetic 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/tknetwork/tunnel/view/SwitchButton;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewRadius:F

    return p0
.end method

.method public static bridge synthetic 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/tknetwork/tunnel/view/SwitchButton;)Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    return-object p0
.end method

.method public static bridge synthetic 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/tknetwork/tunnel/view/SwitchButton;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->animateState:I

    return-void
.end method

.method public static bridge synthetic 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/tknetwork/tunnel/view/SwitchButton;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked:Z

    return-void
.end method

.method public static bridge synthetic 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Lcom/tknetwork/tunnel/view/SwitchButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->broadcastEvent()V

    return-void
.end method

.method public static bridge synthetic 뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Lcom/tknetwork/tunnel/view/SwitchButton;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isInAnimating()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Lcom/tknetwork/tunnel/view/SwitchButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->pendingDragState()V

    return-void
.end method


# virtual methods
.method public drawCheckedIndicator(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    iget v3, v0, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->checkedLineColor:I

    iget v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->checkLineWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->left:F

    iget v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewRadius:F

    add-float v2, v0, v1

    iget v5, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->checkedLineOffsetX:F

    sub-float v5, v2, v5

    iget v2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->centerY:F

    iget v6, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->checkLineLength:F

    sub-float v7, v2, v6

    add-float/2addr v0, v1

    iget v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->checkedLineOffsetY:F

    sub-float/2addr v0, v1

    add-float v8, v2, v6

    iget-object v9, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    move-object v1, p0

    move-object v2, p1

    move v6, v7

    move v7, v0

    invoke-virtual/range {v1 .. v9}, Lcom/tknetwork/tunnel/view/SwitchButton;->drawCheckedIndicator(Landroid/graphics/Canvas;IFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawCheckedIndicator(Landroid/graphics/Canvas;IFFFFFLandroid/graphics/Paint;)V
    .locals 6

    .line 2
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    invoke-virtual {p8, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {p8, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object v0, p1

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move-object v5, p8

    .line 5
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawUncheckIndicator(Landroid/graphics/Canvas;IFFFFLandroid/graphics/Paint;)V
    .locals 1

    .line 2
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    invoke-virtual {p7, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {p7, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked:Z

    .line 2
    .line 3
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 5
    .line 6
    iget v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->borderWidth:I

    .line 7
    .line 8
    int-to-float v1, v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 13
    .line 14
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 20
    .line 21
    iget v2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->background:I

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    iget v5, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->left:F

    .line 27
    .line 28
    iget v6, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->top:F

    .line 29
    .line 30
    iget v7, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->right:F

    .line 31
    .line 32
    iget v8, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->bottom:F

    .line 33
    .line 34
    iget v9, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewRadius:F

    .line 35
    .line 36
    iget-object v10, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 37
    .line 38
    move-object v3, p0

    .line 39
    move-object v4, p1

    .line 40
    invoke-direct/range {v3 .. v10}, Lcom/tknetwork/tunnel/view/SwitchButton;->drawRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 44
    .line 45
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 51
    .line 52
    iget v3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->uncheckColor:I

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    .line 56
    .line 57
    iget v6, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->left:F

    .line 58
    .line 59
    iget v7, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->top:F

    .line 60
    .line 61
    iget v8, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->right:F

    .line 62
    .line 63
    iget v9, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->bottom:F

    .line 64
    .line 65
    iget v10, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewRadius:F

    .line 66
    .line 67
    iget-object v11, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 68
    .line 69
    move-object v4, p0

    .line 70
    move-object v5, p1

    .line 71
    invoke-direct/range {v4 .. v11}, Lcom/tknetwork/tunnel/view/SwitchButton;->drawRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 72
    .line 73
    .line 74
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->showIndicator:Z

    .line 75
    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/view/SwitchButton;->drawUncheckIndicator(Landroid/graphics/Canvas;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 82
    .line 83
    iget v0, v0, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->radius:F

    .line 84
    .line 85
    const/high16 v3, 0x3f000000    # 0.5f

    .line 86
    .line 87
    mul-float v0, v0, v3

    .line 88
    .line 89
    iget-object v3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 90
    .line 91
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 95
    .line 96
    iget-object v3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 97
    .line 98
    iget v3, v3, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->checkStateColor:I

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 104
    .line 105
    iget v3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->borderWidth:I

    .line 106
    .line 107
    int-to-float v3, v3

    .line 108
    const/high16 v4, 0x40000000    # 2.0f

    .line 109
    .line 110
    mul-float v5, v0, v4

    .line 111
    .line 112
    add-float/2addr v5, v3

    .line 113
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    .line 115
    .line 116
    iget v2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->left:F

    .line 117
    .line 118
    add-float v7, v2, v0

    .line 119
    .line 120
    iget v2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->top:F

    .line 121
    .line 122
    add-float v8, v2, v0

    .line 123
    .line 124
    iget v2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->right:F

    .line 125
    .line 126
    sub-float v9, v2, v0

    .line 127
    .line 128
    iget v2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->bottom:F

    .line 129
    .line 130
    sub-float v10, v2, v0

    .line 131
    .line 132
    iget v11, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewRadius:F

    .line 133
    .line 134
    iget-object v12, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 135
    .line 136
    move-object v5, p0

    .line 137
    move-object v6, p1

    .line 138
    invoke-direct/range {v5 .. v12}, Lcom/tknetwork/tunnel/view/SwitchButton;->drawRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 147
    .line 148
    const/high16 v1, 0x3f800000    # 1.0f

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 151
    .line 152
    .line 153
    iget v7, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->left:F

    .line 154
    .line 155
    iget v8, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->top:F

    .line 156
    .line 157
    iget v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewRadius:F

    .line 158
    .line 159
    mul-float v1, v0, v4

    .line 160
    .line 161
    add-float v9, v1, v7

    .line 162
    .line 163
    mul-float v0, v0, v4

    .line 164
    .line 165
    add-float v10, v0, v8

    .line 166
    .line 167
    const/high16 v12, 0x43340000    # 180.0f

    .line 168
    .line 169
    iget-object v13, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 170
    .line 171
    const/high16 v11, 0x42b40000    # 90.0f

    .line 172
    .line 173
    invoke-direct/range {v5 .. v13}, Lcom/tknetwork/tunnel/view/SwitchButton;->drawArc(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V

    .line 174
    .line 175
    .line 176
    iget v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->left:F

    .line 177
    .line 178
    iget v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewRadius:F

    .line 179
    .line 180
    add-float v6, v0, v1

    .line 181
    .line 182
    iget v7, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->top:F

    .line 183
    .line 184
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 185
    .line 186
    iget v8, v0, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->buttonX:F

    .line 187
    .line 188
    mul-float v1, v1, v4

    .line 189
    .line 190
    add-float v9, v1, v7

    .line 191
    .line 192
    iget-object v10, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 193
    .line 194
    move-object v5, p1

    .line 195
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 196
    .line 197
    .line 198
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->showIndicator:Z

    .line 199
    .line 200
    if-eqz v0, :cond_1

    .line 201
    .line 202
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/view/SwitchButton;->drawCheckedIndicator(Landroid/graphics/Canvas;)V

    .line 203
    .line 204
    .line 205
    :cond_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 206
    .line 207
    iget v0, v0, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->buttonX:F

    .line 208
    .line 209
    iget v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->centerY:F

    .line 210
    .line 211
    invoke-direct {p0, p1, v0, v1}, Lcom/tknetwork/tunnel/view/SwitchButton;->drawButton(Landroid/graphics/Canvas;FF)V

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    .line 11
    const/high16 v3, -0x80000000

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    if-ne v0, v3, :cond_1

    .line 16
    .line 17
    :cond_0
    sget p1, Lcom/tknetwork/tunnel/view/SwitchButton;->DEFAULT_WIDTH:I

    .line 18
    .line 19
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    :cond_1
    if-eqz v1, :cond_2

    .line 24
    .line 25
    if-ne v1, v3, :cond_3

    .line 26
    .line 27
    :cond_2
    sget p2, Lcom/tknetwork/tunnel/view/SwitchButton;->DEFAULT_HEIGHT:I

    .line 28
    .line 29
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->shadowRadius:I

    .line 5
    .line 6
    iget p4, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->shadowOffset:I

    .line 7
    .line 8
    add-int/2addr p3, p4

    .line 9
    iget p4, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->borderWidth:I

    .line 10
    .line 11
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    int-to-float p3, p3

    .line 16
    int-to-float p2, p2

    .line 17
    sub-float/2addr p2, p3

    .line 18
    sub-float p4, p2, p3

    .line 19
    .line 20
    iput p4, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->height:F

    .line 21
    .line 22
    int-to-float p1, p1

    .line 23
    sub-float/2addr p1, p3

    .line 24
    sub-float v0, p1, p3

    .line 25
    .line 26
    iput v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->width:F

    .line 27
    .line 28
    const/high16 v0, 0x3f000000    # 0.5f

    .line 29
    .line 30
    mul-float p4, p4, v0

    .line 31
    .line 32
    iput p4, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewRadius:F

    .line 33
    .line 34
    iget v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->borderWidth:I

    .line 35
    .line 36
    int-to-float v1, v1

    .line 37
    sub-float v1, p4, v1

    .line 38
    .line 39
    iput v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonRadius:F

    .line 40
    .line 41
    iput p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->left:F

    .line 42
    .line 43
    iput p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->top:F

    .line 44
    .line 45
    iput p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->right:F

    .line 46
    .line 47
    iput p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->bottom:F

    .line 48
    .line 49
    add-float v1, p3, p1

    .line 50
    .line 51
    mul-float v1, v1, v0

    .line 52
    .line 53
    iput v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->centerX:F

    .line 54
    .line 55
    add-float/2addr p2, p3

    .line 56
    mul-float p2, p2, v0

    .line 57
    .line 58
    iput p2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->centerY:F

    .line 59
    .line 60
    add-float/2addr p3, p4

    .line 61
    iput p3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonMinX:F

    .line 62
    .line 63
    sub-float/2addr p1, p4

    .line 64
    iput p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonMaxX:F

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_0

    .line 71
    .line 72
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 73
    .line 74
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/view/SwitchButton;->setCheckedViewState(Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 79
    .line 80
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/view/SwitchButton;->setUncheckViewState(Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isUiInited:Z

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_a

    .line 15
    .line 16
    const/high16 v3, 0x3f800000    # 1.0f

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eq v0, v2, :cond_5

    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    if-eq v0, v5, :cond_3

    .line 23
    .line 24
    const/4 p1, 0x3

    .line 25
    if-eq v0, p1, :cond_1

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_1
    iput-boolean v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isTouchingDown:Z

    .line 30
    .line 31
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isPendingDragState()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isDragState()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_b

    .line 47
    .line 48
    :cond_2
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->pendingCancelDragState()V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isPendingDragState()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    int-to-float v0, v0

    .line 68
    div-float/2addr p1, v0

    .line 69
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 78
    .line 79
    iget v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonMinX:F

    .line 80
    .line 81
    iget v3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonMaxX:F

    .line 82
    .line 83
    invoke-static {v3, v1, p1, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(FFFF)F

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iput p1, v0, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->buttonX:F

    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :cond_4
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isDragState()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_b

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    int-to-float v0, v0

    .line 102
    div-float/2addr p1, v0

    .line 103
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->viewState:Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;

    .line 112
    .line 113
    iget v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonMinX:F

    .line 114
    .line 115
    iget v3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonMaxX:F

    .line 116
    .line 117
    invoke-static {v3, v1, p1, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(FFFF)F

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    iput v1, v0, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->buttonX:F

    .line 122
    .line 123
    iget-object v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 124
    .line 125
    iget v3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->uncheckColor:I

    .line 126
    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    iget v4, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->checkedColor:I

    .line 132
    .line 133
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v1, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    iput p1, v0, Lcom/tknetwork/tunnel/view/SwitchButton$ViewState;->checkStateColor:I

    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    iput-boolean v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isTouchingDown:Z

    .line 154
    .line 155
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    .line 156
    .line 157
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 158
    .line 159
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 161
    .line 162
    .line 163
    move-result-wide v5

    .line 164
    iget-wide v7, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->touchDownTime:J

    .line 165
    .line 166
    sub-long/2addr v5, v7

    .line 167
    const-wide/16 v7, 0x12c

    .line 168
    .line 169
    cmp-long v0, v5, v7

    .line 170
    .line 171
    if-gtz v0, :cond_6

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->toggle()V

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_6
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isDragState()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_9

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    int-to-float v0, v0

    .line 192
    div-float/2addr p1, v0

    .line 193
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    const/high16 v0, 0x3f000000    # 0.5f

    .line 202
    .line 203
    cmpl-float p1, p1, v0

    .line 204
    .line 205
    if-lez p1, :cond_7

    .line 206
    .line 207
    const/4 v1, 0x1

    .line 208
    :cond_7
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked()Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-ne v1, p1, :cond_8

    .line 213
    .line 214
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->pendingCancelDragState()V

    .line 215
    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_8
    iput-boolean v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked:Z

    .line 219
    .line 220
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->pendingSettleState()V

    .line 221
    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_9
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isPendingDragState()Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_b

    .line 229
    .line 230
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->pendingCancelDragState()V

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :cond_a
    iput-boolean v2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->isTouchingDown:Z

    .line 235
    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 237
    .line 238
    .line 239
    move-result-wide v0

    .line 240
    iput-wide v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->touchDownTime:J

    .line 241
    .line 242
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    .line 243
    .line 244
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    .line 248
    .line 249
    const-wide/16 v0, 0x64

    .line 250
    .line 251
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    .line 253
    .line 254
    :cond_b
    :goto_0
    return v2
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/view/SwitchButton;->isChecked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->enableEffect:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/tknetwork/tunnel/view/SwitchButton;->toggle(ZZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setEnableEffect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->enableEffect:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/tknetwork/tunnel/view/SwitchButton$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->onCheckedChangeListener:Lcom/tknetwork/tunnel/view/SwitchButton$OnCheckedChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-super {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setShadowEffect(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->shadowEffect:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->shadowEffect:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonPaint:Landroid/graphics/Paint;

    .line 12
    .line 13
    iget v1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->shadowRadius:I

    .line 14
    .line 15
    int-to-float v1, v1

    .line 16
    iget v2, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->shadowOffset:I

    .line 17
    .line 18
    int-to-float v2, v2

    .line 19
    iget v3, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->shadowColor:I

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/SwitchButton;->buttonPaint:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public toggle()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/view/SwitchButton;->toggle(Z)V

    return-void
.end method

.method public toggle(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/tknetwork/tunnel/view/SwitchButton;->toggle(ZZ)V

    return-void
.end method
