.class final Lcom/github/mikephil/charting/animation/Easing$EasingFunctions$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/animation/EasingFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    .line 1
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    float-to-double v2, p1

    .line 7
    mul-double v2, v2, v0

    .line 8
    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    double-to-float p1, v0

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    sub-float/2addr p1, v0

    .line 17
    const/high16 v0, -0x41000000    # -0.5f

    .line 18
    .line 19
    mul-float p1, p1, v0

    .line 20
    .line 21
    return p1
.end method
