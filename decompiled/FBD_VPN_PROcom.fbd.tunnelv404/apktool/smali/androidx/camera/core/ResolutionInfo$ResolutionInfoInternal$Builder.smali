.class abstract Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
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
.method public abstract build()Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setCropRect(Landroid/graphics/Rect;)Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal$Builder;
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setResolution(Landroid/util/Size;)Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal$Builder;
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setRotationDegrees(I)Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
