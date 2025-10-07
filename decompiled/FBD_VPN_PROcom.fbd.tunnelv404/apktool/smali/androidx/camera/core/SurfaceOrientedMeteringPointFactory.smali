.class public Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;
.super Landroidx/camera/core/MeteringPointFactory;
.source "SourceFile"


# instance fields
.field private final mHeight:F

.field private final mWidth:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/MeteringPointFactory;-><init>()V

    .line 2
    iput p1, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->mWidth:F

    .line 3
    iput p2, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->mHeight:F

    return-void
.end method

.method public constructor <init>(FFLandroidx/camera/core/UseCase;)V
    .locals 0
    .param p3    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-static {p3}, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->getUseCaseAspectRatio(Landroidx/camera/core/UseCase;)Landroid/util/Rational;

    move-result-object p3

    invoke-direct {p0, p3}, Landroidx/camera/core/MeteringPointFactory;-><init>(Landroid/util/Rational;)V

    .line 5
    iput p1, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->mWidth:F

    .line 6
    iput p2, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->mHeight:F

    return-void
.end method

.method private static getUseCaseAspectRatio(Landroidx/camera/core/UseCase;)Landroid/util/Rational;
    .locals 3
    .param p0    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance p0, Landroid/util/Rational;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-direct {p0, v1, v0}, Landroid/util/Rational;-><init>(II)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "UseCase "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, " is not bound."

    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method


# virtual methods
.method public convertPoint(FF)Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    .line 2
    .line 3
    iget v1, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->mWidth:F

    .line 4
    .line 5
    div-float/2addr p1, v1

    .line 6
    iget v1, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->mHeight:F

    .line 7
    .line 8
    div-float/2addr p2, v1

    .line 9
    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
