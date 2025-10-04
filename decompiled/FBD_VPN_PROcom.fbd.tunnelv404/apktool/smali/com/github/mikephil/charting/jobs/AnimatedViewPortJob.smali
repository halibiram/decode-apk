.class public abstract Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;
.super Lcom/github/mikephil/charting/jobs/ViewPortJob;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field protected animator:Landroid/animation/ObjectAnimator;

.field protected phase:F

.field protected xOrigin:F

.field protected yOrigin:F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;FFJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/github/mikephil/charting/jobs/ViewPortJob;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput p6, p0, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;->xOrigin:F

    .line 5
    .line 6
    iput p7, p0, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;->yOrigin:F

    .line 7
    .line 8
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 p2, 0x2

    .line 11
    new-array p3, p2, [J

    .line 12
    .line 13
    fill-array-data p3, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-array p2, p2, [F

    .line 24
    .line 25
    fill-array-data p2, :array_1

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;->animator:Landroid/animation/ObjectAnimator;

    .line 33
    .line 34
    invoke-virtual {p1, p8, p9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;->animator:Landroid/animation/ObjectAnimator;

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;->animator:Landroid/animation/ObjectAnimator;

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        0x39750c423db8ced3L    # 6.485880551885004E-32
        0x2979bafd55f392faL
    .end array-data

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
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getPhase()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;->phase:F

    .line 2
    .line 3
    return v0
.end method

.method public getXOrigin()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;->xOrigin:F

    .line 2
    .line 3
    return v0
.end method

.method public getYOrigin()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;->yOrigin:F

    .line 2
    .line 3
    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;->recycleSelf()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;->recycleSelf()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    return-void
.end method

.method public abstract recycleSelf()V
.end method

.method public resetAnimator()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;->animator:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;->animator:Landroid/animation/ObjectAnimator;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;->animator:Landroid/animation/ObjectAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;->animator:Landroid/animation/ObjectAnimator;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;->animator:Landroid/animation/ObjectAnimator;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public run()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;->animator:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPhase(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;->phase:F

    .line 2
    .line 3
    return-void
.end method
