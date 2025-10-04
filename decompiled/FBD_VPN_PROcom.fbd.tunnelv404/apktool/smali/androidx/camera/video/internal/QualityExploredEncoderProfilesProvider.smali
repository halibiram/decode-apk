.class public Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/EncoderProfilesProvider;


# instance fields
.field private final mBaseEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

.field private final mCameraSupportedResolutions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final mDynamicRangeToCapabilitiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/core/DynamicRange;",
            "Landroidx/camera/video/CapabilitiesByQuality;",
            ">;"
        }
    .end annotation
.end field

.field private final mEncoderProfilesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/EncoderProfilesProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetDynamicRanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/core/DynamicRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetQualities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/video/Quality;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoEncoderInfoFinder:Landroidx/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/util/Function<",
            "Landroidx/camera/video/internal/encoder/VideoEncoderConfig;",
            "Landroidx/camera/video/internal/encoder/VideoEncoderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Landroidx/arch/core/util/Function;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/EncoderProfilesProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/EncoderProfilesProvider;",
            "Ljava/util/Collection<",
            "Landroidx/camera/video/Quality;",
            ">;",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/DynamicRange;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/util/Size;",
            ">;",
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
    iput-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mDynamicRangeToCapabilitiesMap:Ljava/util/Map;

    .line 17
    .line 18
    invoke-static {p3}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->checkFullySpecifiedOrThrow(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mBaseEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 22
    .line 23
    new-instance p1, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mTargetQualities:Ljava/util/Set;

    .line 29
    .line 30
    new-instance p1, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mTargetDynamicRanges:Ljava/util/Set;

    .line 36
    .line 37
    new-instance p1, Ljava/util/HashSet;

    .line 38
    .line 39
    invoke-direct {p1, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mCameraSupportedResolutions:Ljava/util/Set;

    .line 43
    .line 44
    iput-object p5, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mVideoEncoderInfoFinder:Landroidx/arch/core/util/Function;

    .line 45
    .line 46
    return-void
.end method

.method private static checkFullySpecifiedOrThrow(Ljava/util/Collection;)V
    .locals 3
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/DynamicRange;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/camera/core/DynamicRange;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/camera/core/DynamicRange;->isFullySpecified()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Contains non-fully specified DynamicRange: "

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_1
    return-void
.end method

.method private exploreProfiles(Landroidx/camera/video/Quality$ConstantQuality;)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 11
    .param p1    # Landroidx/camera/video/Quality$ConstantQuality;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mTargetQualities:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mBaseEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/camera/video/Quality$ConstantQuality;->getValue()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-interface {v0, v1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1}, Landroidx/camera/video/Quality$ConstantQuality;->getTypicalSizes()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_7

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/util/Size;

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mCameraSupportedResolutions:Ljava/util/Set;

    .line 41
    .line 42
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v2, Ljava/util/TreeMap;

    .line 50
    .line 51
    new-instance v3, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    .line 52
    .line 53
    invoke-direct {v3}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 57
    .line 58
    .line 59
    new-instance v3, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mTargetDynamicRanges:Ljava/util/Set;

    .line 65
    .line 66
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_6

    .line 75
    .line 76
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Landroidx/camera/core/DynamicRange;

    .line 81
    .line 82
    invoke-static {v0, v5}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->hasMatchedVideoProfileForDynamicRange(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-direct {p0, v5}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->getCapabilitiesByQualityFor(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v5, v1}, Landroidx/camera/video/CapabilitiesByQuality;->findNearestHigherSupportedEncoderProfilesFor(Landroid/util/Size;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    if-nez v5, :cond_4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    invoke-virtual {v5}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->getDefaultVideoProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-static {v6}, Landroidx/camera/video/internal/config/VideoConfigUtil;->toVideoEncoderConfig(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    iget-object v8, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mVideoEncoderInfoFinder:Landroidx/arch/core/util/Function;

    .line 109
    .line 110
    invoke-interface {v8, v7}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    check-cast v7, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 115
    .line 116
    if-eqz v7, :cond_2

    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    invoke-interface {v7, v8, v9}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->isSizeSupportedAllowSwapping(II)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-nez v8, :cond_5

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    new-instance v8, Landroid/util/Size;

    .line 134
    .line 135
    invoke-virtual {v6}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getWidth()I

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    invoke-virtual {v6}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHeight()I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v8, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    invoke-interface {v7}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedBitrateRange()Landroid/util/Range;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-static {v6, v1, v5}, Landroidx/camera/video/internal/utils/EncoderProfilesUtil;->deriveVideoProfile(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroid/util/Size;Landroid/util/Range;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-nez v4, :cond_0

    .line 166
    .line 167
    invoke-static {v1, v2}, Landroidx/camera/core/internal/utils/SizeUtil;->findNearestHigherFor(Landroid/util/Size;Ljava/util/TreeMap;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 172
    .line 173
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getDefaultDurationSeconds()I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getAudioProfiles()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {v0, v1, p1, v3}, Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;->create(IILjava/util/List;Ljava/util/List;)Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    return-object p1

    .line 193
    :cond_7
    const/4 p1, 0x0

    .line 194
    return-object p1
.end method

.method private findQualityInTargetQualities(I)Landroidx/camera/video/Quality$ConstantQuality;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mTargetQualities:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/camera/video/Quality;

    .line 18
    .line 19
    check-cast v1, Landroidx/camera/video/Quality$ConstantQuality;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/camera/video/Quality$ConstantQuality;->getValue()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ne v2, p1, :cond_0

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method private getCapabilitiesByQualityFor(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;
    .locals 2
    .param p1    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mDynamicRangeToCapabilitiesMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mDynamicRangeToCapabilitiesMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/camera/video/CapabilitiesByQuality;

    .line 16
    .line 17
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    new-instance v0, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mBaseEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 24
    .line 25
    invoke-direct {v0, v1, p1}, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/DynamicRange;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Landroidx/camera/video/CapabilitiesByQuality;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Landroidx/camera/video/CapabilitiesByQuality;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mDynamicRangeToCapabilitiesMap:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-object v1
.end method

.method private getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mBaseEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->findQualityInTargetQualities(I)Landroidx/camera/video/Quality$ConstantQuality;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-direct {p0, v0}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->hasMatchedVideoProfileForAllTargetDynamicRanges(Landroidx/camera/core/impl/EncoderProfilesProxy;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    invoke-direct {p0, v1}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->exploreProfiles(Landroidx/camera/video/Quality$ConstantQuality;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mergeEncoderProfiles(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/impl/EncoderProfilesProxy;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_1
    iget-object v1, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method private hasMatchedVideoProfileForAllTargetDynamicRanges(Landroidx/camera/core/impl/EncoderProfilesProxy;)Z
    .locals 3
    .param p1    # Landroidx/camera/core/impl/EncoderProfilesProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mTargetDynamicRanges:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroidx/camera/core/DynamicRange;

    .line 22
    .line 23
    invoke-static {p1, v2}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->hasMatchedVideoProfileForDynamicRange(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    const/4 p1, 0x1

    .line 31
    return p1
.end method

.method private static hasMatchedVideoProfileForDynamicRange(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;)Z
    .locals 2
    .param p0    # Landroidx/camera/core/impl/EncoderProfilesProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 24
    .line 25
    invoke-static {v1, p1}, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->isHdrSettingsMatched(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/DynamicRange;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_2
    return v0
.end method

.method private static mergeEncoderProfiles(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/impl/EncoderProfilesProxy;)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 4
    .param p0    # Landroidx/camera/core/impl/EncoderProfilesProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/impl/EncoderProfilesProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getDefaultDurationSeconds()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getDefaultDurationSeconds()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :goto_0
    if-eqz p0, :cond_2

    .line 19
    .line 20
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_1
    if-eqz p0, :cond_3

    .line 30
    .line 31
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getAudioProfiles()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getAudioProfiles()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    if-eqz p0, :cond_4

    .line 46
    .line 47
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    .line 53
    .line 54
    :cond_4
    if-eqz p1, :cond_5

    .line 55
    .line 56
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    :cond_5
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;->create(IILjava/util/List;Ljava/util/List;)Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method


# virtual methods
.method public getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hasProfile(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method
