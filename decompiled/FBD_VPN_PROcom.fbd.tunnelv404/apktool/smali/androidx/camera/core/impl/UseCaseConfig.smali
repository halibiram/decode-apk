.class public interface abstract Landroidx/camera/core/impl/UseCaseConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/internal/TargetConfig;
.implements Landroidx/camera/core/impl/ImageInputConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/UseCaseConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/camera/core/UseCase;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/camera/core/internal/TargetConfig<",
        "TT;>;",
        "Landroidx/camera/core/impl/ImageInputConfig;"
    }
.end annotation


# static fields
.field public static final OPTION_CAPTURE_CONFIG_UNPACKER:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTION_CAPTURE_TYPE:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTION_DEFAULT_CAPTURE_CONFIG:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTION_DEFAULT_SESSION_CONFIG:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroidx/camera/core/impl/SessionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTION_HIGH_RESOLUTION_DISABLED:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTION_PREVIEW_STABILIZATION_MODE:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTION_SESSION_CONFIG_UNPACKER:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTION_SURFACE_OCCUPANCY_PRIORITY:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTION_TARGET_FRAME_RATE:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final OPTION_VIDEO_STABILIZATION_MODE:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTION_ZSL_DISABLED:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "camerax.core.useCase.defaultSessionConfig"

    .line 2
    .line 3
    const-class v1, Landroidx/camera/core/impl/SessionConfig;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_DEFAULT_SESSION_CONFIG:Landroidx/camera/core/impl/Config$Option;

    .line 10
    .line 11
    const-string v0, "camerax.core.useCase.defaultCaptureConfig"

    .line 12
    .line 13
    const-class v1, Landroidx/camera/core/impl/CaptureConfig;

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_DEFAULT_CAPTURE_CONFIG:Landroidx/camera/core/impl/Config$Option;

    .line 20
    .line 21
    const-string v0, "camerax.core.useCase.sessionConfigUnpacker"

    .line 22
    .line 23
    const-class v1, Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_SESSION_CONFIG_UNPACKER:Landroidx/camera/core/impl/Config$Option;

    .line 30
    .line 31
    const-string v0, "camerax.core.useCase.captureConfigUnpacker"

    .line 32
    .line 33
    const-class v1, Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_CAPTURE_CONFIG_UNPACKER:Landroidx/camera/core/impl/Config$Option;

    .line 40
    .line 41
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    const-string v1, "camerax.core.useCase.surfaceOccupancyPriority"

    .line 44
    .line 45
    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sput-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_SURFACE_OCCUPANCY_PRIORITY:Landroidx/camera/core/impl/Config$Option;

    .line 50
    .line 51
    const-string v1, "camerax.core.useCase.targetFrameRate"

    .line 52
    .line 53
    const-class v2, Landroid/util/Range;

    .line 54
    .line 55
    invoke-static {v1, v2}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sput-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_TARGET_FRAME_RATE:Landroidx/camera/core/impl/Config$Option;

    .line 60
    .line 61
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 62
    .line 63
    const-string v2, "camerax.core.useCase.zslDisabled"

    .line 64
    .line 65
    invoke-static {v2, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    sput-object v2, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_ZSL_DISABLED:Landroidx/camera/core/impl/Config$Option;

    .line 70
    .line 71
    const-string v2, "camerax.core.useCase.highResolutionDisabled"

    .line 72
    .line 73
    invoke-static {v2, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    sput-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_HIGH_RESOLUTION_DISABLED:Landroidx/camera/core/impl/Config$Option;

    .line 78
    .line 79
    const-string v1, "camerax.core.useCase.captureType"

    .line 80
    .line 81
    const-class v2, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 82
    .line 83
    invoke-static {v1, v2}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    sput-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_CAPTURE_TYPE:Landroidx/camera/core/impl/Config$Option;

    .line 88
    .line 89
    const-string v1, "camerax.core.useCase.previewStabilizationMode"

    .line 90
    .line 91
    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sput-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_PREVIEW_STABILIZATION_MODE:Landroidx/camera/core/impl/Config$Option;

    .line 96
    .line 97
    const-string v1, "camerax.core.useCase.videoStabilizationMode"

    .line 98
    .line 99
    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_VIDEO_STABILIZATION_MODE:Landroidx/camera/core/impl/Config$Option;

    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public abstract getCaptureOptionUnpacker()Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getCaptureOptionUnpacker(Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;)Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;
    .param p1    # Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDefaultCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDefaultCaptureConfig(Landroidx/camera/core/impl/CaptureConfig;)Landroidx/camera/core/impl/CaptureConfig;
    .param p1    # Landroidx/camera/core/impl/CaptureConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getDefaultSessionConfig()Landroidx/camera/core/impl/SessionConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDefaultSessionConfig(Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/core/impl/SessionConfig;
    .param p1    # Landroidx/camera/core/impl/SessionConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getPreviewStabilizationMode()I
.end method

.method public abstract getSessionOptionUnpacker()Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSessionOptionUnpacker(Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;)Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;
    .param p1    # Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSurfaceOccupancyPriority()I
.end method

.method public abstract getSurfaceOccupancyPriority(I)I
.end method

.method public abstract getTargetFrameRate()Landroid/util/Range;
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
.end method

.method public abstract getTargetFrameRate(Landroid/util/Range;)Landroid/util/Range;
    .param p1    # Landroid/util/Range;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoStabilizationMode()I
.end method

.method public abstract isHighResolutionDisabled(Z)Z
.end method

.method public abstract isZslDisabled(Z)Z
.end method
