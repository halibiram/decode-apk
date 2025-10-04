.class public final Landroidx/camera/view/transform/OutputTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/camera/view/TransformExperimental;
.end annotation


# instance fields
.field final mMatrix:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final mViewPortSize:Landroid/util/Size;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Matrix;Landroid/util/Size;)V
    .locals 0
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/view/transform/OutputTransform;->mMatrix:Landroid/graphics/Matrix;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/view/transform/OutputTransform;->mViewPortSize:Landroid/util/Size;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/transform/OutputTransform;->mMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewPortSize()Landroid/util/Size;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/transform/OutputTransform;->mViewPortSize:Landroid/util/Size;

    .line 2
    .line 3
    return-object v0
.end method
