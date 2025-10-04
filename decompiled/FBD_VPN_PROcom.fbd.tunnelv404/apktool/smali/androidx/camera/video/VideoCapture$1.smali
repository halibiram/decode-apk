.class Landroidx/camera/video/VideoCapture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Observable$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/Observable$Observer<",
        "Landroidx/camera/video/StreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/video/VideoCapture;


# direct methods
.method public constructor <init>(Landroidx/camera/video/VideoCapture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "VideoCapture"

    .line 2
    .line 3
    const-string v1, "Receive onError from StreamState observer"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onNewData(Landroidx/camera/video/StreamInfo;)V
    .locals 7
    .param p1    # Landroidx/camera/video/StreamInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 2
    iget-object v2, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    iget-object v2, v2, Landroidx/camera/video/VideoCapture;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    sget-object v3, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    if-ne v2, v3, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stream info update: old: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    iget-object v3, v3, Landroidx/camera/video/VideoCapture;->mStreamInfo:Landroidx/camera/video/StreamInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoCapture"

    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    iget-object v3, v2, Landroidx/camera/video/VideoCapture;->mStreamInfo:Landroidx/camera/video/StreamInfo;

    .line 5
    iput-object p1, v2, Landroidx/camera/video/VideoCapture;->mStreamInfo:Landroidx/camera/video/StreamInfo;

    .line 6
    invoke-virtual {v2}, Landroidx/camera/core/UseCase;->getAttachedStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/StreamSpec;

    .line 7
    iget-object v4, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    invoke-virtual {v3}, Landroidx/camera/video/StreamInfo;->getId()I

    move-result v5

    invoke-virtual {p1}, Landroidx/camera/video/StreamInfo;->getId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroidx/camera/video/VideoCapture;->isStreamIdChanged(II)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    .line 8
    invoke-virtual {v4, v3, p1}, Landroidx/camera/video/VideoCapture;->shouldResetCompensatingTransformation(Landroidx/camera/video/StreamInfo;Landroidx/camera/video/StreamInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_0

    .line 9
    :cond_1
    invoke-virtual {v3}, Landroidx/camera/video/StreamInfo;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 10
    invoke-virtual {p1}, Landroidx/camera/video/StreamInfo;->getId()I

    move-result v4

    if-eq v4, v5, :cond_3

    .line 11
    :cond_2
    invoke-virtual {v3}, Landroidx/camera/video/StreamInfo;->getId()I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 12
    invoke-virtual {p1}, Landroidx/camera/video/StreamInfo;->getId()I

    move-result v4

    if-eq v4, v5, :cond_4

    .line 13
    :cond_3
    iget-object v3, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    iget-object v4, v3, Landroidx/camera/video/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v3, v4, p1, v2}, Landroidx/camera/video/VideoCapture;->applyStreamInfoAndStreamSpecToSessionConfigBuilder(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/video/StreamInfo;Landroidx/camera/core/impl/StreamSpec;)V

    .line 14
    iget-object p1, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    iget-object v2, p1, Landroidx/camera/video/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v2

    .line 15
    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v3, v1

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Landroidx/camera/video/VideoCapture;->access$000(Landroidx/camera/video/VideoCapture;Ljava/util/List;)V

    .line 18
    iget-object p1, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    invoke-static {p1}, Landroidx/camera/video/VideoCapture;->access$100(Landroidx/camera/video/VideoCapture;)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v3}, Landroidx/camera/video/StreamInfo;->getStreamState()Landroidx/camera/video/StreamInfo$StreamState;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/camera/video/StreamInfo;->getStreamState()Landroidx/camera/video/StreamInfo$StreamState;

    move-result-object v4

    if-eq v3, v4, :cond_6

    .line 20
    iget-object v3, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    iget-object v4, v3, Landroidx/camera/video/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v3, v4, p1, v2}, Landroidx/camera/video/VideoCapture;->applyStreamInfoAndStreamSpecToSessionConfigBuilder(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/video/StreamInfo;Landroidx/camera/core/impl/StreamSpec;)V

    .line 21
    iget-object p1, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    iget-object v2, p1, Landroidx/camera/video/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v2

    .line 22
    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v3, v1

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 24
    invoke-static {p1, v0}, Landroidx/camera/video/VideoCapture;->access$200(Landroidx/camera/video/VideoCapture;Ljava/util/List;)V

    .line 25
    iget-object p1, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    invoke-static {p1}, Landroidx/camera/video/VideoCapture;->access$300(Landroidx/camera/video/VideoCapture;)V

    goto :goto_1

    .line 26
    :cond_5
    :goto_0
    iget-object p1, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    invoke-virtual {p1}, Landroidx/camera/video/VideoCapture;->resetPipeline()V

    :cond_6
    :goto_1
    return-void

    .line 27
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "StreamInfo can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onNewData(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroidx/camera/video/StreamInfo;

    invoke-virtual {p0, p1}, Landroidx/camera/video/VideoCapture$1;->onNewData(Landroidx/camera/video/StreamInfo;)V

    return-void
.end method
