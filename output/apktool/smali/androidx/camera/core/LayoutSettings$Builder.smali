.class public final Landroidx/camera/core/LayoutSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/LayoutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAlpha:F

.field private mHeight:F

.field private mOffsetX:F

.field private mOffsetY:F

.field private mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Landroidx/camera/core/LayoutSettings$Builder;->mAlpha:F

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroidx/camera/core/LayoutSettings$Builder;->mOffsetX:F

    .line 10
    .line 11
    iput v0, p0, Landroidx/camera/core/LayoutSettings$Builder;->mOffsetY:F

    .line 12
    .line 13
    iput v0, p0, Landroidx/camera/core/LayoutSettings$Builder;->mWidth:F

    .line 14
    .line 15
    iput v0, p0, Landroidx/camera/core/LayoutSettings$Builder;->mHeight:F

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/core/LayoutSettings;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v7, Landroidx/camera/core/LayoutSettings;

    .line 2
    .line 3
    iget v1, p0, Landroidx/camera/core/LayoutSettings$Builder;->mAlpha:F

    .line 4
    .line 5
    iget v2, p0, Landroidx/camera/core/LayoutSettings$Builder;->mOffsetX:F

    .line 6
    .line 7
    iget v3, p0, Landroidx/camera/core/LayoutSettings$Builder;->mOffsetY:F

    .line 8
    .line 9
    iget v4, p0, Landroidx/camera/core/LayoutSettings$Builder;->mWidth:F

    .line 10
    .line 11
    iget v5, p0, Landroidx/camera/core/LayoutSettings$Builder;->mHeight:F

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v0, v7

    .line 15
    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/LayoutSettings;-><init>(FFFFFLandroidx/camera/core/LayoutSettings$1;)V

    .line 16
    .line 17
    .line 18
    return-object v7
.end method

.method public setAlpha(F)Landroidx/camera/core/LayoutSettings$Builder;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/camera/core/LayoutSettings$Builder;->mAlpha:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setHeight(F)Landroidx/camera/core/LayoutSettings$Builder;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = -1.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/camera/core/LayoutSettings$Builder;->mHeight:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setOffsetX(F)Landroidx/camera/core/LayoutSettings$Builder;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = -1.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/camera/core/LayoutSettings$Builder;->mOffsetX:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setOffsetY(F)Landroidx/camera/core/LayoutSettings$Builder;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = -1.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/camera/core/LayoutSettings$Builder;->mOffsetY:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setWidth(F)Landroidx/camera/core/LayoutSettings$Builder;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = -1.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/camera/core/LayoutSettings$Builder;->mWidth:F

    .line 2
    .line 3
    return-object p0
.end method
