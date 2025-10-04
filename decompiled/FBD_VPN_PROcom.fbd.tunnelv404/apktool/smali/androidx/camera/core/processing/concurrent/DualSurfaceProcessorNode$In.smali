.class public abstract Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "In"
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

.method public static of(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/List;)Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;
    .locals 1
    .param p0    # Landroidx/camera/core/processing/SurfaceEdge;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/processing/SurfaceEdge;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/processing/SurfaceEdge;",
            "Landroidx/camera/core/processing/SurfaceEdge;",
            "Ljava/util/List<",
            "Landroidx/camera/core/processing/concurrent/DualOutConfig;",
            ">;)",
            "Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;-><init>(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getOutConfigs()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/processing/concurrent/DualOutConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimarySurfaceEdge()Landroidx/camera/core/processing/SurfaceEdge;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSecondarySurfaceEdge()Landroidx/camera/core/processing/SurfaceEdge;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
