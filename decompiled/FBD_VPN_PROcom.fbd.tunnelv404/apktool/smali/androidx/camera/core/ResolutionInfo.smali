.class public Landroidx/camera/core/ResolutionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;
    }
.end annotation


# instance fields
.field private final mResolutionInfoInternal:Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;


# direct methods
.method public constructor <init>(Landroid/util/Size;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal$Builder;->setResolution(Landroid/util/Size;)Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal$Builder;->setCropRect(Landroid/graphics/Rect;)Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p3}, Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal$Builder;->setRotationDegrees(I)Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal$Builder;->build()Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Landroidx/camera/core/ResolutionInfo;->mResolutionInfoInternal:Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ResolutionInfo;->mResolutionInfoInternal:Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ResolutionInfo;->mResolutionInfoInternal:Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;->getCropRect()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getResolution()Landroid/util/Size;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ResolutionInfo;->mResolutionInfoInternal:Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;->getResolution()Landroid/util/Size;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRotationDegrees()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ResolutionInfo;->mResolutionInfoInternal:Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;->getRotationDegrees()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ResolutionInfo;->mResolutionInfoInternal:Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ResolutionInfo;->mResolutionInfoInternal:Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
