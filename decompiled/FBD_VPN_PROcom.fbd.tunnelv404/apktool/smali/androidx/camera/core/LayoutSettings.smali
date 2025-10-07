.class public Landroidx/camera/core/LayoutSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/LayoutSettings$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/camera/core/LayoutSettings;


# instance fields
.field private final mAlpha:F

.field private final mHeight:F

.field private final mOffsetX:F

.field private final mOffsetY:F

.field private final mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/camera/core/LayoutSettings$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/core/LayoutSettings$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/camera/core/LayoutSettings$Builder;->setAlpha(F)Landroidx/camera/core/LayoutSettings$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2}, Landroidx/camera/core/LayoutSettings$Builder;->setOffsetX(F)Landroidx/camera/core/LayoutSettings$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v2}, Landroidx/camera/core/LayoutSettings$Builder;->setOffsetY(F)Landroidx/camera/core/LayoutSettings$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Landroidx/camera/core/LayoutSettings$Builder;->setWidth(F)Landroidx/camera/core/LayoutSettings$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Landroidx/camera/core/LayoutSettings$Builder;->setHeight(F)Landroidx/camera/core/LayoutSettings$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroidx/camera/core/LayoutSettings$Builder;->build()Landroidx/camera/core/LayoutSettings;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Landroidx/camera/core/LayoutSettings;->DEFAULT:Landroidx/camera/core/LayoutSettings;

    .line 34
    .line 35
    return-void
.end method

.method private constructor <init>(FFFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/camera/core/LayoutSettings;->mAlpha:F

    .line 4
    iput p2, p0, Landroidx/camera/core/LayoutSettings;->mOffsetX:F

    .line 5
    iput p3, p0, Landroidx/camera/core/LayoutSettings;->mOffsetY:F

    .line 6
    iput p4, p0, Landroidx/camera/core/LayoutSettings;->mWidth:F

    .line 7
    iput p5, p0, Landroidx/camera/core/LayoutSettings;->mHeight:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFFLandroidx/camera/core/LayoutSettings$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/camera/core/LayoutSettings;-><init>(FFFFF)V

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/LayoutSettings;->mAlpha:F

    .line 2
    .line 3
    return v0
.end method

.method public getHeight()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/LayoutSettings;->mHeight:F

    .line 2
    .line 3
    return v0
.end method

.method public getOffsetX()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/LayoutSettings;->mOffsetX:F

    .line 2
    .line 3
    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/LayoutSettings;->mOffsetY:F

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/LayoutSettings;->mWidth:F

    .line 2
    .line 3
    return v0
.end method
