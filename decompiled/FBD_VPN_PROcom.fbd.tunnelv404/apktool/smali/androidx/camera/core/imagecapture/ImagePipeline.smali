.class public Landroidx/camera/core/imagecapture/ImagePipeline;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final EXIF_ROTATION_AVAILABILITY:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

.field static final JPEG_QUALITY_MAX_QUALITY:B = 0x64t

.field static final JPEG_QUALITY_MIN_LATENCY:B = 0x5ft

.field private static sNextRequestId:I


# instance fields
.field private final mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mCaptureNode:Landroidx/camera/core/imagecapture/CaptureNode;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mProcessingNode:Landroidx/camera/core/imagecapture/ProcessingNode;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mUseCaseConfig:Landroidx/camera/core/impl/ImageCaptureConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/core/imagecapture/ImagePipeline;->EXIF_ROTATION_AVAILABILITY:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)V
    .locals 7
    .param p1    # Landroidx/camera/core/impl/ImageCaptureConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v5, 0x0

    const/16 v6, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/imagecapture/ImagePipeline;-><init>(Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroidx/camera/core/CameraEffect;ZLandroid/util/Size;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroidx/camera/core/CameraEffect;Z)V
    .locals 7
    .param p1    # Landroidx/camera/core/impl/ImageCaptureConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/CameraEffect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v5, 0x0

    const/16 v6, 0x23

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/imagecapture/ImagePipeline;-><init>(Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroidx/camera/core/CameraEffect;ZLandroid/util/Size;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroidx/camera/core/CameraEffect;ZLandroid/util/Size;I)V
    .locals 14
    .param p1    # Landroidx/camera/core/impl/ImageCaptureConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/CameraEffect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/util/Size;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 5
    iput-object v1, v0, Landroidx/camera/core/imagecapture/ImagePipeline;->mUseCaseConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 6
    invoke-static {p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/CaptureConfig$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v3

    iput-object v3, v0, Landroidx/camera/core/imagecapture/ImagePipeline;->mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    .line 7
    new-instance v3, Landroidx/camera/core/imagecapture/CaptureNode;

    invoke-direct {v3}, Landroidx/camera/core/imagecapture/CaptureNode;-><init>()V

    iput-object v3, v0, Landroidx/camera/core/imagecapture/ImagePipeline;->mCaptureNode:Landroidx/camera/core/imagecapture/CaptureNode;

    .line 8
    new-instance v4, Landroidx/camera/core/imagecapture/ProcessingNode;

    .line 9
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->ioExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroidx/camera/core/impl/ImageCaptureConfig;->getIoExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_0

    .line 10
    new-instance v6, Landroidx/camera/core/processing/InternalImageProcessor;

    invoke-direct {v6, v2}, Landroidx/camera/core/processing/InternalImageProcessor;-><init>(Landroidx/camera/core/CameraEffect;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-direct {v4, v5, v6}, Landroidx/camera/core/imagecapture/ProcessingNode;-><init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/processing/InternalImageProcessor;)V

    iput-object v4, v0, Landroidx/camera/core/imagecapture/ImagePipeline;->mProcessingNode:Landroidx/camera/core/imagecapture/ProcessingNode;

    .line 11
    invoke-virtual {p1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getInputFormat()I

    move-result v8

    .line 12
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/ImagePipeline;->getOutputFormat()I

    move-result v9

    .line 13
    invoke-virtual {p1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getImageReaderProxyProvider()Landroidx/camera/core/ImageReaderProxyProvider;

    move-result-object v11

    move-object/from16 v7, p2

    move/from16 v10, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    .line 14
    invoke-static/range {v7 .. v13}, Landroidx/camera/core/imagecapture/CaptureNode$In;->of(Landroid/util/Size;IIZLandroidx/camera/core/ImageReaderProxyProvider;Landroid/util/Size;I)Landroidx/camera/core/imagecapture/CaptureNode$In;

    move-result-object v1

    iput-object v1, v0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    .line 15
    invoke-virtual {v3, v1}, Landroidx/camera/core/imagecapture/CaptureNode;->transform(Landroidx/camera/core/imagecapture/CaptureNode$In;)Landroidx/camera/core/imagecapture/ProcessingNode$In;

    move-result-object v1

    .line 16
    invoke-virtual {v4, v1}, Landroidx/camera/core/imagecapture/ProcessingNode;->transform(Landroidx/camera/core/imagecapture/ProcessingNode$In;)Ljava/lang/Void;

    return-void
.end method

.method private createCameraRequest(ILandroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/TakePictureCallback;)Landroidx/camera/core/imagecapture/CameraRequest;
    .locals 6
    .param p2    # Landroidx/camera/core/impl/CaptureBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/imagecapture/TakePictureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/imagecapture/TakePictureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p2}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    check-cast p2, Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroidx/camera/core/impl/CaptureStage;

    .line 38
    .line 39
    new-instance v3, Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 40
    .line 41
    invoke-direct {v3}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v4, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    .line 45
    .line 46
    invoke-virtual {v4}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    .line 51
    .line 52
    .line 53
    iget-object v4, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    .line 54
    .line 55
    invoke-virtual {v4}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getSessionConfigCameraCaptureCallbacks()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addAllCameraCaptureCallbacks(Ljava/util/Collection;)V

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    .line 70
    .line 71
    invoke-virtual {v4}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getSurface()Landroidx/camera/core/impl/DeferrableSurface;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/ImagePipeline;->shouldEnablePostview()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setPostviewEnabled(Z)V

    .line 83
    .line 84
    .line 85
    iget-object v4, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    .line 86
    .line 87
    invoke-virtual {v4}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getInputFormat()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-static {v4}, Landroidx/camera/core/internal/utils/ImageUtil;->isJpegFormats(I)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_1

    .line 96
    .line 97
    sget-object v4, Landroidx/camera/core/imagecapture/ImagePipeline;->EXIF_ROTATION_AVAILABILITY:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    .line 98
    .line 99
    invoke-virtual {v4}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;->isRotationOptionSupported()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_0

    .line 104
    .line 105
    sget-object v4, Landroidx/camera/core/impl/CaptureConfig;->OPTION_ROTATION:Landroidx/camera/core/impl/Config$Option;

    .line 106
    .line 107
    invoke-virtual {p3}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getRotationDegrees()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v3, v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_0
    sget-object v4, Landroidx/camera/core/impl/CaptureConfig;->OPTION_JPEG_QUALITY:Landroidx/camera/core/impl/Config$Option;

    .line 119
    .line 120
    invoke-virtual {p0, p3}, Landroidx/camera/core/imagecapture/ImagePipeline;->getCameraRequestJpegQuality(Landroidx/camera/core/imagecapture/TakePictureRequest;)I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v3, v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    invoke-interface {v2}, Landroidx/camera/core/impl/CaptureStage;->getCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v4}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v2}, Landroidx/camera/core/impl/CaptureStage;->getId()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v3, v1, v2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addTag(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setId(I)V

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    .line 157
    .line 158
    invoke-virtual {v2}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v3, v2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_2
    new-instance p1, Landroidx/camera/core/imagecapture/CameraRequest;

    .line 175
    .line 176
    invoke-direct {p1, v0, p4}, Landroidx/camera/core/imagecapture/CameraRequest;-><init>(Ljava/util/List;Landroidx/camera/core/imagecapture/TakePictureCallback;)V

    .line 177
    .line 178
    .line 179
    return-object p1
.end method

.method private createCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mUseCaseConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 2
    .line 3
    invoke-static {}, Landroidx/camera/core/CaptureBundles;->singleDefaultCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    check-cast v0, Landroidx/camera/core/impl/CaptureBundle;

    .line 15
    .line 16
    return-object v0
.end method

.method private createProcessingRequest(ILandroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/TakePictureCallback;Lcom/google/common/util/concurrent/ListenableFuture;)Landroidx/camera/core/imagecapture/ProcessingRequest;
    .locals 11
    .param p2    # Landroidx/camera/core/impl/CaptureBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/imagecapture/TakePictureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/imagecapture/TakePictureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/camera/core/impl/CaptureBundle;",
            "Landroidx/camera/core/imagecapture/TakePictureRequest;",
            "Landroidx/camera/core/imagecapture/TakePictureCallback;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;)",
            "Landroidx/camera/core/imagecapture/ProcessingRequest;"
        }
    .end annotation

    .line 1
    new-instance v10, Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getOutputFileOptions()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {p3}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getCropRect()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {p3}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getRotationDegrees()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual {p3}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getJpegQuality()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual {p3}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getSensorToBufferTransform()Landroid/graphics/Matrix;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    move-object v0, v10

    .line 24
    move-object v1, p2

    .line 25
    move-object v7, p4

    .line 26
    move-object/from16 v8, p5

    .line 27
    .line 28
    move v9, p1

    .line 29
    invoke-direct/range {v0 .. v9}, Landroidx/camera/core/imagecapture/ProcessingRequest;-><init>(Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/ImageCapture$OutputFileOptions;Landroid/graphics/Rect;IILandroid/graphics/Matrix;Landroidx/camera/core/imagecapture/TakePictureCallback;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    .line 30
    .line 31
    .line 32
    return-object v10
.end method

.method private getOutputFormat()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mUseCaseConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_BUFFER_FORMAT:Landroidx/camera/core/impl/Config$Option;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v1, v2}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Integer;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mUseCaseConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 23
    .line 24
    sget-object v1, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, v2}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Integer;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/16 v1, 0x1005

    .line 42
    .line 43
    if-ne v0, v1, :cond_1

    .line 44
    .line 45
    return v1

    .line 46
    :cond_1
    const/16 v0, 0x100

    .line 47
    .line 48
    return v0
