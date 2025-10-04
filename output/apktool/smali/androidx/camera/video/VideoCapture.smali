.class public final Landroidx/camera/video/VideoCapture;
.super Landroidx/camera/core/UseCase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/VideoCapture$Builder;,
        Landroidx/camera/video/VideoCapture$Defaults;,
        Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/camera/video/VideoOutput;",
        ">",
        "Landroidx/camera/core/UseCase;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CONFIG:Landroidx/camera/video/VideoCapture$Defaults;

.field private static final SURFACE_UPDATE_KEY:Ljava/lang/String; = "androidx.camera.video.VideoCapture.streamUpdate"

.field private static final TAG:Ljava/lang/String; = "VideoCapture"


# instance fields
.field private mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mCropRect:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

.field private mHasCompensatingTransformation:Z

.field private mNode:Landroidx/camera/core/processing/SurfaceProcessorNode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mRotationDegrees:I

.field mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

.field private mSourceStreamRequirementObserver:Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mStreamInfo:Landroidx/camera/video/StreamInfo;

.field private final mStreamInfoObserver:Landroidx/camera/core/impl/Observable$Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Observable$Observer<",
            "Landroidx/camera/video/StreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

.field mSurfaceUpdateFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/video/VideoCapture$Defaults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/video/VideoCapture$Defaults;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/video/VideoCapture;->DEFAULT_CONFIG:Landroidx/camera/video/VideoCapture$Defaults;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/impl/VideoCaptureConfig;)V
    .locals 0
    .param p1    # Landroidx/camera/video/impl/VideoCaptureConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/impl/VideoCaptureConfig<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/UseCase;-><init>(Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Landroidx/camera/video/StreamInfo;->STREAM_INFO_ANY_INACTIVE:Landroidx/camera/video/StreamInfo;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/camera/video/VideoCapture;->mStreamInfo:Landroidx/camera/video/StreamInfo;

    .line 7
    .line 8
    new-instance p1, Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 9
    .line 10
    invoke-direct {p1}, Landroidx/camera/core/impl/SessionConfig$Builder;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/camera/video/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Landroidx/camera/video/VideoCapture;->mSurfaceUpdateFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 17
    .line 18
    sget-object p1, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/camera/video/VideoCapture;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Landroidx/camera/video/VideoCapture;->mHasCompensatingTransformation:Z

    .line 24
    .line 25
    new-instance p1, Landroidx/camera/video/VideoCapture$1;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Landroidx/camera/video/VideoCapture$1;-><init>(Landroidx/camera/video/VideoCapture;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroidx/camera/video/VideoCapture;->mStreamInfoObserver:Landroidx/camera/core/impl/Observable$Observer;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic access$000(Landroidx/camera/video/VideoCapture;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->updateSessionConfig(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Landroidx/camera/video/VideoCapture;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyReset()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Landroidx/camera/video/VideoCapture;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->updateSessionConfig(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Landroidx/camera/video/VideoCapture;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyUpdated()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static addBySupportedSize(Ljava/util/Set;IILandroid/util/Size;Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)V
    .locals 3
    .param p0    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;II",
            "Landroid/util/Size;",
            "Landroidx/camera/video/internal/encoder/VideoEncoderInfo;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "VideoCapture"

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gt p1, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-le p2, p3, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :try_start_0
    invoke-interface {p4, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedHeightsFor(I)Landroid/util/Range;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    new-instance v1, Landroid/util/Size;

    .line 21
    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p3, v2}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    check-cast p3, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    invoke-direct {v1, p1, p3}, Landroid/util/Size;-><init>(II)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p3

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "No supportedHeights for width: "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1, p3}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    :try_start_1
    invoke-interface {p4, p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedWidthsFor(I)Landroid/util/Range;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    new-instance p4, Landroid/util/Size;

    .line 66
    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p3, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-direct {p4, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catch_1
    move-exception p0

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string p3, "No supportedWidths for height: "

    .line 92
    .line 93
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {v0, p1, p0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    :goto_1
    return-void
.end method

.method private static adjustCropRectByQuirk(Landroid/graphics/Rect;IZLandroidx/camera/video/internal/encoder/VideoEncoderInfo;)Landroid/graphics/Rect;
    .locals 1
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Landroidx/camera/video/internal/compat/quirk/SizeCannotEncodeVideoQuirk;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/camera/video/internal/compat/quirk/SizeCannotEncodeVideoQuirk;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0, p0, p1, p3}, Landroidx/camera/video/internal/compat/quirk/SizeCannotEncodeVideoQuirk;->adjustCropRectForProblematicEncodeSize(Landroid/graphics/Rect;ILandroidx/camera/video/internal/encoder/VideoEncoderInfo;)Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    return-object p0
.end method

.method private static adjustCropRectToValidSize(Landroid/graphics/Rect;Landroid/util/Size;Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)Landroid/graphics/Rect;
    .locals 10
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/utils/TransformUtils;->rectToString(Landroid/graphics/Rect;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getWidthAlignment()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getHeightAlignment()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedWidths()Landroid/util/Range;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedHeights()Landroid/util/Range;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x5

    .line 30
    new-array v5, v5, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    aput-object v0, v5, v6

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    aput-object v1, v5, v0

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    aput-object v2, v5, v1

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    aput-object v3, v5, v2

    .line 43
    .line 44
    const/4 v2, 0x4

    .line 45
    aput-object v4, v5, v2

    .line 46
    .line 47
    const-string v2, "Adjust cropRect %s by width/height alignment %d/%d and supported widths %s / supported heights %s"

    .line 48
    .line 49
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "VideoCapture"

    .line 54
    .line 55
    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedWidths()Landroid/util/Range;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v2, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_0

    .line 75
    .line 76
    invoke-interface {p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedHeights()Landroid/util/Range;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v2, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_0

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-interface {p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->canSwapWidthHeight()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    invoke-interface {p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedHeights()Landroid/util/Range;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v2, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_1

    .line 118
    .line 119
    invoke-interface {p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedWidths()Landroid/util/Range;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v2, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_1

    .line 136
    .line 137
    new-instance v2, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;

    .line 138
    .line 139
    invoke-direct {v2, p2}, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;-><init>(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)V

    .line 140
    .line 141
    .line 142
    move-object p2, v2

    .line 143
    :cond_1
    :goto_0
    invoke-interface {p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getWidthAlignment()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-interface {p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getHeightAlignment()I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    invoke-interface {p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedWidths()Landroid/util/Range;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-interface {p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedHeights()Landroid/util/Range;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    invoke-static {v8, v2, v5}, Landroidx/camera/video/VideoCapture;->alignDown(IILandroid/util/Range;)I

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    invoke-static {v9, v2, v5}, Landroidx/camera/video/VideoCapture;->alignUp(IILandroid/util/Range;)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    invoke-static {v5, v4, v7}, Landroidx/camera/video/VideoCapture;->alignDown(IILandroid/util/Range;)I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    invoke-static {v9, v4, v7}, Landroidx/camera/video/VideoCapture;->alignUp(IILandroid/util/Range;)I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    new-instance v7, Ljava/util/HashSet;

    .line 192
    .line 193
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-static {v7, v8, v5, p1, p2}, Landroidx/camera/video/VideoCapture;->addBySupportedSize(Ljava/util/Set;IILandroid/util/Size;Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v7, v8, v4, p1, p2}, Landroidx/camera/video/VideoCapture;->addBySupportedSize(Ljava/util/Set;IILandroid/util/Size;Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v7, v2, v5, p1, p2}, Landroidx/camera/video/VideoCapture;->addBySupportedSize(Ljava/util/Set;IILandroid/util/Size;Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v7, v2, v4, p1, p2}, Landroidx/camera/video/VideoCapture;->addBySupportedSize(Ljava/util/Set;IILandroid/util/Size;Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    if-eqz p2, :cond_2

    .line 213
    .line 214
    const-string p1, "Can\'t find valid cropped size"

    .line 215
    .line 216
    invoke-static {v3, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-object p0

    .line 220
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-direct {p2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 223
    .line 224
    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v4, "candidatesList = "

    .line 228
    .line 229
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    new-instance v2, L둘듟돰땃땠땳땹땅돛도둬딀돷돸뎬듌돝됩돼딠돶돼땮돠뎸둘될땋들됴땭돝딹듬뒾두땸돤듻딞돸돝땟땜되듐둥뒉두땳딁뒋듐듽딽듸뎸땹듰땩땅뒀땪돤됫뎠돳돶땔딄뒬뎡뒐딨땣딀딨땳땰땥되뒈디뎠딁뒻땍됨돵땡뒈땟둡뒾땁뒉딁뒛뎻뎸뒘딁될둡딠딽땬땰됩뒋땭땣뒙땦딀딌땲딨땅딜듸뒻땜뎰뎬땀땨딝돛돴;

    .line 243
    .line 244
    invoke-direct {v2, p0, v1}, L둘듟돰땃땠땳땹땅돛도둬딀돷돸뎬듌돝됩돼딠돶돼땮돠뎸둘될땋들됴땭돝딹듬뒾두땸돤듻딞돸돝땟땜되듐둥뒉두땳딁뒋듐듽딽듸뎸땹듰땩땅뒀땪돤됫뎠돳돶땔딄뒬뎡뒐딨땣딀딨땳땰땥되뒈디뎠딁뒻땍됨돵땡뒈땟둡뒾땁뒉딁뒛뎻뎸뒘딁될둡딠딽땬땰됩뒋땭땣뒙땦딀딌땲딨땅딜듸뒻땜뎰뎬땀땨딝돛돴;-><init>(Ljava/lang/Object;I)V

    .line 245
    .line 246
    .line 247
    invoke-static {p2, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 248
    .line 249
    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v4, "sorted candidatesList = "

    .line 253
    .line 254
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    check-cast p2, Landroid/util/Size;

    .line 272
    .line 273
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    if-ne v2, v4, :cond_3

    .line 286
    .line 287
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    if-ne p2, v4, :cond_3

    .line 292
    .line 293
    const-string p1, "No need to adjust cropRect because crop size is valid."

    .line 294
    .line 295
    invoke-static {v3, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    return-object p0

    .line 299
    :cond_3
    rem-int/lit8 v4, v2, 0x2

    .line 300
    .line 301
    if-nez v4, :cond_4

    .line 302
    .line 303
    rem-int/lit8 v4, p2, 0x2

    .line 304
    .line 305
    if-nez v4, :cond_4

    .line 306
    .line 307
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    if-gt v2, v4, :cond_4

    .line 312
    .line 313
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    if-gt p2, v4, :cond_4

    .line 318
    .line 319
    goto :goto_1

    .line 320
    :cond_4
    const/4 v0, 0x0

    .line 321
    :goto_1
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 322
    .line 323
    .line 324
    new-instance v0, Landroid/graphics/Rect;

    .line 325
    .line 326
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    if-eq v2, v4, :cond_5

    .line 334
    .line 335
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    div-int/lit8 v5, v2, 0x2

    .line 340
    .line 341
    sub-int/2addr v4, v5

    .line 342
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 347
    .line 348
    add-int/2addr v4, v2

    .line 349
    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 350
    .line 351
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 352
    .line 353
    .line 354
    move-result v5

    .line 355
    if-le v4, v5, :cond_5

    .line 356
    .line 357
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 362
    .line 363
    sub-int/2addr v4, v2

    .line 364
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 365
    .line 366
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-eq p2, v2, :cond_6

    .line 371
    .line 372
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    div-int/lit8 v1, p2, 0x2

    .line 377
    .line 378
    sub-int/2addr v2, v1

    .line 379
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 384
    .line 385
    add-int/2addr v1, p2

    .line 386
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 387
    .line 388
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    if-le v1, v2, :cond_6

    .line 393
    .line 394
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 395
    .line 396
    .line 397
    move-result p1

    .line 398
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 399
    .line 400
    sub-int/2addr p1, p2

    .line 401
    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 402
    .line 403
    :cond_6
    invoke-static {p0}, Landroidx/camera/core/impl/utils/TransformUtils;->rectToString(Landroid/graphics/Rect;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object p0

    .line 407
    invoke-static {v0}, Landroidx/camera/core/impl/utils/TransformUtils;->rectToString(Landroid/graphics/Rect;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    new-instance p2, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    const-string v1, "Adjust cropRect from "

    .line 414
    .line 415
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    const-string p0, " to "

    .line 422
    .line 423
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    invoke-static {v3, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    return-object v0
.end method

.method private adjustCropRectWithInProgressTransformation(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/VideoCapture;->shouldCompensateTransformation()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/camera/video/VideoCapture;->mStreamInfo:Landroidx/camera/video/StreamInfo;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/camera/video/StreamInfo;->getInProgressTransformationInfo()Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->getCropRect()Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1, p2}, Landroidx/camera/core/impl/utils/TransformUtils;->getRotatedSize(Landroid/graphics/Rect;I)Landroid/util/Size;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRect(Landroid/util/Size;)Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_0
    return-object p1
.end method

.method private adjustResolutionWithInProgressTransformation(Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/util/Size;
    .locals 3
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/VideoCapture;->shouldCompensateTransformation()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    int-to-float p3, p3

    .line 18
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    int-to-float p2, p2

    .line 23
    div-float/2addr p3, p2

    .line 24
    new-instance p2, Landroid/util/Size;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    mul-float v0, v0, p3

    .line 32
    .line 33
    float-to-double v0, v0

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    double-to-int v0, v0

    .line 39
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    int-to-float p1, p1

    .line 44
    mul-float p1, p1, p3

    .line 45
    .line 46
    float-to-double v1, p1

    .line 47
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    double-to-int p1, v1

    .line 52
    invoke-direct {p2, v0, p1}, Landroid/util/Size;-><init>(II)V

    .line 53
    .line 54
    .line 55
    move-object p1, p2

    .line 56
    :cond_0
    return-object p1
.end method

.method private static align(ZIILandroid/util/Range;)I
    .locals 1
    .param p3    # Landroid/util/Range;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    rem-int v0, p1, p2

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-eqz p0, :cond_1

    .line 7
    .line 8
    sub-int/2addr p1, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    sub-int/2addr p2, v0

    .line 11
    add-int/2addr p1, p2

    .line 12
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p3, p0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method private static alignDown(IILandroid/util/Range;)I
    .locals 1
    .param p2    # Landroid/util/Range;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p0, p1, p2}, Landroidx/camera/video/VideoCapture;->align(ZIILandroid/util/Range;)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method private static alignUp(IILandroid/util/Range;)I
    .locals 1
    .param p2    # Landroid/util/Range;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1, p2}, Landroidx/camera/video/VideoCapture;->align(ZIILandroid/util/Range;)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method private calculateCropRect(Landroid/util/Size;Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)Landroid/graphics/Rect;
    .locals 4
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getViewPortCropRect()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getViewPortCropRect()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 24
    .line 25
    .line 26
    :goto_0
    if-eqz p2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-interface {p2, v1, v2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->isSizeSupportedAllowSwapping(II)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-static {v0, p1, p2}, Landroidx/camera/video/VideoCapture;->adjustCropRectToValidSize(Landroid/graphics/Rect;Landroid/util/Size;Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)Landroid/graphics/Rect;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_2
    :goto_1
    return-object v0
.end method

.method private clearPipeline()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->close()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Landroidx/camera/video/VideoCapture;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Landroidx/camera/video/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->mNode:Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceProcessorNode;->release()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Landroidx/camera/video/VideoCapture;->mNode:Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->close()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Landroidx/camera/video/VideoCapture;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 40
    .line 41
    :cond_3
    iput-object v1, p0, Landroidx/camera/video/VideoCapture;->mCropRect:Landroid/graphics/Rect;

    .line 42
    .line 43
    iput-object v1, p0, Landroidx/camera/video/VideoCapture;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 44
    .line 45
    sget-object v0, Landroidx/camera/video/StreamInfo;->STREAM_INFO_ANY_INACTIVE:Landroidx/camera/video/StreamInfo;

    .line 46
    .line 47
    iput-object v0, p0, Landroidx/camera/video/VideoCapture;->mStreamInfo:Landroidx/camera/video/StreamInfo;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    iput v0, p0, Landroidx/camera/video/VideoCapture;->mRotationDegrees:I

    .line 51
    .line 52
    iput-boolean v0, p0, Landroidx/camera/video/VideoCapture;->mHasCompensatingTransformation:Z

    .line 53
    .line 54
    return-void
.end method

.method private createNodeIfNeeded(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/video/impl/VideoCaptureConfig;Landroid/graphics/Rect;Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/processing/SurfaceProcessorNode;
    .locals 0
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/impl/VideoCaptureConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInternal;",
            "Landroidx/camera/video/impl/VideoCaptureConfig<",
            "TT;>;",
            "Landroid/graphics/Rect;",
            "Landroid/util/Size;",
            "Landroidx/camera/core/DynamicRange;",
            ")",
            "Landroidx/camera/core/processing/SurfaceProcessorNode;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/video/VideoCapture;->isCreateNodeNeeded(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/video/impl/VideoCaptureConfig;Landroid/graphics/Rect;Landroid/util/Size;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const-string p1, "VideoCapture"

    .line 8
    .line 9
    const-string p2, "Surface processing is enabled."

    .line 10
    .line 11
    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    check-cast p2, Landroidx/camera/core/impl/CameraInternal;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getEffect()Landroidx/camera/core/CameraEffect;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getEffect()Landroidx/camera/core/CameraEffect;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {p3}, Landroidx/camera/core/CameraEffect;->createSurfaceProcessorInternal()Landroidx/camera/core/processing/SurfaceProcessorInternal;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p5}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$Factory;->newInstance(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/processing/SurfaceProcessorInternal;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    :goto_0
    invoke-direct {p1, p2, p3}, Landroidx/camera/core/processing/SurfaceProcessorNode;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceProcessorInternal;)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    return-object p1
.end method

.method private createPipeline(Landroidx/camera/video/impl/VideoCaptureConfig;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 25
    .param p1    # Landroidx/camera/video/impl/VideoCaptureConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/impl/VideoCaptureConfig<",
            "TT;>;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ")",
            "Landroidx/camera/core/impl/SessionConfig$Builder;"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v9, v0

    .line 17
    check-cast v9, Landroidx/camera/core/impl/CameraInternal;

    .line 18
    .line 19
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    new-instance v10, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;

    .line 24
    .line 25
    const/16 v0, 0xc

    .line 26
    .line 27
    invoke-direct {v10, v7, v0}, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    invoke-static/range {p2 .. p2}, Landroidx/camera/video/VideoCapture;->resolveFrameRate(Landroidx/camera/core/impl/StreamSpec;)Landroid/util/Range;

    .line 31
    .line 32
    .line 33
    move-result-object v11

    .line 34
    invoke-direct/range {p0 .. p0}, Landroidx/camera/video/VideoCapture;->getMediaSpec()Landroidx/camera/video/MediaSpec;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    invoke-interface {v9}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {v7, v0}, Landroidx/camera/video/VideoCapture;->getVideoCapabilities(Landroidx/camera/core/CameraInfo;)Landroidx/camera/video/VideoCapabilities;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/StreamSpec;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    invoke-interface {v0, v6, v12}, Landroidx/camera/video/VideoCapabilities;->findNearestHigherSupportedEncoderProfilesFor(Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/video/impl/VideoCaptureConfig;->getVideoEncoderInfoFinder()Landroidx/arch/core/util/Function;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v3, v6

    .line 62
    move-object v4, v12

    .line 63
    move-object v5, v11

    .line 64
    invoke-static/range {v0 .. v5}, Landroidx/camera/video/VideoCapture;->resolveVideoEncoderInfo(Landroidx/arch/core/util/Function;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;Landroidx/camera/video/MediaSpec;Landroid/util/Size;Landroidx/camera/core/DynamicRange;Landroid/util/Range;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {v7, v9}, Landroidx/camera/video/VideoCapture;->getCompensatedRotation(Landroidx/camera/core/impl/CameraInternal;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iput v1, v7, Landroidx/camera/video/VideoCapture;->mRotationDegrees:I

    .line 73
    .line 74
    invoke-direct {v7, v6, v0}, Landroidx/camera/video/VideoCapture;->calculateCropRect(Landroid/util/Size;Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)Landroid/graphics/Rect;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget v2, v7, Landroidx/camera/video/VideoCapture;->mRotationDegrees:I

    .line 79
    .line 80
    invoke-direct {v7, v1, v2}, Landroidx/camera/video/VideoCapture;->adjustCropRectWithInProgressTransformation(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iput-object v2, v7, Landroidx/camera/video/VideoCapture;->mCropRect:Landroid/graphics/Rect;

    .line 85
    .line 86
    invoke-direct {v7, v6, v1, v2}, Landroidx/camera/video/VideoCapture;->adjustResolutionWithInProgressTransformation(Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/util/Size;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    invoke-direct/range {p0 .. p0}, Landroidx/camera/video/VideoCapture;->shouldCompensateTransformation()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/4 v14, 0x1

    .line 95
    if-eqz v1, :cond_0

    .line 96
    .line 97
    iput-boolean v14, v7, Landroidx/camera/video/VideoCapture;->mHasCompensatingTransformation:Z

    .line 98
    .line 99
    :cond_0
    iget-object v1, v7, Landroidx/camera/video/VideoCapture;->mCropRect:Landroid/graphics/Rect;

    .line 100
    .line 101
    iget v2, v7, Landroidx/camera/video/VideoCapture;->mRotationDegrees:I

    .line 102
    .line 103
    invoke-direct {v7, v9, v8, v1, v6}, Landroidx/camera/video/VideoCapture;->isCreateNodeNeeded(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/video/impl/VideoCaptureConfig;Landroid/graphics/Rect;Landroid/util/Size;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-static {v1, v2, v3, v0}, Landroidx/camera/video/VideoCapture;->adjustCropRectByQuirk(Landroid/graphics/Rect;IZLandroidx/camera/video/internal/encoder/VideoEncoderInfo;)Landroid/graphics/Rect;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iput-object v3, v7, Landroidx/camera/video/VideoCapture;->mCropRect:Landroid/graphics/Rect;

    .line 112
    .line 113
    move-object/from16 v0, p0

    .line 114
    .line 115
    move-object v1, v9

    .line 116
    move-object/from16 v2, p1

    .line 117
    .line 118
    move-object v4, v6

    .line 119
    move-object v5, v12

    .line 120
    invoke-direct/range {v0 .. v5}, Landroidx/camera/video/VideoCapture;->createNodeIfNeeded(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/video/impl/VideoCaptureConfig;Landroid/graphics/Rect;Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iput-object v0, v7, Landroidx/camera/video/VideoCapture;->mNode:Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 125
    .line 126
    invoke-static {v9, v0}, Landroidx/camera/video/VideoCapture;->resolveTimebase(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceProcessorNode;)Landroidx/camera/core/impl/Timebase;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v1, "camera timebase = "

    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v9}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInfoInternal;->getTimebase()Landroidx/camera/core/impl/Timebase;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, ", processing timebase = "

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v1, "VideoCapture"

    .line 161
    .line 162
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/StreamSpec;->toBuilder()Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0, v13}, Landroidx/camera/core/impl/StreamSpec$Builder;->setResolution(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0, v11}, Landroidx/camera/core/impl/StreamSpec$Builder;->setExpectedFrameRateRange(Landroid/util/Range;)Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroidx/camera/core/impl/StreamSpec$Builder;->build()Landroidx/camera/core/impl/StreamSpec;

    .line 178
    .line 179
    .line 180
    move-result-object v18

    .line 181
    iget-object v0, v7, Landroidx/camera/video/VideoCapture;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 182
    .line 183
    if-nez v0, :cond_1

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_1
    const/4 v14, 0x0

    .line 187
    :goto_0
    invoke-static {v14}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 188
    .line 189
    .line 190
    new-instance v0, Landroidx/camera/core/processing/SurfaceEdge;

    .line 191
    .line 192
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getSensorToBufferTransformMatrix()Landroid/graphics/Matrix;

    .line 193
    .line 194
    .line 195
    move-result-object v19

    .line 196
    invoke-interface {v9}, Landroidx/camera/core/impl/CameraInternal;->getHasTransform()Z

    .line 197
    .line 198
    .line 199
    move-result v20

    .line 200
    iget-object v1, v7, Landroidx/camera/video/VideoCapture;->mCropRect:Landroid/graphics/Rect;

    .line 201
    .line 202
    iget v2, v7, Landroidx/camera/video/VideoCapture;->mRotationDegrees:I

    .line 203
    .line 204
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getAppTargetRotation()I

    .line 205
    .line 206
    .line 207
    move-result v23

    .line 208
    invoke-direct {v7, v9}, Landroidx/camera/video/VideoCapture;->shouldMirror(Landroidx/camera/core/impl/CameraInternal;)Z

    .line 209
    .line 210
    .line 211
    move-result v24

    .line 212
    const/16 v16, 0x2

    .line 213
    .line 214
    const/16 v17, 0x22

    .line 215
    .line 216
    move-object v15, v0

    .line 217
    move-object/from16 v21, v1

    .line 218
    .line 219
    move/from16 v22, v2

    .line 220
    .line 221
    invoke-direct/range {v15 .. v24}, Landroidx/camera/core/processing/SurfaceEdge;-><init>(IILandroidx/camera/core/impl/StreamSpec;Landroid/graphics/Matrix;ZLandroid/graphics/Rect;IIZ)V

    .line 222
    .line 223
    .line 224
    iput-object v0, v7, Landroidx/camera/video/VideoCapture;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 225
    .line 226
    invoke-virtual {v0, v10}, Landroidx/camera/core/processing/SurfaceEdge;->addOnInvalidatedListener(Ljava/lang/Runnable;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, v7, Landroidx/camera/video/VideoCapture;->mNode:Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 230
    .line 231
    if-eqz v0, :cond_2

    .line 232
    .line 233
    iget-object v0, v7, Landroidx/camera/video/VideoCapture;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 234
    .line 235
    invoke-static {v0}, Landroidx/camera/core/processing/util/OutConfig;->of(Landroidx/camera/core/processing/SurfaceEdge;)Landroidx/camera/core/processing/util/OutConfig;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iget-object v1, v7, Landroidx/camera/video/VideoCapture;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 240
    .line 241
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-static {v1, v2}, Landroidx/camera/core/processing/SurfaceProcessorNode$In;->of(Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/List;)Landroidx/camera/core/processing/SurfaceProcessorNode$In;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    iget-object v2, v7, Landroidx/camera/video/VideoCapture;->mNode:Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 250
    .line 251
    invoke-virtual {v2, v1}, Landroidx/camera/core/processing/SurfaceProcessorNode;->transform(Landroidx/camera/core/processing/SurfaceProcessorNode$In;)Landroidx/camera/core/processing/SurfaceProcessorNode$Out;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    move-object v10, v0

    .line 260
    check-cast v10, Landroidx/camera/core/processing/SurfaceEdge;

    .line 261
    .line 262
    invoke-static {v10}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    new-instance v11, L딨둘땐땜됐뎹땐딎디둑됩딟딃땃될딄듐땍땳딞돴뎡딠뎠뒷둑둡돼듬땍뒐돰뒹듽드딸뒾듻딝딟딻뒐땟돷뎨들딀땜땐딄둡듨땍딽뒵돸됐됴딄뎹뎹돛둔딹딅돴됩뒾뎻뒬뒈뒐딝돷된돝딽뒨뒷뎹땜뎡뒉땻뒨딎땝돤듐땄둔됨듌땦땨딨뒋땄딤땣땜딤됨땁돛땤돠둠득땃땥됩땻들드땵듨땁듔돼뎻뒤뒈됩땮둑됐딁딀따;

    .line 266
    .line 267
    const/4 v6, 0x1

    .line 268
    move-object v0, v11

    .line 269
    move-object/from16 v1, p0

    .line 270
    .line 271
    move-object v2, v10

    .line 272
    move-object v3, v9

    .line 273
    move-object/from16 v4, p1

    .line 274
    .line 275
    move-object v5, v12

    .line 276
    invoke-direct/range {v0 .. v6}, L딨둘땐땜됐뎹땐딎디둑됩딟딃땃될딄듐땍땳딞돴뎡딠뎠뒷둑둡돼듬땍뒐돰뒹듽드딸뒾듻딝딟딻뒐땟돷뎨들딀땜땐딄둡듨땍딽뒵돸됐됴딄뎹뎹돛둔딹딅돴됩뒾뎻뒬뒈뒐딝돷된돝딽뒨뒷뎹땜뎡뒉땻뒨딎땝돤듐땄둔됨듌땦땨딨뒋땄딤땣땜딤됨땁돛땤돠둠득땃땥됩땻들드땵듨땁듔돼뎻뒤뒈됩땮둑됐딁딀따;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v10, v11}, Landroidx/camera/core/processing/SurfaceEdge;->addOnInvalidatedListener(Ljava/lang/Runnable;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v10, v9}, Landroidx/camera/core/processing/SurfaceEdge;->createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/SurfaceRequest;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    iput-object v0, v7, Landroidx/camera/video/VideoCapture;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 287
    .line 288
    iget-object v0, v7, Landroidx/camera/video/VideoCapture;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 289
    .line 290
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->getDeferrableSurface()Landroidx/camera/core/impl/DeferrableSurface;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    iput-object v0, v7, Landroidx/camera/video/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 295
    .line 296
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    new-instance v2, L딌뎰뎡두땜디뒘딝딌땔듻땀돼따땨될되둬뒻땭돠뒋딄뒨돵땧땋듔뒉듐땐딸뒨드뎡됐듼땪땭듻두돴둔된뒐땍뒐땨딜뒉땠듟땍된디뎬두땍딁돝딤딌듐둑땦뎡뒷땠뒐됩디둬뒀될땵딤듌득딀뎡땹들돛돠땥땥딐뎨딟땤돰돝뒻둠땲돶땜둘듻득됩듼딀딜뒉딁듸듬땬둠듐듌돼땨듰디뒼땄땨뎡땠돵딨돴딽됴듬돠땮땵;

    .line 301
    .line 302
    const/16 v3, 0x19

    .line 303
    .line 304
    invoke-direct {v2, v7, v0, v3}, L딌뎰뎡두땜디뒘딝딌땔듻땀돼따땨될되둬뒻땭돠뒋딄뒨돵땧땋듔뒉듐땐딸뒨드뎡됐듼땪땭듻두돴둔된뒐땍뒐땨딜뒉땠듟땍된디뎬두땍딁돝딤딌듐둑땦뎡뒷땠뒐됩디둬뒀될땵딤듌득딀뎡땹들돛돠땥땥딐뎨딟땤돰돝뒻둠땲돶땜둘듻득됩듼딀딜뒉딁듸듬땬둠듐듌돼땨듰디뒼땄땨뎡땠돵딨돴딽됴듬돠땮땵;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 305
    .line 306
    .line 307
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-interface {v1, v2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 312
    .line 313
    .line 314
    goto :goto_1

    .line 315
    :cond_2
    iget-object v0, v7, Landroidx/camera/video/VideoCapture;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 316
    .line 317
    invoke-virtual {v0, v9}, Landroidx/camera/core/processing/SurfaceEdge;->createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/SurfaceRequest;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iput-object v0, v7, Landroidx/camera/video/VideoCapture;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 322
    .line 323
    invoke-virtual {v0}, Landroidx/camera/core/SurfaceRequest;->getDeferrableSurface()Landroidx/camera/core/impl/DeferrableSurface;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    iput-object v0, v7, Landroidx/camera/video/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 328
    .line 329
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/video/impl/VideoCaptureConfig;->getVideoOutput()Landroidx/camera/video/VideoOutput;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    iget-object v1, v7, Landroidx/camera/video/VideoCapture;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 334
    .line 335
    invoke-interface {v0, v1, v12}, Landroidx/camera/video/VideoOutput;->onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V

    .line 336
    .line 337
    .line 338
    invoke-direct/range {p0 .. p0}, Landroidx/camera/video/VideoCapture;->sendTransformationInfoIfReady()V

    .line 339
    .line 340
    .line 341
    iget-object v0, v7, Landroidx/camera/video/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 342
    .line 343
    const-class v1, Landroid/media/MediaCodec;

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/DeferrableSurface;->setContainerClass(Ljava/lang/Class;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-static {v8, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/StreamSpec;->getExpectedFrameRateRange()Landroid/util/Range;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setExpectedFrameRateRange(Landroid/util/Range;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 361
    .line 362
    .line 363
    invoke-static/range {p1 .. p1}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Landroidx/camera/core/impl/UseCaseConfig;)I

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setVideoStabilization(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 368
    .line 369
    .line 370
    iget-object v1, v7, Landroidx/camera/video/VideoCapture;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 371
    .line 372
    if-eqz v1, :cond_3

    .line 373
    .line 374
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->close()V

    .line 375
    .line 376
    .line 377
    :cond_3
    new-instance v1, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 378
    .line 379
    new-instance v2, L듻딸뎰뒼됫땯뒘듔디딅땠뒙둑득뒛딜땡뒛딤뒵땰돠땦딜땩듐땰돝둡뒼딜뎬뎨뒤돨땣땪뒐땡딐둡뎡뒋땥돠듟됨뒹땳돼듻뒹뎽땝뒋듰뒨딁도둡둬딃둔땧됐딝딻딻뎻뒤뎹듰둑뎰땁듽땫듐뒤된득땥딞땟땔뎡뒨땳땅딃듌둡뒬듽될땨땲뎹둠뎽돝뒷듽뒼딝듸땣둑돤뎡둣된뒐두딃돼딄뎬듽뒐땋둑돰땃됩듸드둑땃땳;

    .line 380
    .line 381
    const/4 v3, 0x4

    .line 382
    invoke-direct {v2, v7, v3}, L듻딸뎰뒼됫땯뒘듔디딅땠뒙둑득뒛딜땡뒛딤뒵땰돠땦딜땩듐땰돝둡뒼딜뎬뎨뒤돨땣땪뒐땡딐둡뎡뒋땥돠듟됨뒹땳돼듻뒹뎽땝뒋듰뒨딁도둡둬딃둔땧됐딝딻딻뎻뒤뎹듰둑뎰땁듽땫듐뒤된득땥딞땟땔뎡뒨땳땅딃듌둡뒬듽될땨땲뎹둠뎽돝뒷듽뒼딝듸땣둑돤뎡둣된뒐두딃돼딄뎬듽뒐땋둑돰땃됩듸드둑땃땳;-><init>(Ljava/lang/Object;I)V

    .line 383
    .line 384
    .line 385
    invoke-direct {v1, v2}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;-><init>(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    .line 386
    .line 387
    .line 388
    iput-object v1, v7, Landroidx/camera/video/VideoCapture;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 389
    .line 390
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setErrorListener(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 391
    .line 392
    .line 393
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    if-eqz v1, :cond_4

    .line 398
    .line 399
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 404
    .line 405
    .line 406
    :cond_4
    return-object v0
.end method

.method private static fetchObservableValue(Landroidx/camera/core/impl/Observable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Landroidx/camera/core/impl/Observable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/core/impl/Observable<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/camera/core/impl/Observable;->fetchData()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception p0

    .line 20
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method private static filterOutEncoderUnsupportedResolutions(Landroidx/camera/video/impl/VideoCaptureConfig;Landroidx/camera/video/MediaSpec;Landroidx/camera/core/DynamicRange;Landroidx/camera/video/VideoCapabilities;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 8
    .param p0    # Landroidx/camera/video/impl/VideoCaptureConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/video/MediaSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/video/VideoCapabilities;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/impl/VideoCaptureConfig<",
            "*>;",
            "Landroidx/camera/video/MediaSpec;",
            "Landroidx/camera/core/DynamicRange;",
            "Landroidx/camera/video/VideoCapabilities;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/video/Quality;",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p4

    .line 8
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/util/Size;

    .line 23
    .line 24
    invoke-interface {p5, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-interface {p3, v1, p2}, Landroidx/camera/video/VideoCapabilities;->findNearestHigherSupportedEncoderProfilesFor(Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p0}, Landroidx/camera/video/impl/VideoCaptureConfig;->getVideoEncoderInfoFinder()Landroidx/arch/core/util/Function;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    sget-object v4, Landroidx/camera/video/VideoCapture$Defaults;->DEFAULT_FPS_RANGE:Landroid/util/Range;

    .line 43
    .line 44
    invoke-static {p0, v4}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Range;)Landroid/util/Range;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-static {v7}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-object v4, p2

    .line 52
    move-object v5, p1

    .line 53
    move-object v6, v1

    .line 54
    invoke-static/range {v2 .. v7}, Landroidx/camera/video/VideoCapture;->findLargestSupportedSizeVideoEncoderInfo(Landroidx/arch/core/util/Function;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;Landroidx/camera/core/DynamicRange;Landroidx/camera/video/MediaSpec;Landroid/util/Size;Landroid/util/Range;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-interface {v2, v3, v1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->isSizeSupportedAllowSwapping(II)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    return-object p4
.end method

.method private static findLargestSupportedSizeVideoEncoderInfo(Landroidx/arch/core/util/Function;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;Landroidx/camera/core/DynamicRange;Landroidx/camera/video/MediaSpec;Landroid/util/Size;Landroid/util/Range;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
    .locals 12
    .param p0    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/video/MediaSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/util/Range;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/arch/core/util/Function<",
            "Landroidx/camera/video/internal/encoder/VideoEncoderConfig;",
            "Landroidx/camera/video/internal/encoder/VideoEncoderInfo;",
            ">;",
            "Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;",
            "Landroidx/camera/core/DynamicRange;",
            "Landroidx/camera/video/MediaSpec;",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/camera/video/internal/encoder/VideoEncoderInfo;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroidx/camera/core/DynamicRange;->isFullySpecified()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p3

    .line 10
    move-object/from16 v3, p4

    .line 11
    .line 12
    move-object v4, p2

    .line 13
    move-object/from16 v5, p5

    .line 14
    .line 15
    invoke-static/range {v0 .. v5}, Landroidx/camera/video/VideoCapture;->resolveVideoEncoderInfo(Landroidx/arch/core/util/Function;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;Landroidx/camera/video/MediaSpec;Landroid/util/Size;Landroidx/camera/core/DynamicRange;Landroid/util/Range;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    const/high16 v2, -0x80000000

    .line 30
    .line 31
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 42
    .line 43
    move-object v4, p2

    .line 44
    invoke-static {v3, p2}, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->isHdrSettingsMatched(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/DynamicRange;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    new-instance v10, Landroidx/camera/core/DynamicRange;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHdrFormat()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-static {v5}, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->videoProfileHdrFormatsToDynamicRangeEncoding(I)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-virtual {v3}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitDepth()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-static {v3}, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->videoProfileBitDepthToDynamicRangeBitDepth(I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-direct {v10, v5, v3}, Landroidx/camera/core/DynamicRange;-><init>(II)V

    .line 69
    .line 70
    .line 71
    move-object v6, p0

    .line 72
    move-object v7, p1

    .line 73
    move-object v8, p3

    .line 74
    move-object/from16 v9, p4

    .line 75
    .line 76
    move-object/from16 v11, p5

    .line 77
    .line 78
    invoke-static/range {v6 .. v11}, Landroidx/camera/video/VideoCapture;->resolveVideoEncoderInfo(Landroidx/arch/core/util/Function;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;Landroidx/camera/video/MediaSpec;Landroid/util/Size;Landroidx/camera/core/DynamicRange;Landroid/util/Range;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-nez v3, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-interface {v3}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedWidths()Landroid/util/Range;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    invoke-interface {v3}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedHeights()Landroid/util/Range;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    invoke-static {v5, v6}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(II)I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-le v5, v2, :cond_1

    .line 118
    .line 119
    move-object v1, v3

    .line 120
    move v2, v5

    .line 121
    goto :goto_0

    .line 122
    :cond_3
    return-object v1
.end method

.method private getCompensatedRotation(Landroidx/camera/core/impl/CameraInternal;)I
    .locals 3
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->isMirroringRequired(Landroidx/camera/core/impl/CameraInternal;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;Z)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-direct {p0}, Landroidx/camera/video/VideoCapture;->shouldCompensateTransformation()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/camera/video/VideoCapture;->mStreamInfo:Landroidx/camera/video/StreamInfo;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/camera/video/StreamInfo;->getInProgressTransformationInfo()Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->getRotationDegrees()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->isMirroring()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eq v0, v1, :cond_0

    .line 33
    .line 34
    neg-int v2, v2

    .line 35
    :cond_0
    sub-int/2addr p1, v2

    .line 36
    invoke-static {p1}, Landroidx/camera/core/impl/utils/TransformUtils;->within360(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    :cond_1
    return p1
.end method

.method private getMediaSpec()Landroidx/camera/video/MediaSpec;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->getOutput()Landroidx/camera/video/VideoOutput;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroidx/camera/video/VideoOutput;->getMediaSpec()Landroidx/camera/core/impl/Observable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Landroidx/camera/video/VideoCapture;->fetchObservableValue(Landroidx/camera/core/impl/Observable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/camera/video/MediaSpec;

    .line 15
    .line 16
    return-object v0
.end method

.method private getVideoCapabilities(Landroidx/camera/core/CameraInfo;)Landroidx/camera/video/VideoCapabilities;
    .locals 1
    .param p1    # Landroidx/camera/core/CameraInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->getOutput()Landroidx/camera/video/VideoOutput;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Landroidx/camera/video/VideoOutput;->getMediaCapabilities(Landroidx/camera/core/CameraInfo;)Landroidx/camera/video/VideoCapabilities;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private isCreateNodeNeeded(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/video/impl/VideoCaptureConfig;Landroid/graphics/Rect;Landroid/util/Size;)Z
    .locals 1
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/impl/VideoCaptureConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInternal;",
            "Landroidx/camera/video/impl/VideoCaptureConfig<",
            "*>;",
            "Landroid/graphics/Rect;",
            "Landroid/util/Size;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getEffect()Landroidx/camera/core/CameraEffect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/camera/video/VideoCapture;->shouldEnableSurfaceProcessingByConfig(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/video/impl/VideoCaptureConfig;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/camera/video/VideoCapture;->shouldEnableSurfaceProcessingByQuirk(Landroidx/camera/core/impl/CameraInternal;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-static {p3, p4}, Landroidx/camera/video/VideoCapture;->shouldCrop(Landroid/graphics/Rect;Landroid/util/Size;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, p1}, Landroidx/camera/video/VideoCapture;->shouldMirror(Landroidx/camera/core/impl/CameraInternal;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    invoke-direct {p0}, Landroidx/camera/video/VideoCapture;->shouldCompensateTransformation()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 41
    :goto_1
    return p1
.end method

.method private static synthetic lambda$adjustCropRectToValidSize$4(Landroid/graphics/Rect;Landroid/util/Size;Landroid/util/Size;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    sub-int/2addr p1, v1

    .line 23
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    add-int/2addr p1, v0

    .line 28
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    sub-int/2addr v0, v1

    .line 37
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    sub-int/2addr p2, p0

    .line 50
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    add-int/2addr p0, v0

    .line 55
    sub-int/2addr p1, p0

    .line 56
    return p1
.end method

.method private static synthetic lambda$createPipeline$0(Landroidx/camera/video/VideoCapture;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyReset()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$createPipeline$1(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/video/impl/VideoCaptureConfig;Landroidx/camera/core/impl/Timebase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/video/VideoCapture;->onAppEdgeInvalidated(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/video/impl/VideoCaptureConfig;Landroidx/camera/core/impl/Timebase;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$createPipeline$2(Landroidx/camera/core/impl/DeferrableSurface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/camera/video/VideoCapture;->clearPipeline()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic lambda$createPipeline$3(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->resetPipeline()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$setupSurfaceUpdateNotifier$5(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->isMainThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Surface update cancellation should only occur on main thread."

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroidx/camera/core/impl/SessionConfig$Builder;->removeCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private synthetic lambda$setupSurfaceUpdateNotifier$6(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "androidx.camera.video.VideoCapture.streamUpdate"

    .line 10
    .line 11
    invoke-virtual {p1, v1, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->addTag(Ljava/lang/String;Ljava/lang/Object;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Landroidx/camera/video/VideoCapture$2;

    .line 21
    .line 22
    invoke-direct {v3, p0, v0, p2, p1}, Landroidx/camera/video/VideoCapture$2;-><init>(Landroidx/camera/video/VideoCapture;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/impl/SessionConfig$Builder;)V

    .line 23
    .line 24
    .line 25
    new-instance v4, L뎹딜뒾땰땰두둔됨된둥뎽들뒉둣뒈땝돠뒤듐돠돶둘뒀딃듰둑도땁된돤땲둣둘땜됴딌듽듻딨돝둥뒷땫딌딜뒨뒾됴돳땯땠땔둡뒹둔땭땜돼땍뎠둔땜듰돛땄뒾땝듬돨땝딜땫땜둑둡따디뎰듼뒨되들뒼땟둠드뒋둬돶뎰땬됴됩됐딽든딀딄뎹땬득딠뒵땦따둥돨뎹뎨돤뒋둥땻듟뒾돛듟땩땳돵됨뎹딌땲디딨땔돵딌돵;

    .line 26
    .line 27
    const/16 v5, 0x10

    .line 28
    .line 29
    invoke-direct {v4, v0, v5, p1, v3}, L뎹딜뒾땰땰두둔됨된둥뎽들뒉둣뒈땝돠뒤듐돠돶둘뒀딃듰둑도땁된돤땲둣둘땜됴딌듽듻딨돝둥뒷땫딌딜뒨뒾됴돳땯땠땔둡뒹둔땭땜돼땍뎠둔땜듰돛땄뒾땝듬돨땝딜땫땜둑둡따디뎰듼뒨되들뒼땟둠드뒋둬돶뎰땬됴됩됐딽든딀딄뎹땬득딠뒵땦따둥돨뎹뎨돤뒋둥땻듟뒾돛듟땩땳돵됨뎹딌땲디딨땔돵딌돵;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v4, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->addCancellationListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v3}, Landroidx/camera/core/impl/SessionConfig$Builder;->addRepeatingCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/4 p2, 0x2

    .line 51
    new-array p2, p2, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object v1, p2, v2

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    aput-object p1, p2, v0

    .line 57
    .line 58
    const-string p1, "%s[0x%x]"

    .line 59
    .line 60
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method private onAppEdgeInvalidated(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/video/impl/VideoCaptureConfig;Landroidx/camera/core/impl/Timebase;)V
    .locals 1
    .param p1    # Landroidx/camera/core/processing/SurfaceEdge;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/video/impl/VideoCaptureConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/impl/Timebase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/processing/SurfaceEdge;",
            "Landroidx/camera/core/impl/CameraInternal;",
            "Landroidx/camera/video/impl/VideoCaptureConfig<",
            "TT;>;",
            "Landroidx/camera/core/impl/Timebase;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroidx/camera/core/processing/SurfaceEdge;->createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/SurfaceRequest;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Landroidx/camera/video/VideoCapture;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 12
    .line 13
    invoke-virtual {p3}, Landroidx/camera/video/impl/VideoCaptureConfig;->getVideoOutput()Landroidx/camera/video/VideoOutput;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p2, p0, Landroidx/camera/video/VideoCapture;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 18
    .line 19
    invoke-interface {p1, p2, p4}, Landroidx/camera/video/VideoOutput;->onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/camera/video/VideoCapture;->sendTransformationInfoIfReady()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private static resolveFrameRate(Landroidx/camera/core/impl/StreamSpec;)Landroid/util/Range;
    .locals 1
    .param p0    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/StreamSpec;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/impl/StreamSpec;->getExpectedFrameRateRange()Landroid/util/Range;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 6
    .line 7
    invoke-static {p0, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Landroidx/camera/video/VideoCapture$Defaults;->DEFAULT_FPS_RANGE:Landroid/util/Range;

    .line 14
    .line 15
    :cond_0
    return-object p0
.end method

.method private static resolveTimebase(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceProcessorNode;)Landroidx/camera/core/impl/Timebase;
    .locals 0
    .param p0    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/processing/SurfaceProcessorNode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->getHasTransform()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object p0, Landroidx/camera/core/impl/Timebase;->UPTIME:Landroidx/camera/core/impl/Timebase;

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInfoInternal;->getTimebase()Landroidx/camera/core/impl/Timebase;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_1
    return-object p0
.end method

.method private static resolveVideoEncoderInfo(Landroidx/arch/core/util/Function;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;Landroidx/camera/video/MediaSpec;Landroid/util/Size;Landroidx/camera/core/DynamicRange;Landroid/util/Range;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
    .locals 6
    .param p0    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/MediaSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/util/Range;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/arch/core/util/Function<",
            "Landroidx/camera/video/internal/encoder/VideoEncoderConfig;",
            "Landroidx/camera/video/internal/encoder/VideoEncoderInfo;",
            ">;",
            "Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;",
            "Landroidx/camera/video/MediaSpec;",
            "Landroid/util/Size;",
            "Landroidx/camera/core/DynamicRange;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/camera/video/internal/encoder/VideoEncoderInfo;"
        }
    .end annotation

    .line 1
    invoke-static {p2, p4, p1}, Landroidx/camera/video/internal/config/VideoConfigUtil;->resolveVideoMimeInfo(Landroidx/camera/video/MediaSpec;Landroidx/camera/core/DynamicRange;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;)Landroidx/camera/video/internal/config/VideoMimeInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/camera/core/impl/Timebase;->UPTIME:Landroidx/camera/core/impl/Timebase;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/camera/video/MediaSpec;->getVideoSpec()Landroidx/camera/video/VideoSpec;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    move-object v3, p3

    .line 12
    move-object v4, p4

    .line 13
    move-object v5, p5

    .line 14
    invoke-static/range {v0 .. v5}, Landroidx/camera/video/internal/config/VideoConfigUtil;->resolveVideoEncoderConfig(Landroidx/camera/video/internal/config/VideoMimeInfo;Landroidx/camera/core/impl/Timebase;Landroidx/camera/video/VideoSpec;Landroid/util/Size;Landroidx/camera/core/DynamicRange;Landroid/util/Range;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-interface {p0, p2}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const-string p0, "VideoCapture"

    .line 28
    .line 29
    const-string p1, "Can\'t find videoEncoderInfo"

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object p2

    .line 35
    :cond_0
    if-eqz p1, :cond_1

    .line 36
    .line 37
    new-instance p2, Landroid/util/Size;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->getDefaultVideoProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p3}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    invoke-virtual {p1}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->getDefaultVideoProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-direct {p2, p3, p1}, Landroid/util/Size;-><init>(II)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-static {p0, p2}, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->from(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;Landroid/util/Size;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method private sendTransformationInfoIfReady()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/camera/video/VideoCapture;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, v0}, Landroidx/camera/video/VideoCapture;->getCompensatedRotation(Landroidx/camera/core/impl/CameraInternal;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Landroidx/camera/video/VideoCapture;->mRotationDegrees:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getAppTargetRotation()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v0, v2}, Landroidx/camera/core/processing/SurfaceEdge;->updateTransformation(II)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private setupSurfaceUpdateNotifier(Landroidx/camera/core/impl/SessionConfig$Builder;Z)V
    .locals 2
    .param p1    # Landroidx/camera/core/impl/SessionConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->mSurfaceUpdateFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "VideoCapture"

    .line 13
    .line 14
    const-string v1, "A newer surface update is requested. Previous surface update cancelled."

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v0, L뎸땝딀둡뒷땅땯뎡듻땲땭돨듔뒈땩땤든둘득딝뒝땬듼땵뎻둡땲땨딝돨땍뎻딃땠땸땹듌듬뎽둣땪뒻딎뒤땃땵땃땫땬딻땄땲따듔딹뒛딠땩땨땃돛땤딹듟땻땫뒨듽딌딜딄땔땲땋둑됐딝땫땔돨땸땹든두땩딌됐득따땐돸듐됩듰뒻뒷돵뒤뎡땹됩둔땥땧들딨둣둣돴딨돰뒹됐돤됐뒬뒋땋딽딄딝될딁돶땬될딀땬딄땬;

    .line 20
    .line 21
    const/16 v1, 0x9

    .line 22
    .line 23
    invoke-direct {v0, p0, p1, v1}, L뎸땝딀둡뒷땅땯뎡듻땲땭돨듔뒈땩땤든둘득딝뒝땬듼땵뎻둡땲땨딝돨땍뎻딃땠땸땹듌듬뎽둣땪뒻딎뒤땃땵땃땫땬딻땄땲따듔딹뒛딠땩땨땃돛땤딹듟땻땫뒨듽딌딜딄땔땲땋둑됐딝땫땔돨땸땹든두땩딌됐득따땐돸듐됩듰뒻뒷돵뒤뎡땹됩둔땥땧들딨둣둣돴딨돰뒹됐돤됐뒬뒋땋딽딄딝될딁돶땬될딀땬딄땬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Landroidx/camera/video/VideoCapture;->mSurfaceUpdateFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 31
    .line 32
    new-instance v0, Landroidx/camera/video/VideoCapture$3;

    .line 33
    .line 34
    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/video/VideoCapture$3;-><init>(Landroidx/camera/video/VideoCapture;Lcom/google/common/util/concurrent/ListenableFuture;Z)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p1, v0, p2}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private shouldCompensateTransformation()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->mStreamInfo:Landroidx/camera/video/StreamInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/video/StreamInfo;->getInProgressTransformationInfo()Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method private static shouldCrop(Landroid/graphics/Rect;Landroid/util/Size;)Z
    .locals 2
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eq p1, p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method private static shouldEnableSurfaceProcessingByConfig(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/video/impl/VideoCaptureConfig;)Z
    .locals 0
    .param p0    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/video/impl/VideoCaptureConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/camera/video/VideoOutput;",
            ">(",
            "Landroidx/camera/core/impl/CameraInternal;",
            "Landroidx/camera/video/impl/VideoCaptureConfig<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->getHasTransform()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/camera/video/impl/VideoCaptureConfig;->isSurfaceProcessingForceEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method private static shouldEnableSurfaceProcessingByQuirk(Landroidx/camera/core/impl/CameraInternal;)Z
    .locals 1
    .param p0    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->getHasTransform()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, L땨둘듟뒵돶땬땀듰돸뒻딜뒵땰뎬뒘뒈뒼디땝돛땭땳딤땟든딀뎻뒘딎땬돰땃땯뒛땦뒤돨됨딁돛땬돸땭딻땪뎨된뒋돝듽돨됩딄된땭땔뒙딠뒵듽뒵됴딞땝됫뒘된딞듽들둡땲된딻뒻듨땩땱디뎽돷드딟딽땁뒷도땹돠돸듰딌땟땔땭돛땨뒼돤돸딞땝딐딁둡득뎨땧땟듨둠듌돵딠둡된득땐뒨돳듌뎡뒤뎡둬딤땝땫뎽땡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/impl/Quirks;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraQuirks()Landroidx/camera/core/impl/Quirks;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, L땨둘듟뒵돶땬땀듰돸뒻딜뒵땰뎬뒘뒈뒼디땝돛땭땳딤땟든딀뎻뒘딎땬돰땃땯뒛땦뒤돨됨딁돛땬돸땭딻땪뎨된뒋돝듽돨됩딄된땭땔뒙딠뒵듽뒵됴딞땝됫뒘된딞듽들둡땲된딻뒻듨땩땱디뎽돷드딟딽땁뒷도땹돠돸듰딌땟땔땭돛땨뒼돤돸딞땝딐딁둡득뎨땧땟듨둠듌돵딠둡된득땐뒨돳듌뎡뒤뎡둬딤땝땫뎽땡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/impl/Quirks;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method private shouldMirror(Landroidx/camera/core/impl/CameraInternal;)Z
    .locals 1
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->getHasTransform()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->isMirroringRequired(Landroidx/camera/core/impl/CameraInternal;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private updateCustomOrderedResolutionsByQuality(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig$Builder;)V
    .locals 9
    .param p1    # Landroidx/camera/core/impl/CameraInfoInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/UseCaseConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/VideoCapture;->getMediaSpec()Landroidx/camera/video/MediaSpec;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const-string v2, "Unable to update target resolution by null MediaSpec."

    .line 11
    .line 12
    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {p0, p1}, Landroidx/camera/video/VideoCapture;->getVideoCapabilities(Landroidx/camera/core/CameraInfo;)Landroidx/camera/video/VideoCapabilities;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v3, v2}, Landroidx/camera/video/VideoCapabilities;->getSupportedQualities(Landroidx/camera/core/DynamicRange;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const-string v6, "VideoCapture"

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    const-string p1, "Can\'t find any supported quality on the device."

    .line 36
    .line 37
    invoke-static {v6, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {v1}, Landroidx/camera/video/MediaSpec;->getVideoSpec()Landroidx/camera/video/VideoSpec;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Landroidx/camera/video/VideoSpec;->getQualitySelector()Landroidx/camera/video/QualitySelector;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v5, v0}, Landroidx/camera/video/QualitySelector;->getPrioritizedQualities(Ljava/util/List;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v8, "Found selectedQualities "

    .line 56
    .line 57
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v8, " by "

    .line 64
    .line 65
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v6, v5}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_3

    .line 83
    .line 84
    invoke-virtual {v4}, Landroidx/camera/video/VideoSpec;->getAspectRatio()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-static {v3, v2}, Landroidx/camera/video/QualitySelector;->getQualityToResolutionMap(Landroidx/camera/video/VideoCapabilities;Landroidx/camera/core/DynamicRange;)Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    new-instance v7, Landroidx/camera/video/QualityRatioToResolutionsTable;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    invoke-interface {p1, v8}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedResolutions(I)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {v7, p1, v5}, Landroidx/camera/video/QualityRatioToResolutionsTable;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 103
    .line 104
    .line 105
    new-instance p1, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-eqz v8, :cond_2

    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    check-cast v8, Landroidx/camera/video/Quality;

    .line 125
    .line 126
    invoke-virtual {v7, v8, v4}, Landroidx/camera/video/QualityRatioToResolutionsTable;->getResolutions(Landroidx/camera/video/Quality;I)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroidx/camera/video/impl/VideoCaptureConfig;

    .line 139
    .line 140
    move-object v4, p1

    .line 141
    invoke-static/range {v0 .. v5}, Landroidx/camera/video/VideoCapture;->filterOutEncoderUnsupportedResolutions(Landroidx/camera/video/impl/VideoCaptureConfig;Landroidx/camera/video/MediaSpec;Landroidx/camera/core/DynamicRange;Landroidx/camera/video/VideoCapabilities;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v1, "Set custom ordered resolutions = "

    .line 148
    .line 149
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v6, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_CUSTOM_ORDERED_RESOLUTIONS:Landroidx/camera/core/impl/Config$Option;

    .line 167
    .line 168
    invoke-interface {p2, v0, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 173
    .line 174
    const-string p2, "Unable to find supported quality by QualitySelector"

    .line 175
    .line 176
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p1
.end method

.method public static withOutput(Landroidx/camera/video/VideoOutput;)Landroidx/camera/video/VideoCapture;
    .locals 1
    .param p0    # Landroidx/camera/video/VideoOutput;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/camera/video/VideoOutput;",
            ">(TT;)",
            "Landroidx/camera/video/VideoCapture<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/video/VideoCapture$Builder;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/camera/video/VideoOutput;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/camera/video/VideoCapture$Builder;-><init>(Landroidx/camera/video/VideoOutput;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/camera/video/VideoCapture$Builder;->build()Landroidx/camera/video/VideoCapture;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/VideoCapture;->lambda$createPipeline$3(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroid/graphics/Rect;Landroid/util/Size;Landroid/util/Size;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/camera/video/VideoCapture;->lambda$adjustCropRectToValidSize$4(Landroid/graphics/Rect;Landroid/util/Size;Landroid/util/Size;)I

    move-result p0

    return p0
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/impl/DeferrableSurface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/VideoCapture;->lambda$createPipeline$2(Landroidx/camera/core/impl/DeferrableSurface;)V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/video/VideoCapture;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/video/VideoCapture;->lambda$createPipeline$0(Landroidx/camera/video/VideoCapture;)V

    return-void
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/camera/video/VideoCapture;->lambda$setupSurfaceUpdateNotifier$5(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/core/impl/CameraCaptureCallback;)V

    return-void
.end method

.method public static synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/VideoCapture;->lambda$setupSurfaceUpdateNotifier$6(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/video/impl/VideoCaptureConfig;Landroidx/camera/core/impl/Timebase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/video/VideoCapture;->lambda$createPipeline$1(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/video/impl/VideoCaptureConfig;Landroidx/camera/core/impl/Timebase;)V

    return-void
.end method


# virtual methods
.method public applyStreamInfoAndStreamSpecToSessionConfigBuilder(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/video/StreamInfo;Landroidx/camera/core/impl/StreamSpec;)V
    .locals 5
    .param p1    # Landroidx/camera/core/impl/SessionConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/StreamInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroidx/camera/video/StreamInfo;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, -0x1

    .line 8
    if-ne v0, v3, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p2}, Landroidx/camera/video/StreamInfo;->getStreamState()Landroidx/camera/video/StreamInfo$StreamState;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    sget-object v4, Landroidx/camera/video/StreamInfo$StreamState;->ACTIVE:Landroidx/camera/video/StreamInfo$StreamState;

    .line 18
    .line 19
    if-ne p2, v4, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_1
    if-eqz v0, :cond_3

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string p2, "Unexpected stream state, stream is error but active"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->clearSurfaces()Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-nez v0, :cond_5

    .line 43
    .line 44
    iget-object p3, p0, Landroidx/camera/video/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 45
    .line 46
    if-eqz p3, :cond_5

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, p3, p2, v0, v3}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;Ljava/lang/String;I)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    invoke-virtual {p1, p3, p2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addNonRepeatingSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 56
    .line 57
    .line 58
    :cond_5
    :goto_2
    invoke-direct {p0, p1, v1}, Landroidx/camera/video/VideoCapture;->setupSurfaceUpdateNotifier(Landroidx/camera/core/impl/SessionConfig$Builder;Z)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public getCameraEdge()Landroidx/camera/core/processing/SurfaceEdge;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->mCropRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultConfig(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 3
    .param p2    # Landroidx/camera/core/impl/UseCaseConfigFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/camera/core/impl/UseCaseConfigFactory;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/video/VideoCapture;->DEFAULT_CONFIG:Landroidx/camera/video/VideoCapture$Defaults;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/video/VideoCapture$Defaults;->getConfig()Landroidx/camera/video/impl/VideoCaptureConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-interface {p2, v1, v2}, Landroidx/camera/core/impl/UseCaseConfigFactory;->getConfig(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)Landroidx/camera/core/impl/Config;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/camera/video/VideoCapture$Defaults;->getConfig()Landroidx/camera/video/impl/VideoCaptureConfig;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p2, p1}, L둣땜뒹땲딠뒉됐듨딻땩둔됐뎬땻든뎠따돵땔둠뒀따땩뒹딃땔뒬뒀둔땨뎰땠땨든디땅뒷딄뒤땰된딤땦디딨듬딸드딹돠뒤뒬딸땟딨땳뒘돳돴됴도뒈딝뒀됐둥뒷뎰딃돠돳됫딸돴돼땟뒵딄든돝뒘두된돠뒤딠돶두땟땟땱땀땡되땟따땨딠뎹딸뎰딠됩듽됨뒛딄땄딟땮딨뎽딻땀땍뒝딅뒀돠둬뎠땳듨뒉딐된듽됐듰돛;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/Config;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :cond_0
    if-nez p2, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/camera/video/VideoCapture;->getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    return-object p1
.end method

.method public getDynamicRange()Landroidx/camera/core/DynamicRange;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroidx/camera/core/impl/ImageInputConfig;->hasDynamicRange()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Landroidx/camera/core/impl/ImageInputConfig;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Landroidx/camera/video/VideoCapture$Defaults;->DEFAULT_DYNAMIC_RANGE:Landroidx/camera/core/DynamicRange;

    .line 21
    .line 22
    :goto_0
    return-object v0
.end method

.method public getMirrorMode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getMirrorModeInternal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :cond_0
    return v0
.end method

.method public getNode()Landroidx/camera/core/processing/SurfaceProcessorNode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->mNode:Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOutput()Landroidx/camera/video/VideoOutput;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/camera/video/impl/VideoCaptureConfig;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/camera/video/impl/VideoCaptureConfig;->getVideoOutput()Landroidx/camera/video/VideoOutput;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getRotationDegrees()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/camera/video/VideoCapture;->mRotationDegrees:I

    .line 2
    .line 3
    return v0
.end method

.method public getSupportedEffectTargets()Ljava/util/Set;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public getSurfaceRequest()Landroidx/camera/core/SurfaceRequest;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getTargetFrameRate()Landroid/util/Range;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getTargetFrameRateInternal()Landroid/util/Range;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getTargetRotation()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getTargetRotationInternal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .locals 0
    .param p1    # Landroidx/camera/core/impl/Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Config;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/camera/video/VideoCapture$Builder;->fromConfig(Landroidx/camera/core/impl/Config;)Landroidx/camera/video/VideoCapture$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public isStreamIdChanged(II)Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/camera/video/StreamInfo;->NON_SURFACE_STREAM_ID:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    if-eq p1, p2, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method public isVideoStabilizationEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroidx/camera/core/impl/UseCaseConfig;->getVideoStabilizationMode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public onMergeConfig(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig$Builder;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 0
    .param p1    # Landroidx/camera/core/impl/CameraInfoInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/UseCaseConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;)",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/VideoCapture;->updateCustomOrderedResolutionsByQuality(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig$Builder;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onStateAttached()V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-super {p0}, Landroidx/camera/core/UseCase;->onStateAttached()V

    .line 4
    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v3, "VideoCapture#onStateAttached: cameraID = "

    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCameraId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "VideoCapture"

    .line 25
    .line 26
    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getAttachedStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Landroidx/camera/video/VideoCapture;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getAttachedStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroidx/camera/core/impl/StreamSpec;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->getOutput()Landroidx/camera/video/VideoOutput;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v3}, Landroidx/camera/video/VideoOutput;->getStreamInfo()Landroidx/camera/core/impl/Observable;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    sget-object v4, Landroidx/camera/video/StreamInfo;->STREAM_INFO_ANY_INACTIVE:Landroidx/camera/video/StreamInfo;

    .line 60
    .line 61
    invoke-static {v3, v4}, Landroidx/camera/video/VideoCapture;->fetchObservableValue(Landroidx/camera/core/impl/Observable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroidx/camera/video/StreamInfo;

    .line 66
    .line 67
    iput-object v3, p0, Landroidx/camera/video/VideoCapture;->mStreamInfo:Landroidx/camera/video/StreamInfo;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Landroidx/camera/video/impl/VideoCaptureConfig;

    .line 74
    .line 75
    invoke-direct {p0, v3, v2}, Landroidx/camera/video/VideoCapture;->createPipeline(Landroidx/camera/video/impl/VideoCaptureConfig;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iput-object v3, p0, Landroidx/camera/video/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 80
    .line 81
    iget-object v4, p0, Landroidx/camera/video/VideoCapture;->mStreamInfo:Landroidx/camera/video/StreamInfo;

    .line 82
    .line 83
    invoke-virtual {p0, v3, v4, v2}, Landroidx/camera/video/VideoCapture;->applyStreamInfoAndStreamSpecToSessionConfigBuilder(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/video/StreamInfo;Landroidx/camera/core/impl/StreamSpec;)V

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Landroidx/camera/video/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 87
    .line 88
    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    new-array v3, v1, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object v2, v3, v0

    .line 95
    .line 96
    new-instance v2, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .line 100
    .line 101
    aget-object v0, v3, v0

    .line 102
    .line 103
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->updateSessionConfig(Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyActive()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->getOutput()Landroidx/camera/video/VideoOutput;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-interface {v0}, Landroidx/camera/video/VideoOutput;->getStreamInfo()Landroidx/camera/core/impl/Observable;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget-object v2, p0, Landroidx/camera/video/VideoCapture;->mStreamInfoObserver:Landroidx/camera/core/impl/Observable$Observer;

    .line 132
    .line 133
    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/Observable;->addObserver(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->mSourceStreamRequirementObserver:Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;

    .line 137
    .line 138
    if-eqz v0, :cond_1

    .line 139
    .line 140
    invoke-virtual {v0}, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;->close()V

    .line 141
    .line 142
    .line 143
    :cond_1
    new-instance v0, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;

    .line 144
    .line 145
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCameraControl()Landroidx/camera/core/impl/CameraControlInternal;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-direct {v0, v1}, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;-><init>(Landroidx/camera/core/impl/CameraControlInternal;)V

    .line 150
    .line 151
    .line 152
    iput-object v0, p0, Landroidx/camera/video/VideoCapture;->mSourceStreamRequirementObserver:Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;

    .line 153
    .line 154
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->getOutput()Landroidx/camera/video/VideoOutput;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-interface {v0}, Landroidx/camera/video/VideoOutput;->isSourceStreamRequired()Landroidx/camera/core/impl/Observable;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    iget-object v2, p0, Landroidx/camera/video/VideoCapture;->mSourceStreamRequirementObserver:Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;

    .line 167
    .line 168
    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/Observable;->addObserver(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V

    .line 169
    .line 170
    .line 171
    sget-object v0, Landroidx/camera/video/VideoOutput$SourceState;->ACTIVE_NON_STREAMING:Landroidx/camera/video/VideoOutput$SourceState;

    .line 172
    .line 173
    invoke-virtual {p0, v0}, Landroidx/camera/video/VideoCapture;->setSourceState(Landroidx/camera/video/VideoOutput$SourceState;)V

    .line 174
    .line 175
    .line 176
    :cond_2
    :goto_0
    return-void
.end method

.method public onStateDetached()V
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    const-string v0, "VideoCapture#onStateDetached"

    .line 2
    .line 3
    const-string v1, "VideoCapture"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->isMainThread()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v2, "VideoCapture can only be detached on the main thread."

    .line 13
    .line 14
    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->mSourceStreamRequirementObserver:Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->getOutput()Landroidx/camera/video/VideoOutput;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Landroidx/camera/video/VideoOutput;->isSourceStreamRequired()Landroidx/camera/core/impl/Observable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v2, p0, Landroidx/camera/video/VideoCapture;->mSourceStreamRequirementObserver:Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;

    .line 30
    .line 31
    invoke-interface {v0, v2}, Landroidx/camera/core/impl/Observable;->removeObserver(Landroidx/camera/core/impl/Observable$Observer;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->mSourceStreamRequirementObserver:Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;->close()V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Landroidx/camera/video/VideoCapture;->mSourceStreamRequirementObserver:Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;

    .line 41
    .line 42
    :cond_0
    sget-object v0, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroidx/camera/video/VideoCapture;->setSourceState(Landroidx/camera/video/VideoOutput$SourceState;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->getOutput()Landroidx/camera/video/VideoOutput;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Landroidx/camera/video/VideoOutput;->getStreamInfo()Landroidx/camera/core/impl/Observable;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v2, p0, Landroidx/camera/video/VideoCapture;->mStreamInfoObserver:Landroidx/camera/core/impl/Observable$Observer;

    .line 56
    .line 57
    invoke-interface {v0, v2}, Landroidx/camera/core/impl/Observable;->removeObserver(Landroidx/camera/core/impl/Observable$Observer;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->mSurfaceUpdateFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    const-string v0, "VideoCapture is detached from the camera. Surface update cancelled."

    .line 72
    .line 73
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-direct {p0}, Landroidx/camera/video/VideoCapture;->clearPipeline()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public onSuggestedStreamSpecImplementationOptionsUpdated(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec;
    .locals 4
    .param p1    # Landroidx/camera/core/impl/Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Landroidx/camera/video/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 4
    .line 5
    invoke-virtual {v2, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Landroidx/camera/video/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-array v3, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    aput-object v2, v3, v0

    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    aget-object v0, v3, v0

    .line 24
    .line 25
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->updateSessionConfig(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getAttachedStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/camera/core/impl/StreamSpec;->toBuilder()Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/StreamSpec$Builder;->setImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec$Builder;->build()Landroidx/camera/core/impl/StreamSpec;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method public onSuggestedStreamSpecUpdated(Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/StreamSpec;
    .locals 3
    .param p1    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "onSuggestedStreamSpecUpdated: "

    .line 4
    .line 5
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "VideoCapture"

    .line 16
    .line 17
    invoke-static {v0, p2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroidx/camera/video/impl/VideoCaptureConfig;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {p2, v1}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/impl/ImageOutputConfig;Ljava/util/List;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "suggested resolution "

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, " is not in custom ordered resolutions "

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {v0, p2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-object p1
.end method

.method public resetPipeline()V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0}, Landroidx/camera/video/VideoCapture;->clearPipeline()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/camera/video/impl/VideoCaptureConfig;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getAttachedStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroidx/camera/core/impl/StreamSpec;

    .line 28
    .line 29
    invoke-direct {p0, v2, v3}, Landroidx/camera/video/VideoCapture;->createPipeline(Landroidx/camera/video/impl/VideoCaptureConfig;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iput-object v2, p0, Landroidx/camera/video/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/camera/video/VideoCapture;->mStreamInfo:Landroidx/camera/video/StreamInfo;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getAttachedStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {p0, v2, v3, v4}, Landroidx/camera/video/VideoCapture;->applyStreamInfoAndStreamSpecToSessionConfigBuilder(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/video/StreamInfo;Landroidx/camera/core/impl/StreamSpec;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Landroidx/camera/video/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-array v3, v1, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object v2, v3, v0

    .line 53
    .line 54
    new-instance v2, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .line 58
    .line 59
    aget-object v0, v3, v0

    .line 60
    .line 61
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->updateSessionConfig(Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyReset()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public setSourceState(Landroidx/camera/video/VideoOutput$SourceState;)V
    .locals 1
    .param p1    # Landroidx/camera/video/VideoOutput$SourceState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/camera/video/VideoCapture;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->getOutput()Landroidx/camera/video/VideoOutput;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Landroidx/camera/video/VideoOutput;->onSourceStateChanged(Landroidx/camera/video/VideoOutput$SourceState;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setTargetRotation(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->setTargetRotationInternal(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/camera/video/VideoCapture;->sendTransformationInfoIfReady()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setViewPortCropRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/camera/core/UseCase;->setViewPortCropRect(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/camera/video/VideoCapture;->sendTransformationInfoIfReady()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public shouldResetCompensatingTransformation(Landroidx/camera/video/StreamInfo;Landroidx/camera/video/StreamInfo;)Z
    .locals 1
    .param p1    # Landroidx/camera/video/StreamInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/StreamInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Landroidx/camera/video/VideoCapture;->mHasCompensatingTransformation:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/camera/video/StreamInfo;->getInProgressTransformationInfo()Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/camera/video/StreamInfo;->getInProgressTransformationInfo()Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VideoCapture:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
