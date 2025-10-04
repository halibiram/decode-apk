.class public final Landroidx/camera/video/VideoRecordEvent$Status;
.super Landroidx/camera/video/VideoRecordEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/VideoRecordEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;)V
    .locals 0
    .param p1    # Landroidx/camera/video/OutputOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/RecordingStats;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/VideoRecordEvent;-><init>(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
