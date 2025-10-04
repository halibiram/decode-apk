.class public interface abstract Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/audio/AudioSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioSourceCallback"
.end annotation


# virtual methods
.method public abstract onAmplitudeValue(D)V
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSilenceStateChanged(Z)V
.end method

.method public abstract onSuspendStateChanged(Z)V
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method