.end method

.method private shouldEnablePostview()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getPostviewSurface()Landroidx/camera/core/impl/DeferrableSurface;

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


# virtual methods
.method public close()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mCaptureNode:Landroidx/camera/core/imagecapture/CaptureNode;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/CaptureNode;->release()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mProcessingNode:Landroidx/camera/core/imagecapture/ProcessingNode;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/ProcessingNode;->release()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public createRequests(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/TakePictureCallback;Lcom/google/common/util/concurrent/ListenableFuture;)Landroidx/core/util/Pair;
    .locals 8
    .param p1    # Landroidx/camera/core/imagecapture/TakePictureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/imagecapture/TakePictureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/imagecapture/TakePictureRequest;",
            "Landroidx/camera/core/imagecapture/TakePictureCallback;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;)",
            "Landroidx/core/util/Pair<",
            "Landroidx/camera/core/imagecapture/CameraRequest;",
            "Landroidx/camera/core/imagecapture/ProcessingRequest;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/ImagePipeline;->createCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    sget v1, Landroidx/camera/core/imagecapture/ImagePipeline;->sNextRequestId:I

    .line 9
    .line 10
    add-int/lit8 v0, v1, 0x1

    .line 11
    .line 12
    sput v0, Landroidx/camera/core/imagecapture/ImagePipeline;->sNextRequestId:I

    .line 13
    .line 14
    new-instance v6, Landroidx/core/util/Pair;

    .line 15
    .line 16
    invoke-direct {p0, v1, v2, p1, p2}, Landroidx/camera/core/imagecapture/ImagePipeline;->createCameraRequest(ILandroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/TakePictureCallback;)Landroidx/camera/core/imagecapture/CameraRequest;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    move-object v0, p0

    .line 21
    move-object v3, p1

    .line 22
    move-object v4, p2

    .line 23
    move-object v5, p3

    .line 24
    invoke-direct/range {v0 .. v5}, Landroidx/camera/core/imagecapture/ImagePipeline;->createProcessingRequest(ILandroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/TakePictureCallback;Lcom/google/common/util/concurrent/ListenableFuture;)Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v6, v7, p1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-object v6
