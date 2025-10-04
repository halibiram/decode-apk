.class public abstract Landroidx/camera/core/processing/util/OutConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
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

.method public static of(IILandroid/graphics/Rect;Landroid/util/Size;IZ)Landroidx/camera/core/processing/util/OutConfig;
    .locals 7
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 8
    invoke-static/range {v0 .. v6}, Landroidx/camera/core/processing/util/OutConfig;->of(IILandroid/graphics/Rect;Landroid/util/Size;IZZ)Landroidx/camera/core/processing/util/OutConfig;

    move-result-object p0

    return-object p0
.end method

.method public static of(IILandroid/graphics/Rect;Landroid/util/Size;IZZ)Landroidx/camera/core/processing/util/OutConfig;
    .locals 10
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 9
    new-instance v9, Landroidx/camera/core/processing/util/AutoValue_OutConfig;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    move-object v0, v9

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroidx/camera/core/processing/util/AutoValue_OutConfig;-><init>(Ljava/util/UUID;IILandroid/graphics/Rect;Landroid/util/Size;IZZ)V

    return-object v9
.end method

.method public static of(Landroidx/camera/core/processing/SurfaceEdge;)Landroidx/camera/core/processing/util/OutConfig;
    .locals 6
    .param p0    # Landroidx/camera/core/processing/SurfaceEdge;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/processing/SurfaceEdge;->getTargets()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/camera/core/processing/SurfaceEdge;->getFormat()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroidx/camera/core/processing/SurfaceEdge;->getCropRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Landroidx/camera/core/processing/SurfaceEdge;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/camera/core/processing/SurfaceEdge;->getRotationDegrees()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/camera/core/impl/utils/TransformUtils;->getRotatedSize(Landroid/graphics/Rect;I)Landroid/util/Size;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Landroidx/camera/core/processing/SurfaceEdge;->getRotationDegrees()I

    move-result v4

    .line 6
    invoke-virtual {p0}, Landroidx/camera/core/processing/SurfaceEdge;->isMirroring()Z

    move-result v5

    .line 7
    invoke-static/range {v0 .. v5}, Landroidx/camera/core/processing/util/OutConfig;->of(IILandroid/graphics/Rect;Landroid/util/Size;IZ)Landroidx/camera/core/processing/util/OutConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getCropRect()Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getFormat()I
.end method

.method public abstract getRotationDegrees()I
.end method

.method public abstract getSize()Landroid/util/Size;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTargets()I
.end method

.method public abstract getUuid()Ljava/util/UUID;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract isMirroring()Z
.end method

.method public abstract shouldRespectInputCropRect()Z
.end method
