.class Landroidx/camera/video/internal/audio/AudioSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Observable$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/video/internal/audio/AudioSource;->resetBufferProvider(Landroidx/camera/video/internal/BufferProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/Observable$Observer<",
        "Landroidx/camera/video/internal/BufferProvider$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/video/internal/audio/AudioSource;

.field final synthetic val$bufferProvider:Landroidx/camera/video/internal/BufferProvider;


# direct methods
.method public constructor <init>(Landroidx/camera/video/internal/audio/AudioSource;Landroidx/camera/video/internal/BufferProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/video/internal/audio/AudioSource$1;->this$0:Landroidx/camera/video/internal/audio/AudioSource;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/video/internal/audio/AudioSource$1;->val$bufferProvider:Landroidx/camera/video/internal/BufferProvider;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource$1;->this$0:Landroidx/camera/video/internal/audio/AudioSource;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/camera/video/internal/audio/AudioSource;->mBufferProvider:Landroidx/camera/video/internal/BufferProvider;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/camera/video/internal/audio/AudioSource$1;->val$bufferProvider:Landroidx/camera/video/internal/BufferProvider;

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/camera/video/internal/audio/AudioSource;->notifyError(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onNewData(Landroidx/camera/video/internal/BufferProvider$State;)V
    .locals 2
    .param p1    # Landroidx/camera/video/internal/BufferProvider$State;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource$1;->this$0:Landroidx/camera/video/internal/audio/AudioSource;

    iget-object v0, v0, Landroidx/camera/video/internal/audio/AudioSource;->mBufferProvider:Landroidx/camera/video/internal/BufferProvider;

    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource$1;->val$bufferProvider:Landroidx/camera/video/internal/BufferProvider;

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Receive BufferProvider state change: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource$1;->this$0:Landroidx/camera/video/internal/audio/AudioSource;

    iget-object v1, v1, Landroidx/camera/video/internal/audio/AudioSource;->mBufferProviderState:Landroidx/camera/video/internal/BufferProvider$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioSource"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource$1;->this$0:Landroidx/camera/video/internal/audio/AudioSource;

    iget-object v1, v0, Landroidx/camera/video/internal/audio/AudioSource;->mBufferProviderState:Landroidx/camera/video/internal/BufferProvider$State;

    if-eq v1, p1, :cond_0

    .line 6
    iput-object p1, v0, Landroidx/camera/video/internal/audio/AudioSource;->mBufferProviderState:Landroidx/camera/video/internal/BufferProvider$State;

    .line 7
    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioSource;->updateSendingAudio()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNewData(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroidx/camera/video/internal/BufferProvider$State;

    invoke-virtual {p0, p1}, Landroidx/camera/video/internal/audio/AudioSource$1;->onNewData(Landroidx/camera/video/internal/BufferProvider$State;)V

    return-void
.end method
