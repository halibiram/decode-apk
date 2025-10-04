.class abstract Landroidx/camera/video/QualityRatioToResolutionsTable$QualityRatio;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/QualityRatioToResolutionsTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "QualityRatio"
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

.method public static of(Landroidx/camera/video/Quality;I)Landroidx/camera/video/QualityRatioToResolutionsTable$QualityRatio;
    .locals 1
    .param p0    # Landroidx/camera/video/Quality;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroidx/camera/video/AutoValue_QualityRatioToResolutionsTable_QualityRatio;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/camera/video/AutoValue_QualityRatioToResolutionsTable_QualityRatio;-><init>(Landroidx/camera/video/Quality;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getAspectRatio()I
.end method

.method public abstract getQuality()Landroidx/camera/video/Quality;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
