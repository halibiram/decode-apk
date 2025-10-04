.class final Landroidx/camera/camera2/internal/SupportedSurfaceCombination;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/OptIn;
    markerClass = {
        Landroidx/camera/camera2/interop/ExperimentalCamera2Interop;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;,
        Landroidx/camera/camera2/internal/SupportedSurfaceCombination$Api23Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SupportedSurfaceCombination"


# instance fields
.field private final mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

.field private final mCameraId:Ljava/lang/String;

.field private final mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

.field private final mConcurrentSurfaceCombinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayInfoManager:Landroidx/camera/camera2/internal/DisplayInfoManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mDynamicRangeResolver:Landroidx/camera/camera2/internal/DynamicRangeResolver;

.field private final mExtraSupportedSurfaceCombinationsContainer:Landroidx/camera/camera2/internal/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;

.field private final mFeatureSettingsToSupportedCombinationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHardwareLevel:I

.field private mIsBurstCaptureSupported:Z

.field private mIsConcurrentCameraModeSupported:Z

.field private mIsPreviewStabilizationSupported:Z

.field private mIsRawSupported:Z

.field private mIsStreamUseCaseSupported:Z

.field private mIsUltraHighResolutionSensorSupported:Z

.field private final mPreviewStabilizationSurfaceCombinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolutionCorrector:Landroidx/camera/camera2/internal/compat/workaround/ResolutionCorrector;

.field private final mSurfaceCombinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceCombinations10Bit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceCombinationsStreamUseCase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceCombinationsUltraHdr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mSurfaceSizeDefinitionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetAspectRatio:Landroidx/camera/camera2/internal/compat/workaround/TargetAspectRatio;

.field private final mUltraHighSurfaceCombinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/camera/camera2/internal/compat/CameraManagerCompat;Landroidx/camera/camera2/internal/CamcorderProfileHelper;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/camera2/internal/compat/CameraManagerCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/camera2/internal/CamcorderProfileHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mUltraHighSurfaceCombinations:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mConcurrentSurfaceCombinations:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mPreviewStabilizationSurfaceCombinations:Ljava/util/List;

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mFeatureSettingsToSupportedCombinationsMap:Ljava/util/Map;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations10Bit:Ljava/util/List;

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinationsUltraHdr:Ljava/util/List;

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinationsStreamUseCase:Ljava/util/List;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsRawSupported:Z

    .line 62
    .line 63
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsBurstCaptureSupported:Z

    .line 64
    .line 65
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsConcurrentCameraModeSupported:Z

    .line 66
    .line 67
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsStreamUseCaseSupported:Z

    .line 68
    .line 69
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsUltraHighResolutionSensorSupported:Z

    .line 70
    .line 71
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsPreviewStabilizationSupported:Z

    .line 72
    .line 73
    new-instance v1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinitionFormats:Ljava/util/List;

    .line 79
    .line 80
    new-instance v1, Landroidx/camera/camera2/internal/compat/workaround/TargetAspectRatio;

    .line 81
    .line 82
    invoke-direct {v1}, Landroidx/camera/camera2/internal/compat/workaround/TargetAspectRatio;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mTargetAspectRatio:Landroidx/camera/camera2/internal/compat/workaround/TargetAspectRatio;

    .line 86
    .line 87
    new-instance v1, Landroidx/camera/camera2/internal/compat/workaround/ResolutionCorrector;

    .line 88
    .line 89
    invoke-direct {v1}, Landroidx/camera/camera2/internal/compat/workaround/ResolutionCorrector;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mResolutionCorrector:Landroidx/camera/camera2/internal/compat/workaround/ResolutionCorrector;

    .line 93
    .line 94
    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    check-cast p2, Ljava/lang/String;

    .line 99
    .line 100
    iput-object p2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {p4}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p4

    .line 106
    check-cast p4, Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 107
    .line 108
    iput-object p4, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 109
    .line 110
    new-instance p4, Landroidx/camera/camera2/internal/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;

    .line 111
    .line 112
    invoke-direct {p4}, Landroidx/camera/camera2/internal/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object p4, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mExtraSupportedSurfaceCombinationsContainer:Landroidx/camera/camera2/internal/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;

    .line 116
    .line 117
    invoke-static {p1}, Landroidx/camera/camera2/internal/DisplayInfoManager;->getInstance(Landroid/content/Context;)Landroidx/camera/camera2/internal/DisplayInfoManager;

    .line 118
    .line 119
    .line 120
    move-result-object p4

    .line 121
    iput-object p4, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mDisplayInfoManager:Landroidx/camera/camera2/internal/DisplayInfoManager;

    .line 122
    .line 123
    :try_start_0
    invoke-virtual {p3, p2}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->getCameraCharacteristicsCompat(Ljava/lang/String;)Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    iput-object p2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 128
    .line 129
    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 130
    .line 131
    invoke-virtual {p2, p3}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    check-cast p3, Ljava/lang/Integer;

    .line 136
    .line 137
    if-eqz p3, :cond_0

    .line 138
    .line 139
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    goto :goto_0

    .line 144
    :catch_0
    move-exception p1

    .line 145
    goto/16 :goto_3

    .line 146
    .line 147
    :cond_0
    const/4 p3, 0x2

    .line 148
    :goto_0
    iput p3, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mHardwareLevel:I
    :try_end_0
    .catch Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 151
    .line 152
    invoke-virtual {p2, p3}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    check-cast p2, [I

    .line 157
    .line 158
    if-eqz p2, :cond_4

    .line 159
    .line 160
    array-length p3, p2

    .line 161
    :goto_1
    if-ge v0, p3, :cond_4

    .line 162
    .line 163
    aget p4, p2, v0

    .line 164
    .line 165
    const/4 v1, 0x3

    .line 166
    const/4 v2, 0x1

    .line 167
    if-ne p4, v1, :cond_1

    .line 168
    .line 169
    iput-boolean v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsRawSupported:Z

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_1
    const/4 v1, 0x6

    .line 173
    if-ne p4, v1, :cond_2

    .line 174
    .line 175
    iput-boolean v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsBurstCaptureSupported:Z

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 179
    .line 180
    const/16 v3, 0x1f

    .line 181
    .line 182
    if-lt v1, v3, :cond_3

    .line 183
    .line 184
    const/16 v1, 0x10

    .line 185
    .line 186
    if-ne p4, v1, :cond_3

    .line 187
    .line 188
    iput-boolean v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsUltraHighResolutionSensorSupported:Z

    .line 189
    .line 190
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_4
    new-instance p2, Landroidx/camera/camera2/internal/DynamicRangeResolver;

    .line 194
    .line 195
    iget-object p3, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 196
    .line 197
    invoke-direct {p2, p3}, Landroidx/camera/camera2/internal/DynamicRangeResolver;-><init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V

    .line 198
    .line 199
    .line 200
    iput-object p2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mDynamicRangeResolver:Landroidx/camera/camera2/internal/DynamicRangeResolver;

    .line 201
    .line 202
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generateSupportedCombinationList()V

    .line 203
    .line 204
    .line 205
    iget-boolean p3, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsUltraHighResolutionSensorSupported:Z

    .line 206
    .line 207
    if-eqz p3, :cond_5

    .line 208
    .line 209
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generateUltraHighSupportedCombinationList()V

    .line 210
    .line 211
    .line 212
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    const-string p3, "android.hardware.camera.concurrent"

    .line 217
    .line 218
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsConcurrentCameraModeSupported:Z

    .line 223
    .line 224
    if-eqz p1, :cond_6

    .line 225
    .line 226
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generateConcurrentSupportedCombinationList()V

    .line 227
    .line 228
    .line 229
    :cond_6
    invoke-virtual {p2}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->is10BitDynamicRangeSupported()Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-eqz p1, :cond_7

    .line 234
    .line 235
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generate10BitSupportedCombinationList()V

    .line 236
    .line 237
    .line 238
    :cond_7
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->isUltraHdrSupported()Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    if-eqz p1, :cond_8

    .line 243
    .line 244
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generateUltraHdrSupportedCombinationList()V

    .line 245
    .line 246
    .line 247
    :cond_8
    iget-object p1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 248
    .line 249
    invoke-static {p1}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->isStreamUseCaseSupported(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Z

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsStreamUseCaseSupported:Z

    .line 254
    .line 255
    if-eqz p1, :cond_9

    .line 256
    .line 257
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generateStreamUseCaseSupportedCombinationList()V

    .line 258
    .line 259
    .line 260
    :cond_9
    iget-object p1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 261
    .line 262
    invoke-static {p1}, Landroidx/camera/camera2/internal/VideoStabilizationUtil;->isPreviewStabilizationSupported(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Z

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsPreviewStabilizationSupported:Z

    .line 267
    .line 268
    if-eqz p1, :cond_a

    .line 269
    .line 270
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generatePreviewStabilizationSupportedCombinationList()V

    .line 271
    .line 272
    .line 273
    :cond_a
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generateSurfaceSizeDefinition()V

    .line 274
    .line 275
    .line 276
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->checkCustomization()V

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :goto_3
    invoke-static {p1}, Landroidx/camera/camera2/internal/CameraUnavailableExceptionHelper;->createFrom(Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;)Landroidx/camera/core/CameraUnavailableException;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    throw p1
.end method

.method private checkCustomization()V
    .locals 0

    return-void
.end method

.method private static compareIntersectingRanges(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)Landroid/util/Range;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-double v0, v0

    .line 10
    invoke-virtual {p2, p0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    int-to-double v2, p0

    .line 19
    invoke-static {p2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    int-to-double v4, p0

    .line 24
    div-double v4, v2, v4

    .line 25
    .line 26
    invoke-static {p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    int-to-double v6, p0

    .line 31
    div-double v6, v0, v6

    .line 32
    .line 33
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 34
    .line 35
    cmpl-double p0, v2, v0

    .line 36
    .line 37
    if-lez p0, :cond_1

    .line 38
    .line 39
    cmpl-double p0, v4, v8

    .line 40
    .line 41
    if-gez p0, :cond_0

    .line 42
    .line 43
    cmpl-double p0, v4, v6

    .line 44
    .line 45
    if-ltz p0, :cond_4

    .line 46
    .line 47
    :cond_0
    return-object p2

    .line 48
    :cond_1
    if-nez p0, :cond_3

    .line 49
    .line 50
    cmpl-double p0, v4, v6

    .line 51
    .line 52
    if-lez p0, :cond_2

    .line 53
    .line 54
    return-object p2

    .line 55
    :cond_2
    if-nez p0, :cond_4

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-le p0, v0, :cond_4

    .line 78
    .line 79
    return-object p2

    .line 80
    :cond_3
    cmpg-double p0, v6, v8

    .line 81
    .line 82
    if-gez p0, :cond_4

    .line 83
    .line 84
    cmpl-double p0, v4, v6

    .line 85
    .line 86
    if-lez p0, :cond_4

    .line 87
    .line 88
    return-object p2

    .line 89
    :cond_4
    return-object p1
.end method

.method private createFeatureSettings(ILjava/util/Map;ZZ)Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;
    .locals 3
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/DynamicRange;",
            ">;ZZ)",
            "Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRequiredMaxBitDepth(Ljava/util/Map;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const-string v0, " camera mode."

    .line 6
    .line 7
    const-string v1, "Camera device id is "

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    if-nez p4, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    iget-object p3, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1}, Landroidx/camera/core/impl/CameraMode;->toLabelString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p3, ". Ultra HDR is not currently supported in "

    .line 31
    .line 32
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p2

    .line 49
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 50
    .line 51
    const/16 v2, 0xa

    .line 52
    .line 53
    if-eq p2, v2, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    iget-object p3, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p1}, Landroidx/camera/core/impl/CameraMode;->toLabelString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance p4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p3, ". 10 bit dynamic range is not currently supported in "

    .line 73
    .line 74
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p2

    .line 91
    :cond_3
    :goto_1
    invoke-static {p1, p2, p3, p4}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;->of(IIZZ)Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1
.end method

.method private filterSupportedSizes(Ljava/util/Map;Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Landroid/util/Range;)Ljava/util/Map;
    .locals 10
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/Range;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;",
            "Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_4

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroidx/camera/core/impl/UseCaseConfig;

    .line 25
    .line 26
    new-instance v3, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v4, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_3

    .line 51
    .line 52
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Landroid/util/Size;

    .line 57
    .line 58
    invoke-interface {v2}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-virtual {p2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    invoke-virtual {p0, v7}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-static {v8, v7, v6, v9}, Landroidx/camera/core/impl/SurfaceConfig;->transformSurfaceConfig(IILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {v8}, Landroidx/camera/core/impl/SurfaceConfig;->getConfigSize()Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    if-eqz p3, :cond_1

    .line 79
    .line 80
    iget-object v9, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 81
    .line 82
    invoke-static {v9, v7, v6}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getMaxFrameRate(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;ILandroid/util/Size;)I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    goto :goto_2

    .line 87
    :cond_1
    const v7, 0x7fffffff

    .line 88
    .line 89
    .line 90
    :goto_2
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    check-cast v9, Ljava/util/Set;

    .line 95
    .line 96
    if-nez v9, :cond_2

    .line 97
    .line 98
    new-instance v9, Ljava/util/HashSet;

    .line 99
    .line 100
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-nez v8, :cond_0

    .line 115
    .line 116
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-interface {v9, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    return-object v0
.end method

.method private generate10BitSupportedCombinationList()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations10Bit:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {}, Landroidx/camera/camera2/internal/GuaranteedConfigurationsUtil;->get10BitSupportedCombinationList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private generateConcurrentSupportedCombinationList()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mConcurrentSurfaceCombinations:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {}, Landroidx/camera/camera2/internal/GuaranteedConfigurationsUtil;->getConcurrentSupportedCombinationList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private generatePreviewStabilizationSupportedCombinationList()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mPreviewStabilizationSurfaceCombinations:Ljava/util/List;

    .line 8
    .line 9
    invoke-static {}, Landroidx/camera/camera2/internal/GuaranteedConfigurationsUtil;->getPreviewStabilizationSupportedCombinationList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private generateStreamUseCaseSupportedCombinationList()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinationsStreamUseCase:Ljava/util/List;

    .line 8
    .line 9
    invoke-static {}, Landroidx/camera/camera2/internal/GuaranteedConfigurationsUtil;->getStreamUseCaseSupportedCombinationList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private generateSupportedCombinationList()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    .line 2
    .line 3
    iget v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mHardwareLevel:I

    .line 4
    .line 5
    iget-boolean v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsRawSupported:Z

    .line 6
    .line 7
    iget-boolean v3, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsBurstCaptureSupported:Z

    .line 8
    .line 9
    invoke-static {v1, v2, v3}, Landroidx/camera/camera2/internal/GuaranteedConfigurationsUtil;->generateSupportedCombinationList(IZZ)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mExtraSupportedSurfaceCombinationsContainer:Landroidx/camera/camera2/internal/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroidx/camera/camera2/internal/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;->get(Ljava/lang/String;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private generateSurfaceSizeDefinition()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mDisplayInfoManager:Landroidx/camera/camera2/internal/DisplayInfoManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/DisplayInfoManager;->getPreviewSize()Landroid/util/Size;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRecordSize()Landroid/util/Size;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    sget-object v1, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_VGA:Landroid/util/Size;

    .line 12
    .line 13
    new-instance v2, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v4, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v6, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v7, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static/range {v1 .. v7}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->create(Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 38
    .line 39
    return-void
.end method

.method private generateUltraHdrSupportedCombinationList()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinationsUltraHdr:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {}, Landroidx/camera/camera2/internal/GuaranteedConfigurationsUtil;->getUltraHdrSupportedCombinationList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private generateUltraHighSupportedCombinationList()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mUltraHighSurfaceCombinations:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {}, Landroidx/camera/camera2/internal/GuaranteedConfigurationsUtil;->getUltraHighResolutionSupportedCombinationList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private getAllPossibleSizeArrangements(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x1

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    mul-int v2, v2, v3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-eqz v2, :cond_5

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    :goto_1
    if-ge v4, v2, :cond_1

    .line 36
    .line 37
    new-instance v5, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    div-int v4, v2, v4

    .line 59
    .line 60
    move v6, v2

    .line 61
    const/4 v5, 0x0

    .line 62
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-ge v5, v7, :cond_4

    .line 67
    .line 68
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    check-cast v7, Ljava/util/List;

    .line 73
    .line 74
    const/4 v8, 0x0

    .line 75
    :goto_3
    if-ge v8, v2, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    check-cast v9, Ljava/util/List;

    .line 82
    .line 83
    rem-int v10, v8, v6

    .line 84
    .line 85
    div-int/2addr v10, v4

    .line 86
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    check-cast v10, Landroid/util/Size;

    .line 91
    .line 92
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    add-int/lit8 v8, v8, 0x1

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    sub-int/2addr v7, v1

    .line 103
    if-ge v5, v7, :cond_3

    .line 104
    .line 105
    add-int/lit8 v6, v5, 0x1

    .line 106
    .line 107
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    check-cast v6, Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    div-int v6, v4, v6

    .line 118
    .line 119
    move v11, v6

    .line 120
    move v6, v4

    .line 121
    move v4, v11

    .line 122
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    return-object v0

    .line 126
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    const-string v0, "Failed to find supported resolutions."

    .line 129
    .line 130
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1
.end method

.method private getClosestSupportedDeviceFrameRate(Landroid/util/Range;I)Landroid/util/Range;
    .locals 8
    .param p1    # Landroid/util/Range;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    sget-object v0, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 14
    .line 15
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, [Landroid/util/Range;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    new-instance v2, Landroid/util/Range;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v2, v3, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 65
    .line 66
    .line 67
    array-length p1, v1

    .line 68
    const/4 v3, 0x0

    .line 69
    const/4 v4, 0x0

    .line 70
    :goto_0
    if-ge v3, p1, :cond_9

    .line 71
    .line 72
    aget-object v5, v1, v3

    .line 73
    .line 74
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    check-cast v6, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-lt p2, v6, :cond_8

    .line 85
    .line 86
    sget-object v6, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 87
    .line 88
    invoke-virtual {v0, v6}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_2

    .line 93
    .line 94
    move-object v0, v5

    .line 95
    :cond_2
    invoke-virtual {v5, v2}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_3

    .line 100
    .line 101
    move-object v0, v5

    .line 102
    goto :goto_5

    .line 103
    :cond_3
    :try_start_0
    invoke-virtual {v5, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-static {v6}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-nez v4, :cond_4

    .line 112
    .line 113
    move v4, v6

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    if-lt v6, v4, :cond_5

    .line 116
    .line 117
    invoke-static {v2, v0, v5}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->compareIntersectingRanges(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)Landroid/util/Range;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-static {v6}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    .line 126
    .line 127
    .line 128
    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_5
    move-object v5, v0

    .line 130
    goto :goto_1

    .line 131
    :catch_0
    nop

    .line 132
    goto :goto_2

    .line 133
    :goto_1
    move-object v0, v5

    .line 134
    goto :goto_4

    .line 135
    :goto_2
    if-nez v4, :cond_8

    .line 136
    .line 137
    invoke-static {v5, v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    invoke-static {v0, v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-ge v6, v7, :cond_6

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_6
    invoke-static {v5, v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    invoke-static {v0, v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-ne v6, v7, :cond_8

    .line 157
    .line 158
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    check-cast v6, Ljava/lang/Integer;

    .line 163
    .line 164
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    check-cast v7, Ljava/lang/Integer;

    .line 173
    .line 174
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-le v6, v7, :cond_7

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    invoke-static {v5}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    invoke-static {v0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    if-ge v6, v7, :cond_8

    .line 190
    .line 191
    :goto_3
    goto :goto_1

    .line 192
    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_9
    :goto_5
    return-object v0

    .line 196
    :cond_a
    :goto_6
    sget-object p1, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 197
    .line 198
    return-object p1
.end method

.method public static getMaxFrameRate(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;ILandroid/util/Size;)I
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    long-to-double p0, p0

    .line 14
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    div-double/2addr v0, p0

    .line 20
    double-to-int p0, v0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
.end method

.method private getMaxOutputSizeByFormat(Landroid/hardware/camera2/params/StreamConfigurationMap;IZ)Landroid/util/Size;
    .locals 5

    .line 1
    const/16 v0, 0x22

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    const-class v0, Landroid/graphics/SurfaceTexture;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    if-eqz v0, :cond_3

    .line 17
    .line 18
    array-length v1, v0

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    new-instance v1, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    .line 23
    .line 24
    invoke-direct {v1}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/util/Size;

    .line 36
    .line 37
    sget-object v2, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_ZERO:Landroid/util/Size;

    .line 38
    .line 39
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v4, 0x17

    .line 42
    .line 43
    if-lt v3, v4, :cond_2

    .line 44
    .line 45
    if-eqz p3, :cond_2

    .line 46
    .line 47
    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$Api23Impl;->getHighResolutionOutputSizes(Landroid/hardware/camera2/params/StreamConfigurationMap;I)[Landroid/util/Size;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    array-length p2, p1

    .line 54
    if-lez p2, :cond_2

    .line 55
    .line 56
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    move-object v2, p1

    .line 65
    check-cast v2, Landroid/util/Size;

    .line 66
    .line 67
    :cond_2
    const/4 p1, 0x2

    .line 68
    new-array p1, p1, [Landroid/util/Size;

    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    aput-object v0, p1, p2

    .line 72
    .line 73
    const/4 p2, 0x1

    .line 74
    aput-object v2, p1, p2

    .line 75
    .line 76
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/util/Size;

    .line 85
    .line 86
    return-object p1

    .line 87
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 88
    return-object p1
.end method

.method private getMaxSupportedFpsFromAttachedSurfaces(Ljava/util/List;)I
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const v0, 0x7fffffff

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getImageFormat()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getSize()Landroid/util/Size;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {p0, v0, v2, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedMaximumFps(IILandroid/util/Size;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return v0
.end method

.method private static getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    const-string v1, "Ranges must not intersect"

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-le v0, v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    sub-int/2addr p0, p1

    .line 76
    return p0

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    sub-int/2addr p1, p0

    .line 98
    return p1
.end method

.method private static getRangeLength(Landroid/util/Range;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    sub-int/2addr v0, p0

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    return v0
.end method

.method private getRecordSize()Landroid/util/Size;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-interface {v1, v0, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 17
    .line 18
    invoke-interface {v1, v0, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->get(II)Landroid/media/CamcorderProfile;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    new-instance v0, Landroid/util/Size;

    .line 27
    .line 28
    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 29
    .line 30
    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 31
    .line 32
    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_1
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRecordSizeByHasProfile(I)Landroid/util/Size;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :catch_0
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRecordSizeFromStreamConfigurationMap()Landroid/util/Size;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method private getRecordSizeByHasProfile(I)Landroid/util/Size;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_480P:Landroid/util/Size;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 14
    .line 15
    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->get(II)Landroid/media/CamcorderProfile;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 21
    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 31
    .line 32
    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->get(II)Landroid/media/CamcorderProfile;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 38
    .line 39
    const/16 v2, 0xc

    .line 40
    .line 41
    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 48
    .line 49
    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->get(II)Landroid/media/CamcorderProfile;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 55
    .line 56
    const/4 v2, 0x6

    .line 57
    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 64
    .line 65
    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->get(II)Landroid/media/CamcorderProfile;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 71
    .line 72
    const/4 v2, 0x5

    .line 73
    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 80
    .line 81
    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->get(II)Landroid/media/CamcorderProfile;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 87
    .line 88
    const/4 v2, 0x4

    .line 89
    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 96
    .line 97
    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->get(II)Landroid/media/CamcorderProfile;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    goto :goto_0

    .line 102
    :cond_5
    const/4 p1, 0x0

    .line 103
    :goto_0
    if-eqz p1, :cond_6

    .line 104
    .line 105
    new-instance v0, Landroid/util/Size;

    .line 106
    .line 107
    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 108
    .line 109
    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 110
    .line 111
    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    .line 112
    .line 113
    .line 114
    :cond_6
    return-object v0
.end method

.method private getRecordSizeFromStreamConfigurationMap()Landroid/util/Size;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->getStreamConfigurationMapCompat()Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->toStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Landroid/media/MediaRecorder;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_480P:Landroid/util/Size;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance v1, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-direct {v1, v2}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 29
    .line 30
    .line 31
    array-length v1, v0

    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_0
    if-ge v2, v1, :cond_2

    .line 34
    .line 35
    aget-object v3, v0, v2

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    sget-object v5, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_1080P:Landroid/util/Size;

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-gt v4, v6, :cond_1

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-gt v4, v5, :cond_1

    .line 58
    .line 59
    return-object v3

    .line 60
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    sget-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_480P:Landroid/util/Size;

    .line 64
    .line 65
    return-object v0
.end method

.method private static getRequiredMaxBitDepth(Ljava/util/Map;)I
    .locals 2
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/DynamicRange;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

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
    invoke-virtual {v0}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/16 v1, 0xa

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    const/16 p0, 0x8

    .line 31
    .line 32
    return p0
.end method

.method private getSurfaceCombinationsByFeatureSettings(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;)Ljava/util/List;
    .locals 3
    .param p1    # Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mFeatureSettingsToSupportedCombinationsMap:Ljava/util/Map;

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
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mFeatureSettingsToSupportedCombinationsMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/util/List;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_6

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinationsUltraHdr:Ljava/util/List;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;->getRequiredMaxBitDepth()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/16 v2, 0x8

    .line 46
    .line 47
    if-ne v1, v2, :cond_5

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x1

    .line 54
    if-eq v1, v2, :cond_4

    .line 55
    .line 56
    const/4 v2, 0x2

    .line 57
    if-eq v1, v2, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;->isPreviewStabilizationOn()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mPreviewStabilizationSurfaceCombinations:Ljava/util/List;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    .line 69
    .line 70
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mUltraHighSurfaceCombinations:Ljava/util/List;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mConcurrentSurfaceCombinations:Ljava/util/List;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;->getRequiredMaxBitDepth()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const/16 v2, 0xa

    .line 93
    .line 94
    if-ne v1, v2, :cond_6

    .line 95
    .line 96
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_6

    .line 101
    .line 102
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations10Bit:Ljava/util/List;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    .line 106
    .line 107
    :cond_6
    :goto_1
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mFeatureSettingsToSupportedCombinationsMap:Ljava/util/Map;

    .line 108
    .line 109
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    return-object v0
.end method

.method private getSurfaceConfigListAndFpsCeiling(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/Map;Ljava/util/Map;)Landroid/util/Pair;
    .locals 4
    .param p7    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;",
            "Ljava/lang/Integer;",
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
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getSurfaceConfig()Landroidx/camera/core/impl/SurfaceConfig;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    if-eqz p7, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    add-int/lit8 v2, v2, -0x1

    .line 36
    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {p7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p2, 0x0

    .line 46
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result p7

    .line 50
    if-ge p2, p7, :cond_3

    .line 51
    .line 52
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p7

    .line 56
    check-cast p7, Landroid/util/Size;

    .line 57
    .line 58
    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Landroidx/camera/core/impl/UseCaseConfig;

    .line 73
    .line 74
    invoke-interface {v1}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {p0, v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {p1, v2, p7, v3}, Landroidx/camera/core/impl/SurfaceConfig;->transformSurfaceConfig(IILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    if-eqz p8, :cond_2

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    add-int/lit8 v2, v2, -0x1

    .line 96
    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-interface {p8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    :cond_2
    invoke-interface {v1}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-direct {p0, p6, v1, p7}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedMaximumFps(IILandroid/util/Size;)I

    .line 109
    .line 110
    .line 111
    move-result p6

    .line 112
    add-int/lit8 p2, p2, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    new-instance p1, Landroid/util/Pair;

    .line 116
    .line 117
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-object p1
.end method

.method private getTargetFpsRange(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroid/util/Range;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    move-object v1, v0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getTargetFrameRate()Landroid/util/Range;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {p0, v2, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedTargetFramerate(Landroid/util/Range;Landroid/util/Range;)Landroid/util/Range;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    check-cast p3, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    check-cast p3, Landroidx/camera/core/impl/UseCaseConfig;

    .line 53
    .line 54
    invoke-interface {p3, v0}, Landroidx/camera/core/impl/UseCaseConfig;->getTargetFrameRate(Landroid/util/Range;)Landroid/util/Range;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-direct {p0, p3, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedTargetFramerate(Landroid/util/Range;Landroid/util/Range;)Landroid/util/Range;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    return-object v1
.end method

.method private getUpdatedMaximumFps(IILandroid/util/Size;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 2
    .line 3
    invoke-static {v0, p2, p3}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getMaxFrameRate(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;ILandroid/util/Size;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method private getUpdatedTargetFramerate(Landroid/util/Range;Landroid/util/Range;)Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-eqz p1, :cond_1

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    :cond_1
    move-object p1, p2

    .line 12
    :goto_0
    return-object p1
.end method

.method private static getUseCasesPriorityOrder(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
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
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroidx/camera/core/impl/UseCaseConfig;

    .line 27
    .line 28
    invoke-interface {v3, v4}, Landroidx/camera/core/impl/UseCaseConfig;->getSurfaceOccupancyPriority(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_2

    .line 85
    .line 86
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Landroidx/camera/core/impl/UseCaseConfig;

    .line 91
    .line 92
    invoke-interface {v5, v4}, Landroidx/camera/core/impl/UseCaseConfig;->getSurfaceOccupancyPriority(I)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-ne v2, v6, :cond_3

    .line 97
    .line 98
    invoke-interface {p0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    return-object v0
.end method

.method private static isUltraHdrOn(Ljava/util/List;Ljava/util/Map;)Z
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/16 v2, 0x1005

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getImageFormat()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ne v0, v2, :cond_0

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroidx/camera/core/impl/UseCaseConfig;

    .line 46
    .line 47
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-ne p1, v2, :cond_2

    .line 52
    .line 53
    return v1

    .line 54
    :cond_3
    const/4 p0, 0x0

    .line 55
    return p0
.end method

.method private isUltraHdrSupported()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->getStreamConfigurationMapCompat()Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->getOutputFormats()[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    array-length v2, v0

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_2

    .line 18
    .line 19
    aget v4, v0, v3

    .line 20
    .line 21
    const/16 v5, 0x1005

    .line 22
    .line 23
    if-ne v4, v5, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    return v1
.end method

.method private isUseCasesCombinationSupported(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;)Z
    .locals 7
    .param p1    # Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;)Z"
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
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getSurfaceConfig()Landroidx/camera/core/impl/SurfaceConfig;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p2, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    .line 31
    .line 32
    invoke-direct {p2}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroidx/camera/core/impl/UseCaseConfig;

    .line 54
    .line 55
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Ljava/util/List;

    .line 60
    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_1

    .line 68
    .line 69
    const/4 v4, 0x1

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    const/4 v4, 0x0

    .line 72
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v6, "No available output size is found for "

    .line 75
    .line 76
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v6, "."

    .line 83
    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-static {v4, v5}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v3, p2}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Landroid/util/Size;

    .line 99
    .line 100
    invoke-interface {v2}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    invoke-virtual {p0, v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-static {v4, v2, v3, v5}, Landroidx/camera/core/impl/SurfaceConfig;->transformSurfaceConfig(IILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->checkSupported(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    return p1
.end method

.method private refreshPreviewSize()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mDisplayInfoManager:Landroidx/camera/camera2/internal/DisplayInfoManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/DisplayInfoManager;->refresh()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generateSurfaceSizeDefinition()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mDisplayInfoManager:Landroidx/camera/camera2/internal/DisplayInfoManager;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/DisplayInfoManager;->getPreviewSize()Landroid/util/Size;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getAnalysisSize()Landroid/util/Size;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS720pSizeMap()Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS1440pSizeMap()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getRecordSize()Landroid/util/Size;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximumSizeMap()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getUltraMaximumSizeMap()Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-static/range {v1 .. v7}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->create(Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method private updateMaximumSizeByFormat(Ljava/util/Map;I)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Size;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->getStreamConfigurationMapCompat()Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->toStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {p0, v0, p2, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getMaxOutputSizeByFormat(Landroid/hardware/camera2/params/StreamConfigurationMap;IZ)Landroid/util/Size;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private updateS720pOrS1440pSizeByFormat(Ljava/util/Map;Landroid/util/Size;I)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Size;",
            ">;",
            "Landroid/util/Size;",
            "I)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-boolean v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsConcurrentCameraModeSupported:Z

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->getStreamConfigurationMapCompat()Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->toStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {p0, v1, p3, v0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getMaxOutputSizeByFormat(Landroid/hardware/camera2/params/StreamConfigurationMap;IZ)Landroid/util/Size;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v2, 0x2

    .line 29
    new-array v2, v2, [Landroid/util/Size;

    .line 30
    .line 31
    aput-object p2, v2, v0

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    aput-object v1, v2, p2

    .line 35
    .line 36
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    new-instance v0, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    .line 41
    .line 42
    invoke-direct {v0}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {p2, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Landroid/util/Size;

    .line 50
    .line 51
    :goto_0
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private updateUltraMaximumSizeByFormat(Ljava/util/Map;I)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Size;",
            ">;I)V"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_2

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsUltraHighResolutionSensorSupported:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 13
    .line 14
    invoke-static {}, L딨뒘딨뒾될돶뒹뎽땟땯돼뒀뎹뎻돸땪뒨딤뒾듽돴돸딄됩딐뒾딐땔됫뒤딄도돼딜디뎹땝땠땩뒾땄땰돛땭딌땦둬딜돰드뒻땀땭땰드땍땍땡뒨딻땵듼듔됐뎬땠땦딽뎹돼땝됴디땅뎠들됩땩돶돰뎹도되딁딨된땠땻둣뎬될됐뒤뒙땀땬뎡뒷땫됨뒀딅돶듸듨딐땮됐땅둘둬뒵딨뒘듔뒐뒵뎸딟딎듌딀땳둡땀뒨땅딎땳땫;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨()Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-direct {p0, v0, p2, v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getMaxOutputSizeByFormat(Landroid/hardware/camera2/params/StreamConfigurationMap;IZ)Landroid/util/Size;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public applyResolutionSelectionOrderRelatedWorkarounds(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mTargetAspectRatio:Landroidx/camera/camera2/internal/compat/workaround/TargetAspectRatio;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/internal/compat/workaround/TargetAspectRatio;->get(Ljava/lang/String;Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v0, 0x100

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximumSize(I)Landroid/util/Size;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Landroid/util/Rational;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-direct {v1, v2, v0}, Landroid/util/Rational;-><init>(II)V

    .line 42
    .line 43
    .line 44
    move-object v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    sget-object v0, Landroidx/camera/core/impl/utils/AspectRatioUtil;->ASPECT_RATIO_16_9:Landroid/util/Rational;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    sget-object v0, Landroidx/camera/core/impl/utils/AspectRatioUtil;->ASPECT_RATIO_4_3:Landroid/util/Rational;

    .line 50
    .line 51
    :goto_0
    if-nez v0, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v2, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_5

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroid/util/Size;

    .line 79
    .line 80
    invoke-static {v3, v0}, Landroidx/camera/core/impl/utils/AspectRatioUtil;->hasMatchingAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_4

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    const/4 p1, 0x0

    .line 95
    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 96
    .line 97
    .line 98
    move-object p1, v2

    .line 99
    :goto_2
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mResolutionCorrector:Landroidx/camera/camera2/internal/compat/workaround/ResolutionCorrector;

    .line 100
    .line 101
    invoke-static {p2}, Landroidx/camera/core/impl/SurfaceConfig;->getConfigType(I)Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {v0, p2, p1}, Landroidx/camera/camera2/internal/compat/workaround/ResolutionCorrector;->insertOrPrioritize(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Ljava/util/List;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    return-object p1
.end method

.method public checkSupported(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;)Z
    .locals 3
    .param p1    # Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getSurfaceCombinationsByFeatureSettings(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/camera/core/impl/SurfaceCombination;

    .line 22
    .line 23
    invoke-virtual {v1, p2}, Landroidx/camera/core/impl/SurfaceCombination;->getOrderedSupportedSurfaceConfigList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-eqz v1, :cond_0

    .line 33
    .line 34
    :cond_2
    return v1
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOrderedSupportedStreamUseCaseSurfaceConfigList(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->shouldUseStreamUseCase(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinationsStreamUseCase:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/camera/core/impl/SurfaceCombination;

    .line 26
    .line 27
    invoke-virtual {v1, p2}, Landroidx/camera/core/impl/SurfaceCombination;->getOrderedSupportedSurfaceConfigList(Ljava/util/List;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_2
    return-object v0
.end method

.method public getSuggestedStreamSpecifications(ILjava/util/List;Ljava/util/Map;ZZ)Landroid/util/Pair;
    .locals 34
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;ZZ)",
            "Landroid/util/Pair<",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;>;"
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->refreshPreviewSize()V

    .line 8
    .line 9
    .line 10
    new-instance v11, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v11}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUseCasesPriorityOrder(Ljava/util/List;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v12

    .line 23
    iget-object v1, v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mDynamicRangeResolver:Landroidx/camera/camera2/internal/DynamicRangeResolver;

    .line 24
    .line 25
    invoke-virtual {v1, v10, v11, v12}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->resolveAndValidateDynamicRanges(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v13

    .line 29
    invoke-static/range {p2 .. p3}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->isUltraHdrOn(Ljava/util/List;Ljava/util/Map;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    move/from16 v14, p1

    .line 34
    .line 35
    move/from16 v2, p4

    .line 36
    .line 37
    invoke-direct {v9, v14, v13, v2, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->createFeatureSettings(ILjava/util/Map;ZZ)Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;

    .line 38
    .line 39
    .line 40
    move-result-object v15

    .line 41
    invoke-direct {v9, v15, v10, v0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->isUseCasesCombinationSupported(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;)Z

    .line 42
    .line 43
    .line 44
    move-result v16

    .line 45
    const-string v8, ".  May be attempting to bind too many use cases. Existing surfaces: "

    .line 46
    .line 47
    const-string v7, " New configs: "

    .line 48
    .line 49
    const-string v6, "No supported surface combination is found for camera device - Id : "

    .line 50
    .line 51
    if-eqz v16, :cond_1c

    .line 52
    .line 53
    invoke-direct {v9, v10, v11, v12}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getTargetFpsRange(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroid/util/Range;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-direct {v9, v0, v15, v5}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->filterSupportedSizes(Ljava/util/Map;Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Landroid/util/Range;)Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_0

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Landroidx/camera/core/impl/UseCaseConfig;

    .line 91
    .line 92
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v3}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-virtual {v9, v4, v3}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->applyResolutionSelectionOrderRelatedWorkarounds(Ljava/util/List;I)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    invoke-direct {v9, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getAllPossibleSizeArrangements(Ljava/util/List;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v17

    .line 114
    new-instance v4, Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v3, Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v2, Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v1, Ljava/util/HashMap;

    .line 130
    .line 131
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-static {v10, v11}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->containsZslUseCase(Ljava/util/List;Ljava/util/List;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-direct {v9, v10}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getMaxSupportedFpsFromAttachedSurfaces(Ljava/util/List;)I

    .line 139
    .line 140
    .line 141
    move-result v14

    .line 142
    move-object/from16 p3, v1

    .line 143
    .line 144
    iget-boolean v1, v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsStreamUseCaseSupported:Z

    .line 145
    .line 146
    const/16 v18, 0x0

    .line 147
    .line 148
    if-eqz v1, :cond_7

    .line 149
    .line 150
    if-nez v0, :cond_7

    .line 151
    .line 152
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v19

    .line 156
    move-object/from16 v0, v18

    .line 157
    .line 158
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_4

    .line 163
    .line 164
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    move-object/from16 v20, v0

    .line 169
    .line 170
    check-cast v20, Ljava/util/List;

    .line 171
    .line 172
    move-object/from16 v0, p0

    .line 173
    .line 174
    move-object/from16 p4, p3

    .line 175
    .line 176
    move/from16 v1, p1

    .line 177
    .line 178
    move-object/from16 p3, v2

    .line 179
    .line 180
    move-object/from16 v2, p2

    .line 181
    .line 182
    move-object/from16 v21, v3

    .line 183
    .line 184
    move-object/from16 v3, v20

    .line 185
    .line 186
    move-object/from16 v22, v4

    .line 187
    .line 188
    move-object v4, v11

    .line 189
    move-object/from16 v20, v13

    .line 190
    .line 191
    move-object v13, v5

    .line 192
    move-object v5, v12

    .line 193
    move-object/from16 v23, v13

    .line 194
    .line 195
    move-object v13, v6

    .line 196
    move v6, v14

    .line 197
    move/from16 v24, v14

    .line 198
    .line 199
    move-object v14, v7

    .line 200
    move-object/from16 v7, p3

    .line 201
    .line 202
    move-object/from16 v25, v12

    .line 203
    .line 204
    move-object v12, v8

    .line 205
    move-object/from16 v8, p4

    .line 206
    .line 207
    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getSurfaceConfigListAndFpsCeiling(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/Map;Ljava/util/Map;)Landroid/util/Pair;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v0, Ljava/util/List;

    .line 214
    .line 215
    invoke-virtual {v9, v15, v0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getOrderedSupportedStreamUseCaseSurfaceConfigList(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;)Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    move-object/from16 v8, p3

    .line 220
    .line 221
    move-object/from16 v7, p4

    .line 222
    .line 223
    if-eqz v0, :cond_1

    .line 224
    .line 225
    invoke-static {v8, v7, v0}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->areCaptureTypesEligible(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-nez v1, :cond_1

    .line 230
    .line 231
    move-object/from16 v0, v18

    .line 232
    .line 233
    :cond_1
    if-eqz v0, :cond_3

    .line 234
    .line 235
    iget-object v1, v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 236
    .line 237
    invoke-static {v1, v0}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->areStreamUseCasesAvailableForSurfaceConfigs(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;Ljava/util/List;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_2

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_2
    move-object/from16 v0, v18

    .line 245
    .line 246
    :cond_3
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 250
    .line 251
    .line 252
    move-object/from16 p3, v7

    .line 253
    .line 254
    move-object v2, v8

    .line 255
    move-object v8, v12

    .line 256
    move-object v6, v13

    .line 257
    move-object v7, v14

    .line 258
    move-object/from16 v13, v20

    .line 259
    .line 260
    move-object/from16 v3, v21

    .line 261
    .line 262
    move-object/from16 v4, v22

    .line 263
    .line 264
    move-object/from16 v5, v23

    .line 265
    .line 266
    move/from16 v14, v24

    .line 267
    .line 268
    move-object/from16 v12, v25

    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_4
    move-object/from16 v21, v3

    .line 272
    .line 273
    move-object/from16 v22, v4

    .line 274
    .line 275
    move-object/from16 v23, v5

    .line 276
    .line 277
    move-object/from16 v25, v12

    .line 278
    .line 279
    move-object/from16 v20, v13

    .line 280
    .line 281
    move/from16 v24, v14

    .line 282
    .line 283
    move-object v13, v6

    .line 284
    move-object v14, v7

    .line 285
    move-object v12, v8

    .line 286
    move-object/from16 v7, p3

    .line 287
    .line 288
    move-object v8, v2

    .line 289
    :goto_2
    if-nez v0, :cond_6

    .line 290
    .line 291
    if-eqz v16, :cond_5

    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 295
    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iget-object v2, v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw v0

    .line 326
    :cond_6
    :goto_3
    move-object v12, v0

    .line 327
    goto :goto_4

    .line 328
    :cond_7
    move-object v8, v2

    .line 329
    move-object/from16 v21, v3

    .line 330
    .line 331
    move-object/from16 v22, v4

    .line 332
    .line 333
    move-object/from16 v23, v5

    .line 334
    .line 335
    move-object/from16 v25, v12

    .line 336
    .line 337
    move-object/from16 v20, v13

    .line 338
    .line 339
    move/from16 v24, v14

    .line 340
    .line 341
    move-object v13, v6

    .line 342
    move-object v14, v7

    .line 343
    move-object/from16 v7, p3

    .line 344
    .line 345
    move-object/from16 v12, v18

    .line 346
    .line 347
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 348
    .line 349
    .line 350
    move-result-object v16

    .line 351
    const/16 v17, 0x0

    .line 352
    .line 353
    const v6, 0x7fffffff

    .line 354
    .line 355
    .line 356
    move-object/from16 v27, v18

    .line 357
    .line 358
    move-object/from16 v28, v27

    .line 359
    .line 360
    const v4, 0x7fffffff

    .line 361
    .line 362
    .line 363
    const v5, 0x7fffffff

    .line 364
    .line 365
    .line 366
    const/16 v19, 0x0

    .line 367
    .line 368
    const/16 v26, 0x0

    .line 369
    .line 370
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_13

    .line 375
    .line 376
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    move-object/from16 v29, v0

    .line 381
    .line 382
    check-cast v29, Ljava/util/List;

    .line 383
    .line 384
    const/16 v30, 0x0

    .line 385
    .line 386
    const/16 v31, 0x0

    .line 387
    .line 388
    move-object/from16 v0, p0

    .line 389
    .line 390
    move/from16 v1, p1

    .line 391
    .line 392
    move-object/from16 v2, p2

    .line 393
    .line 394
    move-object/from16 v3, v29

    .line 395
    .line 396
    move/from16 v32, v4

    .line 397
    .line 398
    move-object v4, v11

    .line 399
    move/from16 v33, v5

    .line 400
    .line 401
    move-object/from16 v5, v25

    .line 402
    .line 403
    move/from16 v6, v24

    .line 404
    .line 405
    move-object/from16 p3, v14

    .line 406
    .line 407
    move-object v14, v7

    .line 408
    move-object/from16 v7, v30

    .line 409
    .line 410
    move-object/from16 v30, v13

    .line 411
    .line 412
    move-object v13, v8

    .line 413
    move-object/from16 v8, v31

    .line 414
    .line 415
    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getSurfaceConfigListAndFpsCeiling(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/Map;Ljava/util/Map;)Landroid/util/Pair;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 420
    .line 421
    check-cast v1, Ljava/util/List;

    .line 422
    .line 423
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v0, Ljava/lang/Integer;

    .line 426
    .line 427
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 428
    .line 429
    .line 430
    move-result v5

    .line 431
    const/4 v0, 0x1

    .line 432
    move/from16 v2, v24

    .line 433
    .line 434
    if-eqz v23, :cond_8

    .line 435
    .line 436
    if-le v2, v5, :cond_8

    .line 437
    .line 438
    invoke-virtual/range {v23 .. v23}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    check-cast v3, Ljava/lang/Integer;

    .line 443
    .line 444
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 445
    .line 446
    .line 447
    move-result v3

    .line 448
    if-ge v5, v3, :cond_8

    .line 449
    .line 450
    const/4 v3, 0x0

    .line 451
    goto :goto_6

    .line 452
    :cond_8
    const/4 v3, 0x1

    .line 453
    :goto_6
    if-nez v19, :cond_c

    .line 454
    .line 455
    invoke-virtual {v9, v15, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->checkSupported(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;)Z

    .line 456
    .line 457
    .line 458
    move-result v4

    .line 459
    if-eqz v4, :cond_c

    .line 460
    .line 461
    move/from16 v6, v33

    .line 462
    .line 463
    const v4, 0x7fffffff

    .line 464
    .line 465
    .line 466
    if-ne v6, v4, :cond_9

    .line 467
    .line 468
    goto :goto_7

    .line 469
    :cond_9
    if-ge v6, v5, :cond_a

    .line 470
    .line 471
    :goto_7
    move v6, v5

    .line 472
    move-object/from16 v27, v29

    .line 473
    .line 474
    :cond_a
    if-eqz v3, :cond_d

    .line 475
    .line 476
    if-eqz v26, :cond_b

    .line 477
    .line 478
    move-object/from16 v1, v28

    .line 479
    .line 480
    move-object/from16 v0, v29

    .line 481
    .line 482
    move/from16 v4, v32

    .line 483
    .line 484
    goto/16 :goto_b

    .line 485
    .line 486
    :cond_b
    move v6, v5

    .line 487
    move-object/from16 v27, v29

    .line 488
    .line 489
    const/16 v19, 0x1

    .line 490
    .line 491
    goto :goto_8

    .line 492
    :cond_c
    move/from16 v6, v33

    .line 493
    .line 494
    const v4, 0x7fffffff

    .line 495
    .line 496
    .line 497
    :cond_d
    :goto_8
    if-eqz v12, :cond_11

    .line 498
    .line 499
    if-nez v26, :cond_11

    .line 500
    .line 501
    invoke-virtual {v9, v15, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getOrderedSupportedStreamUseCaseSurfaceConfigList(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;)Ljava/util/List;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    if-eqz v1, :cond_11

    .line 506
    .line 507
    move/from16 v1, v32

    .line 508
    .line 509
    if-ne v1, v4, :cond_e

    .line 510
    .line 511
    goto :goto_9

    .line 512
    :cond_e
    if-ge v1, v5, :cond_f

    .line 513
    .line 514
    :goto_9
    move v1, v5

    .line 515
    move-object/from16 v28, v29

    .line 516
    .line 517
    :cond_f
    if-eqz v3, :cond_12

    .line 518
    .line 519
    if-eqz v19, :cond_10

    .line 520
    .line 521
    move v4, v5

    .line 522
    move v5, v6

    .line 523
    move-object/from16 v0, v27

    .line 524
    .line 525
    move-object/from16 v1, v29

    .line 526
    .line 527
    goto :goto_b

    .line 528
    :cond_10
    move v1, v5

    .line 529
    move-object/from16 v28, v29

    .line 530
    .line 531
    const/16 v26, 0x1

    .line 532
    .line 533
    goto :goto_a

    .line 534
    :cond_11
    move/from16 v1, v32

    .line 535
    .line 536
    :cond_12
    :goto_a
    move v4, v1

    .line 537
    move/from16 v24, v2

    .line 538
    .line 539
    move v5, v6

    .line 540
    move-object v8, v13

    .line 541
    move-object v7, v14

    .line 542
    move-object/from16 v13, v30

    .line 543
    .line 544
    const v6, 0x7fffffff

    .line 545
    .line 546
    .line 547
    move-object/from16 v14, p3

    .line 548
    .line 549
    goto/16 :goto_5

    .line 550
    .line 551
    :cond_13
    move v1, v4

    .line 552
    move v6, v5

    .line 553
    move-object/from16 v30, v13

    .line 554
    .line 555
    move-object/from16 p3, v14

    .line 556
    .line 557
    move-object v14, v7

    .line 558
    move-object v13, v8

    .line 559
    move-object/from16 v0, v27

    .line 560
    .line 561
    move-object/from16 v1, v28

    .line 562
    .line 563
    :goto_b
    if-eqz v0, :cond_1b

    .line 564
    .line 565
    if-eqz v23, :cond_14

    .line 566
    .line 567
    move-object/from16 v2, v23

    .line 568
    .line 569
    invoke-direct {v9, v2, v5}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getClosestSupportedDeviceFrameRate(Landroid/util/Range;I)Landroid/util/Range;

    .line 570
    .line 571
    .line 572
    move-result-object v18

    .line 573
    :cond_14
    move-object/from16 v2, v18

    .line 574
    .line 575
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 580
    .line 581
    .line 582
    move-result v6

    .line 583
    if-eqz v6, :cond_16

    .line 584
    .line 585
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v6

    .line 589
    check-cast v6, Landroidx/camera/core/impl/UseCaseConfig;

    .line 590
    .line 591
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 592
    .line 593
    .line 594
    move-result v7

    .line 595
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 596
    .line 597
    .line 598
    move-result-object v7

    .line 599
    move-object/from16 v8, v25

    .line 600
    .line 601
    invoke-interface {v8, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 602
    .line 603
    .line 604
    move-result v7

    .line 605
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v7

    .line 609
    check-cast v7, Landroid/util/Size;

    .line 610
    .line 611
    invoke-static {v7}, Landroidx/camera/core/impl/StreamSpec;->builder(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 612
    .line 613
    .line 614
    move-result-object v7

    .line 615
    move-object/from16 v15, v20

    .line 616
    .line 617
    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v16

    .line 621
    check-cast v16, Landroidx/camera/core/DynamicRange;

    .line 622
    .line 623
    invoke-static/range {v16 .. v16}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v16

    .line 627
    move-object/from16 p1, v3

    .line 628
    .line 629
    move-object/from16 v3, v16

    .line 630
    .line 631
    check-cast v3, Landroidx/camera/core/DynamicRange;

    .line 632
    .line 633
    invoke-virtual {v7, v3}, Landroidx/camera/core/impl/StreamSpec$Builder;->setDynamicRange(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 634
    .line 635
    .line 636
    move-result-object v3

    .line 637
    invoke-static {v6}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->getStreamSpecImplementationOptions(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/camera2/impl/Camera2ImplConfig;

    .line 638
    .line 639
    .line 640
    move-result-object v7

    .line 641
    invoke-virtual {v3, v7}, Landroidx/camera/core/impl/StreamSpec$Builder;->setImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 642
    .line 643
    .line 644
    move-result-object v3

    .line 645
    move/from16 v7, p5

    .line 646
    .line 647
    invoke-virtual {v3, v7}, Landroidx/camera/core/impl/StreamSpec$Builder;->setZslDisabled(Z)Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    if-eqz v2, :cond_15

    .line 652
    .line 653
    invoke-virtual {v3, v2}, Landroidx/camera/core/impl/StreamSpec$Builder;->setExpectedFrameRateRange(Landroid/util/Range;)Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 654
    .line 655
    .line 656
    :cond_15
    invoke-virtual {v3}, Landroidx/camera/core/impl/StreamSpec$Builder;->build()Landroidx/camera/core/impl/StreamSpec;

    .line 657
    .line 658
    .line 659
    move-result-object v3

    .line 660
    move-object/from16 p3, v2

    .line 661
    .line 662
    move-object/from16 v2, v21

    .line 663
    .line 664
    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-object/from16 v3, p1

    .line 668
    .line 669
    move-object/from16 v25, v8

    .line 670
    .line 671
    move-object/from16 v20, v15

    .line 672
    .line 673
    move-object/from16 v2, p3

    .line 674
    .line 675
    goto :goto_c

    .line 676
    :cond_16
    move-object/from16 v2, v21

    .line 677
    .line 678
    if-eqz v12, :cond_17

    .line 679
    .line 680
    if-ne v5, v4, :cond_17

    .line 681
    .line 682
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 683
    .line 684
    .line 685
    move-result v3

    .line 686
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 687
    .line 688
    .line 689
    move-result v4

    .line 690
    if-ne v3, v4, :cond_17

    .line 691
    .line 692
    const/4 v3, 0x0

    .line 693
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 694
    .line 695
    .line 696
    move-result v4

    .line 697
    if-ge v3, v4, :cond_19

    .line 698
    .line 699
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v4

    .line 703
    check-cast v4, Landroid/util/Size;

    .line 704
    .line 705
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v5

    .line 709
    invoke-virtual {v4, v5}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    .line 710
    .line 711
    .line 712
    move-result v4

    .line 713
    if-nez v4, :cond_18

    .line 714
    .line 715
    :cond_17
    move-object/from16 v1, v22

    .line 716
    .line 717
    goto :goto_e

    .line 718
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 719
    .line 720
    goto :goto_d

    .line 721
    :cond_19
    iget-object v0, v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 722
    .line 723
    move-object/from16 v1, v22

    .line 724
    .line 725
    invoke-static {v0, v10, v2, v1}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->populateStreamUseCaseStreamSpecOptionWithInteropOverride(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Z

    .line 726
    .line 727
    .line 728
    move-result v0

    .line 729
    if-nez v0, :cond_1a

    .line 730
    .line 731
    invoke-static {v2, v1, v13, v14, v12}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->populateStreamUseCaseStreamSpecOptionWithSupportedSurfaceConfigs(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    .line 732
    .line 733
    .line 734
    :cond_1a
    :goto_e
    new-instance v0, Landroid/util/Pair;

    .line 735
    .line 736
    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 737
    .line 738
    .line 739
    return-object v0

    .line 740
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 741
    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    .line 743
    .line 744
    move-object/from16 v2, v30

    .line 745
    .line 746
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    iget-object v2, v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    .line 750
    .line 751
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    const-string v2, " and Hardware level: "

    .line 755
    .line 756
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    iget v2, v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mHardwareLevel:I

    .line 760
    .line 761
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    const-string v2, ". May be the specified resolution is too large and not supported. Existing surfaces: "

    .line 765
    .line 766
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    move-object/from16 v3, p3

    .line 773
    .line 774
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    throw v0

    .line 788
    :cond_1c
    move-object v2, v6

    .line 789
    move-object v3, v7

    .line 790
    move-object v12, v8

    .line 791
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 792
    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    .line 794
    .line 795
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    iget-object v2, v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    .line 799
    .line 800
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v1

    .line 819
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    throw v0
.end method

.method public getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinitionFormats:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS720pSizeMap()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_720P:Landroid/util/Size;

    .line 20
    .line 21
    invoke-direct {p0, v0, v1, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->updateS720pOrS1440pSizeByFormat(Ljava/util/Map;Landroid/util/Size;I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS1440pSizeMap()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_1440P:Landroid/util/Size;

    .line 31
    .line 32
    invoke-direct {p0, v0, v1, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->updateS720pOrS1440pSizeByFormat(Ljava/util/Map;Landroid/util/Size;I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximumSizeMap()Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->updateMaximumSizeByFormat(Ljava/util/Map;I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getUltraMaximumSizeMap()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->updateUltraMaximumSizeByFormat(Ljava/util/Map;I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinitionFormats:Ljava/util/List;

    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 63
    .line 64
    return-object p1
.end method

.method public isBurstCaptureSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsBurstCaptureSupported:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRawSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsRawSupported:Z

    .line 2
    .line 3
    return v0
.end method

.method public transformSurfaceConfig(IILandroid/util/Size;)Landroidx/camera/core/impl/SurfaceConfig;
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, p2, p3, v0}, Landroidx/camera/core/impl/SurfaceConfig;->transformSurfaceConfig(IILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
