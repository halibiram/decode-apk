.class public final Landroidx/camera/video/RecorderVideoCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/VideoCapabilities;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mCapabilitiesMapForFullySpecifiedDynamicRange:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/core/DynamicRange;",
            "Landroidx/camera/video/CapabilitiesByQuality;",
            ">;"
        }
    .end annotation
.end field

.field private final mCapabilitiesMapForNonFullySpecifiedDynamicRange:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/core/DynamicRange;",
            "Landroidx/camera/video/CapabilitiesByQuality;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsStabilizationSupported:Z

.field private final mProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;


# direct methods
.method public constructor <init>(ILandroidx/camera/core/impl/CameraInfoInternal;Landroidx/arch/core/util/Function;)V
    .locals 9
    .param p2    # Landroidx/camera/core/impl/CameraInfoInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            "Landroidx/arch/core/util/Function<",
            "Landroidx/camera/video/internal/encoder/VideoEncoderConfig;",
            "Landroidx/camera/video/internal/encoder/VideoEncoderInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mCapabilitiesMapForFullySpecifiedDynamicRange:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mCapabilitiesMapForNonFullySpecifiedDynamicRange:Ljava/util/Map;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 27
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v3, "Not a supported video capabilities source: "

    .line 30
    .line 31
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p2}, Landroidx/camera/core/impl/CameraInfoInternal;->getEncoderProfilesProvider()Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    new-instance v4, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;

    .line 53
    .line 54
    invoke-direct {v4, v1, v2, p2, p3}, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/impl/Quirks;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/arch/core/util/Function;)V

    .line 55
    .line 56
    .line 57
    if-ne p1, v0, :cond_2

    .line 58
    .line 59
    new-instance p1, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;

    .line 60
    .line 61
    invoke-static {}, Landroidx/camera/video/Quality;->getSortedQualities()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    sget-object v0, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    .line 66
    .line 67
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const/16 v0, 0x22

    .line 72
    .line 73
    invoke-interface {p2, v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedResolutions(I)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    move-object v3, p1

    .line 78
    move-object v8, p3

    .line 79
    invoke-direct/range {v3 .. v8}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Landroidx/arch/core/util/Function;)V

    .line 80
    .line 81
    .line 82
    move-object v4, p1

    .line 83
    :cond_2
    new-instance p1, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;

    .line 84
    .line 85
    invoke-direct {p1, v4, v2}, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/impl/Quirks;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p2}, Landroidx/camera/video/RecorderVideoCapabilities;->isHlg10SupportedByCamera(Landroidx/camera/core/impl/CameraInfoInternal;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    new-instance v0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;

    .line 95
    .line 96
    invoke-direct {v0, p1, p3}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/arch/core/util/Function;)V

    .line 97
    .line 98
    .line 99
    move-object p1, v0

    .line 100
    :cond_3
    new-instance p3, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;

    .line 101
    .line 102
    invoke-direct {p3, p1, p2, v2}, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/Quirks;)V

    .line 103
    .line 104
    .line 105
    iput-object p3, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 106
    .line 107
    invoke-interface {p2}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedDynamicRanges()Ljava/util/Set;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    if-eqz p3, :cond_5

    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    check-cast p3, Landroidx/camera/core/DynamicRange;

    .line 126
    .line 127
    new-instance v0, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;

    .line 128
    .line 129
    iget-object v1, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 130
    .line 131
    invoke-direct {v0, v1, p3}, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/DynamicRange;)V

    .line 132
    .line 133
    .line 134
    new-instance v1, Landroidx/camera/video/CapabilitiesByQuality;

    .line 135
    .line 136
    invoke-direct {v1, v0}, Landroidx/camera/video/CapabilitiesByQuality;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Landroidx/camera/video/CapabilitiesByQuality;->getSupportedQualities()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_4

    .line 148
    .line 149
    iget-object v0, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mCapabilitiesMapForFullySpecifiedDynamicRange:Ljava/util/Map;

    .line 150
    .line 151
    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_5
    invoke-interface {p2}, Landroidx/camera/core/impl/CameraInfoInternal;->isVideoStabilizationSupported()Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    iput-boolean p1, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mIsStabilizationSupported:Z

    .line 160
    .line 161
    return-void
