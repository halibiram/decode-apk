.class public Landroidx/camera/camera2/internal/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mQuirk:Landroidx/camera/camera2/internal/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Landroidx/camera/camera2/internal/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/camera/camera2/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/camera/camera2/internal/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;->mQuirk:Landroidx/camera/camera2/internal/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;->mQuirk:Landroidx/camera/camera2/internal/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->getExtraSupportedSurfaceCombinations(Ljava/lang/String;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
