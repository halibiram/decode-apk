.class public final Landroidx/camera/core/impl/SessionProcessorSurface;
.super Landroidx/camera/core/impl/DeferrableSurface;
.source "SourceFile"


# instance fields
.field private final mOutputConfigId:I

.field private final mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;I)V
    .locals 0
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/impl/DeferrableSurface;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/core/impl/SessionProcessorSurface;->mSurface:Landroid/view/Surface;

    .line 5
    .line 6
    iput p2, p0, Landroidx/camera/core/impl/SessionProcessorSurface;->mOutputConfigId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getOutputConfigId()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/SessionProcessorSurface;->mOutputConfigId:I

    .line 2
    .line 3
    return v0
.end method

.method public provideSurface()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/SessionProcessorSurface;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