.end method

.method private generateCapabilitiesForNonFullySpecifiedDynamicRange(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;
    .locals 2
    .param p1    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/RecorderVideoCapabilities;->getSupportedDynamicRanges()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Landroidx/camera/core/impl/DynamicRanges;->canResolve(Landroidx/camera/core/DynamicRange;Ljava/util/Set;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    new-instance v0, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 16
    .line 17
    invoke-direct {v0, v1, p1}, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/DynamicRange;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroidx/camera/video/CapabilitiesByQuality;

    .line 21
    .line 22
    invoke-direct {p1, v0}, Landroidx/camera/video/CapabilitiesByQuality;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method private getCapabilities(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;
    .locals 2
    .param p1    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->isFullySpecified()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mCapabilitiesMapForFullySpecifiedDynamicRange:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/camera/video/CapabilitiesByQuality;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mCapabilitiesMapForNonFullySpecifiedDynamicRange:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mCapabilitiesMapForNonFullySpecifiedDynamicRange:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroidx/camera/video/CapabilitiesByQuality;

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    invoke-direct {p0, p1}, Landroidx/camera/video/RecorderVideoCapabilities;->generateCapabilitiesForNonFullySpecifiedDynamicRange(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mCapabilitiesMapForNonFullySpecifiedDynamicRange:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method private static isHlg10SupportedByCamera(Landroidx/camera/core/impl/CameraInfoInternal;)Z
    .locals 3
    .param p0    # Landroidx/camera/core/impl/CameraInfoInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedDynamicRanges()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/camera/core/DynamicRange;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x3

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    const/16 v1, 0xa

    .line 45
    .line 46
    if-ne v0, v1, :cond_0

    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    return p0

    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    return p0
.end method


# virtual methods
.method public findNearestHigherSupportedEncoderProfilesFor(Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;
    .locals 0
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Landroidx/camera/video/RecorderVideoCapabilities;->getCapabilities(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/camera/video/CapabilitiesByQuality;->findNearestHigherSupportedEncoderProfilesFor(Landroid/util/Size;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    return-object p1
.end method

.method public findNearestHigherSupportedQualityFor(Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/Quality;
    .locals 0
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Landroidx/camera/video/RecorderVideoCapabilities;->getCapabilities(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    sget-object p1, Landroidx/camera/video/Quality;->NONE:Landroidx/camera/video/Quality;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/camera/video/CapabilitiesByQuality;->findNearestHigherSupportedQualityFor(Landroid/util/Size;)Landroidx/camera/video/Quality;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    return-object p1
.end method

.method public getProfiles(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;
    .locals 0
    .param p1    # Landroidx/camera/video/Quality;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Landroidx/camera/video/RecorderVideoCapabilities;->getCapabilities(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/camera/video/CapabilitiesByQuality;->getProfiles(Landroidx/camera/video/Quality;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    return-object p1
.end method

.method public getSupportedDynamicRanges()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/core/DynamicRange;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mCapabilitiesMapForFullySpecifiedDynamicRange:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSupportedQualities(Landroidx/camera/core/DynamicRange;)Ljava/util/List;
    .locals 0
    .param p1    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/DynamicRange;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/video/Quality;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/RecorderVideoCapabilities;->getCapabilities(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/video/CapabilitiesByQuality;->getSupportedQualities()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1
.end method

.method public isQualitySupported(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Z
    .locals 0
    .param p1    # Landroidx/camera/video/Quality;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Landroidx/camera/video/RecorderVideoCapabilities;->getCapabilities(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroidx/camera/video/CapabilitiesByQuality;->isQualitySupported(Landroidx/camera/video/Quality;)Z

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

.method public isStabilizationSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mIsStabilizationSupported:Z

    .line 2
    .line 3
    return v0
.end method
