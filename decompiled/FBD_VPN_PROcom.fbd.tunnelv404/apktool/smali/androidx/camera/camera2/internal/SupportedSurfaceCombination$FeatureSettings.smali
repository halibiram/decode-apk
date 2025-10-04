.class abstract Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/SupportedSurfaceCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FeatureSettings"
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

.method public static of(IIZZ)Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/camera2/internal/AutoValue_SupportedSurfaceCombination_FeatureSettings;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/camera2/internal/AutoValue_SupportedSurfaceCombination_FeatureSettings;-><init>(IIZZ)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getCameraMode()I
.end method

.method public abstract getRequiredMaxBitDepth()I
.end method

.method public abstract isPreviewStabilizationOn()Z
.end method

.method public abstract isUltraHdrOn()Z
.end method
