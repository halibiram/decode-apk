.class public final Landroidx/camera/video/internal/compat/Api24Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
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

.method public static getClientAudioSessionId(Landroid/media/AudioRecordingConfiguration;)I
    .locals 0
    .param p0    # Landroid/media/AudioRecordingConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSessionId()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static getTimestamp(Landroid/media/AudioRecord;Landroid/media/AudioTimestamp;I)I
    .locals 0
    .param p0    # Landroid/media/AudioRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/media/AudioTimestamp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioRecord;->getTimestamp(Landroid/media/AudioTimestamp;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
