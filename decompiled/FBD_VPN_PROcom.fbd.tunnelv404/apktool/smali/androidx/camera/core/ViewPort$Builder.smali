.class public final Landroidx/camera/core/ViewPort$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ViewPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_DIRECTION:I = 0x0

.field private static final DEFAULT_SCALE_TYPE:I = 0x1


# instance fields
.field private final mAspectRatio:Landroid/util/Rational;

.field private mLayoutDirection:I

.field private final mRotation:I

.field private mScaleType:I


# direct methods
.method public constructor <init>(Landroid/util/Rational;I)V
    .locals 1
    .param p1    # Landroid/util/Rational;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroidx/camera/core/ViewPort$Builder;->mScaleType:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/camera/core/ViewPort$Builder;->mLayoutDirection:I

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/camera/core/ViewPort$Builder;->mAspectRatio:Landroid/util/Rational;

    .line 11
    .line 12
    iput p2, p0, Landroidx/camera/core/ViewPort$Builder;->mRotation:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/core/ViewPort;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ViewPort$Builder;->mAspectRatio:Landroid/util/Rational;

    .line 2
    .line 3
    const-string v1, "The crop aspect ratio must be set."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/camera/core/ViewPort;

    .line 9
    .line 10
    iget v1, p0, Landroidx/camera/core/ViewPort$Builder;->mScaleType:I

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/camera/core/ViewPort$Builder;->mAspectRatio:Landroid/util/Rational;

    .line 13
    .line 14
    iget v3, p0, Landroidx/camera/core/ViewPort$Builder;->mRotation:I

    .line 15
    .line 16
    iget v4, p0, Landroidx/camera/core/ViewPort$Builder;->mLayoutDirection:I

    .line 17
    .line 18
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/camera/core/ViewPort;-><init>(ILandroid/util/Rational;II)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public setLayoutDirection(I)Landroidx/camera/core/ViewPort$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/camera/core/ViewPort$Builder;->mLayoutDirection:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setScaleType(I)Landroidx/camera/core/ViewPort$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/camera/core/ViewPort$Builder;->mScaleType:I

    .line 2
    .line 3
    return-object p0
.end method
