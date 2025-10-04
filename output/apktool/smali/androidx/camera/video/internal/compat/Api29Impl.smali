.class public final Landroidx/camera/video/internal/compat/Api29Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getActiveRecordingConfiguration(Landroid/media/AudioRecord;)Landroid/media/AudioRecordingConfiguration;
    .locals 0
    .param p0    # Landroid/media/AudioRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getActiveRecordingConfiguration()Landroid/media/AudioRecordingConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static isClientSilenced(Landroid/media/AudioRecordingConfiguration;)Z
    .locals 0
    .param p0    # Landroid/media/AudioRecordingConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioRecordingConfiguration;->isClientSilenced()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static registerAudioRecordingCallback(Landroid/media/AudioRecord;Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V
    .locals 0
    .param p0    # Landroid/media/AudioRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/AudioManager$AudioRecordingCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioRecord;->registerAudioRecordingCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static unregisterAudioRecordingCallback(Landroid/media/AudioRecord;Landroid/media/AudioManager$AudioRecordingCallback;)V
    .locals 0
    .param p0    # Landroid/media/AudioRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/media/AudioManager$AudioRecordingCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
