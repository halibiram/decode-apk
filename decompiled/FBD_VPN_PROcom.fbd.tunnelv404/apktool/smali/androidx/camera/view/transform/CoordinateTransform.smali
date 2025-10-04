.class public final Landroidx/camera/view/transform/CoordinateTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/camera/view/TransformExperimental;
.end annotation


# static fields
.field private static final MISMATCH_MSG:Ljava/lang/String; = "The source viewport (%s) does not match the target viewport (%s). Please make sure they are associated with the same Viewport."

.field private static final TAG:Ljava/lang/String; = "CoordinateTransform"


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroidx/camera/view/transform/OutputTransform;Landroidx/camera/view/transform/OutputTransform;)V
    .locals 4
    .param p1    # Landroidx/camera/view/transform/OutputTransform;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/view/transform/OutputTransform;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/camera/view/transform/OutputTransform;->getViewPortSize()Landroid/util/Size;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p2}, Landroidx/camera/view/transform/OutputTransform;->getViewPortSize()Landroid/util/Size;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Landroidx/camera/core/impl/utils/TransformUtils;->isAspectRatioMatchingWithRoundingError(Landroid/util/Size;Landroid/util/Size;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/camera/view/transform/OutputTransform;->getViewPortSize()Landroid/util/Size;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p2}, Landroidx/camera/view/transform/OutputTransform;->getViewPortSize()Landroid/util/Size;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "The source viewport ("

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ") does not match the target viewport ("

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, "). Please make sure they are associated with the same Viewport."

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "CoordinateTransform"

    .line 54
    .line 55
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    .line 59
    .line 60
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Landroidx/camera/view/transform/CoordinateTransform;->mMatrix:Landroid/graphics/Matrix;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/camera/view/transform/OutputTransform;->getMatrix()Landroid/graphics/Matrix;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const-string v1, "The source transform cannot be inverted"

    .line 74
    .line 75
    invoke-static {p1, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Landroidx/camera/view/transform/OutputTransform;->getMatrix()Landroid/graphics/Matrix;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 83
    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public mapPoint(Landroid/graphics/PointF;)V
    .locals 4
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 2
    .line 3
    iget v1, p1, Landroid/graphics/PointF;->y:F

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [F

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput v0, v2, v3

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput v1, v2, v0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/camera/view/transform/CoordinateTransform;->mMatrix:Landroid/graphics/Matrix;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 17
    .line 18
    .line 19
    aget v1, v2, v3

    .line 20
    .line 21
    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 22
    .line 23
    aget v0, v2, v0

    .line 24
    .line 25
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 26
    .line 27
    return-void
.end method

.method public mapPoints([F)V
    .locals 1
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/view/transform/CoordinateTransform;->mMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public mapRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/view/transform/CoordinateTransform;->mMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/view/transform/CoordinateTransform;->mMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
