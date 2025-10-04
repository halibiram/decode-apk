.class public Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# static fields
.field private static final MOTO_C_FRONT_CAM_ID:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getExtraEncoderProfilesForMotoC(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/arch/core/util/Function;)Ljava/util/Map;
    .locals 5
    .param p1    # Landroidx/camera/core/impl/CameraInfoInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/EncoderProfilesProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            "Landroidx/camera/core/impl/EncoderProfilesProvider;",
            "Landroidx/arch/core/util/Function<",
            "Landroidx/camera/video/internal/encoder/VideoEncoderConfig;",
            "Landroidx/camera/video/internal/encoder/VideoEncoderInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/EncoderProfilesProxy;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "1"

    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    const/4 p1, 0x4

    .line 15
    invoke-interface {p2, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->hasProfile(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x1

    .line 23
    invoke-interface {p2, v1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p2}, Landroidx/camera/video/internal/utils/EncoderProfilesUtil;->getFirstVideoProfile(Landroidx/camera/core/impl/EncoderProfilesProxy;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    invoke-static {v2, p3}, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;->getSupportedBitrateRange(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/arch/core/util/Function;)Landroid/util/Range;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    sget-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_480P:Landroid/util/Size;

    .line 39
    .line 40
    invoke-static {v2, v0, p3}, Landroidx/camera/video/internal/utils/EncoderProfilesUtil;->deriveVideoProfile(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroid/util/Size;Landroid/util/Range;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-interface {p2}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getDefaultDurationSeconds()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-interface {p2}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-interface {p2}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getAudioProfiles()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-static {v3, v4, p2, p3}, Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;->create(IILjava/util/List;Ljava/util/List;)Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    new-instance p3, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    new-instance p1, Landroid/util/Size;

    .line 77
    .line 78
    invoke-virtual {v2}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getWidth()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-virtual {v2}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHeight()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-direct {p1, v3, v2}, Landroid/util/Size;-><init>(II)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-static {p1}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-le v0, p1, :cond_2

    .line 98
    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_2
    return-object p3

    .line 107
    :cond_3
    :goto_0
    return-object v0
.end method

.method private static getSupportedBitrateRange(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/arch/core/util/Function;)Landroid/util/Range;
    .locals 0
    .param p0    # Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;",
            "Landroidx/arch/core/util/Function<",
            "Landroidx/camera/video/internal/encoder/VideoEncoderConfig;",
            "Landroidx/camera/video/internal/encoder/VideoEncoderInfo;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/camera/video/internal/config/VideoConfigUtil;->toVideoEncoderConfig(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p1, p0}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedBitrateRange()Landroid/util/Range;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p0, Landroidx/camera/video/VideoSpec;->BITRATE_RANGE_AUTO:Landroid/util/Range;

    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method private static isMotoC()Z
    .locals 2

    .line 1
    const-string v0, "motorola"

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "moto c"

    .line 12
    .line 13
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public static load()Z
    .locals 1

    .line 1
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;->isMotoC()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method


# virtual methods
.method public getExtraEncoderProfiles(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/arch/core/util/Function;)Ljava/util/Map;
    .locals 1
    .param p1    # Landroidx/camera/core/impl/CameraInfoInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/EncoderProfilesProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            "Landroidx/camera/core/impl/EncoderProfilesProvider;",
            "Landroidx/arch/core/util/Function<",
            "Landroidx/camera/video/internal/encoder/VideoEncoderConfig;",
            "Landroidx/camera/video/internal/encoder/VideoEncoderInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/EncoderProfilesProxy;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;->isMotoC()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;->getExtraEncoderProfilesForMotoC(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/arch/core/util/Function;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
