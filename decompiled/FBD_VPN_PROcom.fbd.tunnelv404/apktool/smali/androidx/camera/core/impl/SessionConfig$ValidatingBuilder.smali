.class public final Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;
.super Landroidx/camera/core/impl/SessionConfig$BaseBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValidatingBuilder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ValidatingBuilder"


# instance fields
.field private mErrorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SessionConfig$ErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceSorter:Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;

.field private mTemplateSet:Z

.field private mValid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mSurfaceSorter:Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mValid:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mTemplateSet:Z

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mErrorListeners:Ljava/util/List;

    .line 23
    .line 24
    return-void
.end method

.method private getSurfaces()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mOutputConfigs:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig$OutputConfig;->getSurface()Landroidx/camera/core/impl/DeferrableSurface;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig$OutputConfig;->getSharedSurfaces()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Landroidx/camera/core/impl/DeferrableSurface;

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-object v0
.end method

.method private synthetic lambda$build$0(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mErrorListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/camera/core/impl/SessionConfig$ErrorListener;

    .line 18
    .line 19
    invoke-interface {v1, p1, p2}, Landroidx/camera/core/impl/SessionConfig$ErrorListener;->onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private setOrVerifyExpectFrameRateRange(Landroid/util/Range;)V
    .locals 2
    .param p1    # Landroid/util/Range;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->getExpectedFrameRateRange()Landroid/util/Range;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setExpectedFrameRateRange(Landroid/util/Range;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->getExpectedFrameRateRange()Landroid/util/Range;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mValid:Z

    .line 42
    .line 43
    const-string p1, "ValidatingBuilder"

    .line 44
    .line 45
    const-string v0, "Different ExpectedFrameRateRange values"

    .line 46
    .line 47
    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method private setPreviewStabilizationMode(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setPreviewStabilization(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private setVideoStabilizationMode(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setVideoStabilization(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->lambda$build$0(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method


# virtual methods
.method public add(Landroidx/camera/core/impl/SessionConfig;)V
    .locals 5
    .param p1    # Landroidx/camera/core/impl/SessionConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getRepeatingCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mTemplateSet:Z

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroidx/camera/core/impl/CaptureConfig$Builder;->getTemplateType()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v2, v3}, Landroidx/camera/core/impl/SessionConfig;->getHigherPriorityTemplateType(II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig;->getExpectedFrameRateRange()Landroid/util/Range;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {p0, v1}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->setOrVerifyExpectFrameRateRange(Landroid/util/Range;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig;->getPreviewStabilizationMode()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-direct {p0, v1}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->setPreviewStabilizationMode(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig;->getVideoStabilizationMode()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-direct {p0, v1}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->setVideoStabilizationMode(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getRepeatingCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object v2, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addAllTags(Landroidx/camera/core/impl/TagBundle;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mDeviceStateCallbacks:Ljava/util/List;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getDeviceStateCallbacks()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSessionStateCallbacks:Ljava/util/List;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getSessionStateCallbacks()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getRepeatingCameraCaptureCallbacks()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addAllCameraCaptureCallbacks(Ljava/util/Collection;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSingleCameraCaptureCallbacks:Ljava/util/List;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getSingleCameraCaptureCallbacks()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getErrorListener()Landroidx/camera/core/impl/SessionConfig$ErrorListener;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_1

    .line 109
    .line 110
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mErrorListeners:Ljava/util/List;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getErrorListener()Landroidx/camera/core/impl/SessionConfig$ErrorListener;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getInputConfiguration()Landroid/hardware/camera2/params/InputConfiguration;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_2

    .line 124
    .line 125
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getInputConfiguration()Landroid/hardware/camera2/params/InputConfiguration;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iput-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    .line 130
    .line 131
    :cond_2
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mOutputConfigs:Ljava/util/Set;

    .line 132
    .line 133
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getOutputConfigs()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 141
    .line 142
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->getSurfaces()Ljava/util/Set;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig;->getSurfaces()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 151
    .line 152
    .line 153
    invoke-direct {p0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->getSurfaces()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-object v2, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 158
    .line 159
    invoke-virtual {v2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->getSurfaces()Ljava/util/Set;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-interface {v1, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    const/4 v2, 0x0

    .line 168
    const-string v3, "ValidatingBuilder"

    .line 169
    .line 170
    if-nez v1, :cond_3

    .line 171
    .line 172
    const-string v1, "Invalid configuration due to capture request surfaces are not a subset of surfaces"

    .line 173
    .line 174
    invoke-static {v3, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iput-boolean v2, p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mValid:Z

    .line 178
    .line 179
    :cond_3
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getSessionType()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    iget v4, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSessionType:I

    .line 184
    .line 185
    if-eq v1, v4, :cond_4

    .line 186
    .line 187
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getSessionType()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_4

    .line 192
    .line 193
    iget v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSessionType:I

    .line 194
    .line 195
    if-eqz v1, :cond_4

    .line 196
    .line 197
    const-string v1, "Invalid configuration due to that two non-default session types are set"

    .line 198
    .line 199
    invoke-static {v3, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iput-boolean v2, p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mValid:Z

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_4
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getSessionType()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_5

    .line 210
    .line 211
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getSessionType()I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    iput v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSessionType:I

    .line 216
    .line 217
    :cond_5
    :goto_0
    invoke-static {p1}, Landroidx/camera/core/impl/SessionConfig;->access$000(Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-eqz v1, :cond_7

    .line 222
    .line 223
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mPostviewOutputConfig:Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    .line 224
    .line 225
    invoke-static {p1}, Landroidx/camera/core/impl/SessionConfig;->access$000(Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    if-eq v1, v4, :cond_6

    .line 230
    .line 231
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mPostviewOutputConfig:Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    .line 232
    .line 233
    if-eqz v1, :cond_6

    .line 234
    .line 235
    const-string p1, "Invalid configuration due to that two different postview output configs are set"

    .line 236
    .line 237
    invoke-static {v3, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iput-boolean v2, p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mValid:Z

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_6
    invoke-static {p1}, Landroidx/camera/core/impl/SessionConfig;->access$000(Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    iput-object p1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mPostviewOutputConfig:Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    .line 248
    .line 249
    :cond_7
    :goto_1
    iget-object p1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 250
    .line 251
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 256
    .line 257
    .line 258
    return-void
.end method

.method public addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/Config$Option;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/core/impl/Config$Option<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public build()Landroidx/camera/core/impl/SessionConfig;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mValid:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mOutputConfigs:Ljava/util/Set;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mSurfaceSorter:Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;->sort(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mErrorListeners:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    new-instance v0, L듻딸뎰뒼됫땯뒘듔디딅땠뒙둑득뒛딜땡뒛딤뒵땰돠땦딜땩듐땰돝둡뒼딜뎬뎨뒤돨땣땪뒐땡딐둡뎡뒋땥돠듟됨뒹땳돼듻뒹뎽땝뒋듰뒨딁도둡둬딃둔땧됐딝딻딻뎻뒤뎹듰둑뎰땁듽땫듐뒤된득땥딞땟땔뎡뒨땳땅딃듌둡뒬듽될땨땲뎹둠뎽돝뒷듽뒼딝듸땣둑돤뎡둣된뒐두딃돼딄뎬듽뒐땋둑돰땃됩듸드둑땃땳;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, p0, v1}, L듻딸뎰뒼됫땯뒘듔디딅땠뒙둑득뒛딜땡뒛딤뒵땰돠땦딜땩듐땰돝둡뒼딜뎬뎨뒤돨땣땪뒐땡딐둡뎡뒋땥돠듟됨뒹땳돼듻뒹뎽땝뒋듰뒨딁도둡둬딃둔땧됐딝딻딻뎻뒤뎹듰둑뎰땁듽땫듐뒤된득땥딞땟땔뎡뒨땳땅딃듌둡뒬듽될땨땲뎹둠뎽돝뒷듽뒼딝듸땣둑돤뎡둣된뒐두딃돼딄뎬듽뒐땋둑돰땃됩듸드둑땃땳;-><init>(Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    move-object v7, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    goto :goto_0

    .line 35
    :goto_1
    new-instance v0, Landroidx/camera/core/impl/SessionConfig;

    .line 36
    .line 37
    new-instance v3, Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mDeviceStateCallbacks:Ljava/util/List;

    .line 40
    .line 41
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 42
    .line 43
    .line 44
    new-instance v4, Ljava/util/ArrayList;

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSessionStateCallbacks:Ljava/util/List;

    .line 47
    .line 48
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    .line 50
    .line 51
    new-instance v5, Ljava/util/ArrayList;

    .line 52
    .line 53
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSingleCameraCaptureCallbacks:Ljava/util/List;

    .line 54
    .line 55
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    iget-object v8, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    .line 65
    .line 66
    iget v9, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSessionType:I

    .line 67
    .line 68
    iget-object v10, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mPostviewOutputConfig:Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    .line 69
    .line 70
    move-object v1, v0

    .line 71
    invoke-direct/range {v1 .. v10}, Landroidx/camera/core/impl/SessionConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/core/impl/CaptureConfig;Landroidx/camera/core/impl/SessionConfig$ErrorListener;Landroid/hardware/camera2/params/InputConfiguration;ILandroidx/camera/core/impl/SessionConfig$OutputConfig;)V

    .line 72
    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string v1, "Unsupported session configuration combination"

    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0
.end method

.method public clearSurfaces()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mOutputConfigs:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->clearSurfaces()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mTemplateSet:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mValid:Z

    .line 6
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