.end method

.method public createSessionConfigBuilder(Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mUseCaseConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getSurface()Landroidx/camera/core/impl/DeferrableSurface;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->addNonRepeatingSurface(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getPostviewSurface()Landroidx/camera/core/impl/DeferrableSurface;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getPostviewSurface()Landroidx/camera/core/impl/DeferrableSurface;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->setPostviewSurface(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-object p1
.end method

.method public expectsMetadata()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mCaptureNode:Landroidx/camera/core/imagecapture/CaptureNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/CaptureNode;->getSafeCloseImageReaderProxy()Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getImageReaderProxy()Landroidx/camera/core/impl/ImageReaderProxy;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Landroidx/camera/core/MetadataImageReader;

    .line 12
    .line 13
    return v0
.end method

.method public getCameraRequestJpegQuality(Landroidx/camera/core/imagecapture/TakePictureRequest;)I
    .locals 3
    .param p1    # Landroidx/camera/core/imagecapture/TakePictureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getOnDiskCallback()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

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
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getCropRect()Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getSize()Landroid/util/Size;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v1, v2}, Landroidx/camera/core/impl/utils/TransformUtils;->hasCropping(Landroid/graphics/Rect;Landroid/util/Size;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getCaptureMode()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    const/16 p1, 0x64

    .line 35
    .line 36
    return p1

    .line 37
    :cond_1
    const/16 p1, 0x5f

    .line 38
    .line 39
    return p1

    .line 40
    :cond_2
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getJpegQuality()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method public getCapacity()I
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mCaptureNode:Landroidx/camera/core/imagecapture/CaptureNode;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/CaptureNode;->getCapacity()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getCaptureNode()Landroidx/camera/core/imagecapture/CaptureNode;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mCaptureNode:Landroidx/camera/core/imagecapture/CaptureNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPostviewSize()Landroid/util/Size;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getPostviewSize()Landroid/util/Size;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getProcessingNode()Landroidx/camera/core/imagecapture/ProcessingNode;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mProcessingNode:Landroidx/camera/core/imagecapture/ProcessingNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public notifyCaptureError(Landroidx/camera/core/imagecapture/TakePictureManager$CaptureError;)V
    .locals 1
    .param p1    # Landroidx/camera/core/imagecapture/TakePictureManager$CaptureError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getErrorEdge()Landroidx/camera/core/processing/Edge;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroidx/camera/core/processing/Edge;->accept(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V
    .locals 1
    .param p1    # Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mCaptureNode:Landroidx/camera/core/imagecapture/CaptureNode;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/CaptureNode;->setOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public submitProcessingRequest(Landroidx/camera/core/imagecapture/ProcessingRequest;)V
    .locals 1
    .param p1    # Landroidx/camera/core/imagecapture/ProcessingRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getRequestEdge()Landroidx/camera/core/processing/Edge;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroidx/camera/core/processing/Edge;->accept(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
