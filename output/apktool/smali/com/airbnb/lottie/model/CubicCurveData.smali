.class public Lcom/airbnb/lottie/model/CubicCurveData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final controlPoint1:Landroid/graphics/PointF;

.field private final controlPoint2:Landroid/graphics/PointF;

.field private final vertex:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 4
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 7
    iput-object p2, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 8
    iput-object p3, p0, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getControlPoint1()Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object v0
.end method

.method public getControlPoint2()Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVertex()Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object v0
.end method

.method public setControlPoint1(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setControlPoint2(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFrom(Lcom/airbnb/lottie/model/CubicCurveData;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 4
    .line 5
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 6
    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/airbnb/lottie/model/CubicCurveData;->setVertex(FF)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 11
    .line 12
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 13
    .line 14
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 15
    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint1(FF)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 20
    .line 21
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 22
    .line 23
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 24
    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint2(FF)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setVertex(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 17
    .line 18
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 25
    .line 26
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget-object v4, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 33
    .line 34
    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 35
    .line 36
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget-object v5, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 41
    .line 42
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 43
    .line 44
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iget-object v6, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 49
    .line 50
    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 51
    .line 52
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    iget-object v7, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 57
    .line 58
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 59
    .line 60
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    const/4 v8, 0x0

    .line 67
    aput-object v2, v1, v8

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    aput-object v3, v1, v2

    .line 71
    .line 72
    const/4 v2, 0x2

    .line 73
    aput-object v4, v1, v2

    .line 74
    .line 75
    const/4 v2, 0x3

    .line 76
    aput-object v5, v1, v2

    .line 77
    .line 78
    const/4 v2, 0x4

    .line 79
    aput-object v6, v1, v2

    .line 80
    .line 81
    const/4 v2, 0x5

    .line 82
    aput-object v7, v1, v2

    .line 83
    .line 84
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0

    .line 89
    :array_0
    .array-data 8
        -0x24a57c0365d611d3L    # -1.1763028176890831E132
        -0x4a25f180280751daL    # -2.785730525965277E-49
        0x267100eccd87fc4L
        0x293de7234954d98bL    # 4.9736434147109E-110
        0x7f2debe0444f5306L    # 4.103811554665963E304
        -0xd29f45b4a4a5938L
    .end array-data
.end method
