.class public interface abstract Landroidx/camera/video/internal/audio/AudioStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/audio/AudioStream$AudioStreamException;,
        Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;,
        Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;
    }
.end annotation


# virtual methods
.method public abstract read(Ljava/nio/ByteBuffer;)Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setCallback(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;Ljava/util/concurrent/Executor;)V
    .param p1    # Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
