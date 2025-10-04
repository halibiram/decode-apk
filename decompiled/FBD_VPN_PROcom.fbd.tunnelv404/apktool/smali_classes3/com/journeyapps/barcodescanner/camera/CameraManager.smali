.class public final Lcom/journeyapps/barcodescanner/camera/CameraManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraManager"


# instance fields
.field private ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

.field private autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

.field private camera:Landroid/hardware/Camera;

.field private cameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private final cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

.field private context:Landroid/content/Context;

.field private defaultParameters:Ljava/lang/String;

.field private displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

.field private previewSize:Lcom/journeyapps/barcodescanner/Size;

.field private previewing:Z

.field private requestedPreviewSize:Lcom/journeyapps/barcodescanner/Size;

.field private rotationDegrees:I

.field private settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->rotationDegrees:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->context:Landroid/content/Context;

    .line 15
    .line 16
    new-instance p1, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraManager;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic access$000(Lcom/journeyapps/barcodescanner/camera/CameraManager;)Landroid/hardware/Camera$CameraInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private calculateDisplayRotation()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->getRotation()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v0, v3, :cond_1

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    if-eq v0, v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v2, 0x10e

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/16 v2, 0xb4

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/16 v2, 0x5a

    .line 27
    .line 28
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 29
    .line 30
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 31
    .line 32
    if-ne v3, v1, :cond_4

    .line 33
    .line 34
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 35
    .line 36
    add-int/2addr v0, v2

    .line 37
    rem-int/lit16 v0, v0, 0x168

    .line 38
    .line 39
    rsub-int v0, v0, 0x168

    .line 40
    .line 41
    rem-int/lit16 v0, v0, 0x168

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_4
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 45
    .line 46
    sub-int/2addr v0, v2

    .line 47
    add-int/lit16 v0, v0, 0x168

    .line 48
    .line 49
    rem-int/lit16 v0, v0, 0x168

    .line 50
    .line 51
    :goto_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v2, 0x5

    .line 54
    new-array v2, v2, [J

    .line 55
    .line 56
    fill-array-data v2, :array_0

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    return v0

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        -0x7a0c3f64a69cbfcL    # -6.600411105641422E271
        0x29b84252a2c15065L
        -0x74e99ec86cb3a89cL    # -2.980979566664387E-255
        -0x1af5ce5434663ca0L
        -0x2cef7e6832c899ddL    # -1.3449507674426098E92
    .end array-data
.end method

.method private getDefaultCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->defaultParameters:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->defaultParameters:Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-object v0
.end method

.method private static getPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/journeyapps/barcodescanner/Size;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    .line 19
    .line 20
    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    .line 21
    .line 22
    iget v3, p0, Landroid/hardware/Camera$Size;->height:I

    .line 23
    .line 24
    invoke-direct {v0, v2, v3}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    .line 28
    .line 29
    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    .line 30
    .line 31
    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    .line 32
    .line 33
    invoke-direct {v0, v2, p0}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-object v1

    .line 40
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/hardware/Camera$Size;

    .line 55
    .line 56
    new-instance v2, Lcom/journeyapps/barcodescanner/Size;

    .line 57
    .line 58
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    .line 59
    .line 60
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    .line 61
    .line 62
    invoke-direct {v2, v3, v0}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return-object v1
.end method

.method private setCameraDisplayOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private setDesiredParameters(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->getDefaultCameraParameters()Landroid/hardware/Camera$Parameters;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/16 v0, 0xc

    .line 11
    .line 12
    new-array v0, v0, [J

    .line 13
    .line 14
    fill-array-data v0, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v3, v0, [J

    .line 27
    .line 28
    fill-array-data v3, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/16 v3, 0x9

    .line 45
    .line 46
    new-array v3, v3, [J

    .line 47
    .line 48
    fill-array-data v3, :array_2

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->getFocusMode()Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v1, v2, p1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setFocus(Landroid/hardware/Camera$Parameters;Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;Z)V

    .line 64
    .line 65
    .line 66
    if-nez p1, :cond_4

    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    invoke-static {v1, p1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setTorch(Landroid/hardware/Camera$Parameters;Z)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->isScanInverted()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    invoke-static {v1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setInvertColor(Landroid/hardware/Camera$Parameters;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->isBarcodeSceneModeEnabled()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    invoke-static {v1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setBarcodeSceneMode(Landroid/hardware/Camera$Parameters;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->isMeteringEnabled()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    invoke-static {v1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setVideoStabilization(Landroid/hardware/Camera$Parameters;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setFocusArea(Landroid/hardware/Camera$Parameters;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setMetering(Landroid/hardware/Camera$Parameters;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-static {v1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->getPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_5

    .line 120
    .line 121
    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->requestedPreviewSize:Lcom/journeyapps/barcodescanner/Size;

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_5
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->isCameraRotated()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-virtual {v2, p1, v3}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->getBestPreviewSize(Ljava/util/List;Z)Lcom/journeyapps/barcodescanner/Size;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->requestedPreviewSize:Lcom/journeyapps/barcodescanner/Size;

    .line 136
    .line 137
    iget v2, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 138
    .line 139
    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 140
    .line 141
    invoke-virtual {v1, v2, p1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 142
    .line 143
    .line 144
    :goto_0
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 145
    .line 146
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    const/4 v3, 0x2

    .line 149
    new-array v3, v3, [J

    .line 150
    .line 151
    fill-array-data v3, :array_3

    .line 152
    .line 153
    .line 154
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_6

    .line 166
    .line 167
    invoke-static {v1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setBestPreviewFPS(Landroid/hardware/Camera$Parameters;)V

    .line 168
    .line 169
    .line 170
    :cond_6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 171
    .line 172
    new-array v0, v0, [J

    .line 173
    .line 174
    fill-array-data v0, :array_4

    .line 175
    .line 176
    .line 177
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 187
    .line 188
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    nop

    .line 193
    :array_0
    .array-data 8
        0xbf50b43d6ddd6f2L
        -0x7a14f9a8ab44795bL
        -0x5e3ace41527c09e6L    # -5.304097662696699E-146
        0x68814be638b8e56fL    # 2.525253453850861E195
        0x5a9a1044e2acc96fL    # 2.8228757140549553E128
        0x168155927de56c69L
        -0x36d559b70abee320L    # -2.971524204779153E44
        0x59c5a8c37cd2e82cL    # 2.863593038114692E124
        -0x88e5819b14ee671L
        -0x21f1f953a56231e3L    # -1.1716729052230523E145
        -0x1cf5816353425582L    # -1.249869280808861E169
        -0x57eaa2b3b1841121L    # -1.355543007727703E-115
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :array_1
    .array-data 8
        0x4ae40c77ad1a1f5cL    # 6.000887706390745E52
        0x32ca1a5cdcc4dedfL    # 4.95725219798756E-64
        -0x50cbcf12128cf78dL    # -2.6607361785247054E-81
        0x507f787117169d49L    # 5.8304513940079406E79
        -0x132e76fb301ecac8L    # -1.511222331954379E216
    .end array-data

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_2
    .array-data 8
        0x24f2e28d7b65f19cL
        0x5fa4da6da1022cf1L    # 5.460862767294722E152
        0x2a4b569448c6564cL    # 5.959933864336148E-105
        0x389b7bd02c8b0e37L    # 5.1690991538431535E-36
        -0x323e38a750417f62L    # -3.744630647608012E66
        0x75c531d2c623fc7cL    # 2.0367230002139635E259
        -0x19abd6ba550009deL    # -8.56671164089564E184
        0x794ec75b6b90cd40L    # 2.1312620902991774E276
        0x406a1484a0d5ca5cL    # 208.6411899734111
    .end array-data

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_3
    .array-data 8
        0x9303aa50ad33c97L
        -0x391ebaef43329535L    # -2.802183091870632E33
    .end array-data

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_4
    .array-data 8
        -0x3978c991db5e7e19L    # -5.885097866185823E31
        0x72d11d5ef20b76feL    # 1.1686017707617065E245
        -0x5294f26e42ee249fL    # -6.640286513871418E-90
        0x7e73a39aea82fcf7L    # 1.315215376457484E301
        0x26396726026a48f5L
    .end array-data
.end method

.method private setParameters()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->calculateDisplayRotation()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->rotationDegrees:I

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setCameraDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    new-array v1, v1, [J

    .line 15
    .line 16
    fill-array-data v1, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    :goto_0
    const/4 v0, 0x0

    .line 26
    :try_start_1
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setDesiredParameters(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_1
    const/4 v0, 0x1

    .line 31
    :try_start_2
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setDesiredParameters(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catch_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/16 v1, 0x9

    .line 38
    .line 39
    new-array v1, v1, [J

    .line 40
    .line 41
    fill-array-data v1, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    :goto_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->requestedPreviewSize:Lcom/journeyapps/barcodescanner/Size;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_0
    new-instance v1, Lcom/journeyapps/barcodescanner/Size;

    .line 68
    .line 69
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    .line 70
    .line 71
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    .line 72
    .line 73
    invoke-direct {v1, v2, v0}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    .line 77
    .line 78
    :goto_2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->setResolution(Lcom/journeyapps/barcodescanner/Size;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    nop

    .line 87
    :array_0
    .array-data 8
        -0x28ab1498c6d357e6L    # -5.030957000432835E112
        0x72d99f7128615cf8L
        0x346c768a64fd2273L    # 3.627540279850406E-56
        0x7b2f127986125ee7L    # 2.310241871087217E285
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_1
    .array-data 8
        -0x1bbd74e32ce08065L    # -9.172697377546184E174
        -0x57c8915ee6ff1be8L
        0x38283071da34fd39L    # 3.5542889671586E-38
        0x3825f256c89bdb8bL    # 3.2247684344713424E-38
        -0x584701079636bab6L
        0x94aeb1c20c65026L
        0x1a1a62d8b0f08118L
        -0xe23de47a406f5e2L    # -2.9309798537836317E240
        0x25cd336da76ba8eeL
    .end array-data
.end method


# virtual methods
.method public changeCameraParameters(Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p1, v1}, Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;->changeCameraParameters(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v0, 0x6

    .line 20
    new-array v0, v0, [J

    .line 21
    .line 22
    fill-array-data v0, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x35138e2b5d0bc82bL    # -8.51392588915587E52
        -0x3ad89306ea5fe935L    # -1.415995211441564E25
        -0x6d4d8a045d4ba54fL
        -0x1476504d775f370dL    # -1.0555744005476269E210
        0x4272ea3fd31424d7L    # 1.2998314028183025E12
        0x22f8979bbc4c3e9bL    # 3.22670874503822E-140
    .end array-data
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public configure()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setParameters()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        0x629b398a56c6ab65L    # 1.0033715643804591E167
        0x43468fe51b1af6caL    # 1.270132730533826E16
        -0x75387df00a6bad1aL    # -9.785216168827358E-257
    .end array-data
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCameraRotation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->rotationDegrees:I

    .line 2
    .line 3
    return v0
.end method

.method public getCameraSettings()Lcom/journeyapps/barcodescanner/camera/CameraSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDisplayConfiguration()Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNaturalPreviewSize()Lcom/journeyapps/barcodescanner/Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreviewSize()Lcom/journeyapps/barcodescanner/Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->isCameraRotated()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/Size;->rotate()Lcom/journeyapps/barcodescanner/Size;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    .line 21
    .line 22
    return-object v0
.end method

.method public isCameraRotated()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->rotationDegrees:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    rem-int/lit16 v0, v0, 0xb4

    .line 7
    .line 8
    if-eqz v0, :cond_0

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
    return v0

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    new-array v2, v2, [J

    .line 21
    .line 22
    fill-array-data v2, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        -0x37bf48b881f63bf2L    # -1.13762756067959E40
        -0x7787d3c4ad3960eL    # -3.974600450860328E272
        0x167090a157f676e2L    # 1.352550028859936E-200
        -0x480133d0e497f66dL    # -5.6566246135723924E-39
        0x23f8f70dd4e4a2b7L
        0xd4669877e6c3c3aL
        0x34c865efd426dd23L    # 1.990070288559688E-54
        0x509e6d30299685c8L    # 2.2548159189144655E80
    .end array-data
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public isTorchOn()Z
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v4, v0, [J

    .line 20
    .line 21
    fill-array-data v4, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v0, v0, [J

    .line 40
    .line 41
    fill-array-data v0, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    :cond_0
    const/4 v2, 0x1

    .line 58
    :cond_1
    return v2

    .line 59
    :array_0
    .array-data 8
        0x41ed377ad3d401a8L    # 3.921401502625202E9
        -0x28babeef6e3136e3L    # -2.5557144403876673E112
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_1
    .array-data 8
        0xbf5b9ffeac82740L
        -0x4e56ab27e4a8eb28L
    .end array-data
.end method

.method public open()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->getRequestedCameraId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->open(I)Landroid/hardware/Camera;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->getRequestedCameraId()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->getCameraId(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    .line 26
    .line 27
    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 37
    .line 38
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    new-array v2, v2, [J

    .line 42
    .line 43
    fill-array-data v2, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :array_0
    .array-data 8
        0xd65f7d8a3ce8a10L
        -0x502305c6c35a4cd1L    # -3.9102190692467584E-78
        0x7a98c0f3271a69a3L    # 3.5946470351029887E282
        -0x25c2394c0116f5d1L    # -5.039033388105738E126
    .end array-data
.end method

.method public requestPreviewFrame(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewing:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->setCallback(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setCameraSettings(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 2
    .line 3
    return-void
.end method

.method public setDisplayConfiguration(Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    .line 2
    .line 3
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    invoke-direct {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraSurface;-><init>(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setPreviewDisplay(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V

    return-void
.end method

.method public setPreviewDisplay(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->setPreview(Landroid/hardware/Camera;)V

    return-void
.end method

.method public setTorch(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->isTorchOn()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->stop()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setTorch(Landroid/hardware/Camera$Parameters;Z)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->isExposureEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-static {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setBestExposure(Landroid/hardware/Camera$Parameters;Z)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v0, 0x4

    .line 54
    new-array v0, v0, [J

    .line 55
    .line 56
    fill-array-data v0, :array_0

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        -0x593df1259acb00afL    # -5.463386097691802E-122
        0x136c089b59cbd60aL
        0x82fffb5aacf78a4L
        -0x146ffc8d226fa9a8L    # -1.316141189462861E210
    .end array-data
.end method

.method public startPreview()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewing:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewing:Z

    .line 14
    .line 15
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;-><init>(Landroid/hardware/Camera;Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    .line 25
    .line 26
    new-instance v0, Lcom/google/zxing/client/android/AmbientLightManager;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->context:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 31
    .line 32
    invoke-direct {v0, v1, p0, v2}, Lcom/google/zxing/client/android/AmbientLightManager;-><init>(Landroid/content/Context;Lcom/journeyapps/barcodescanner/camera/CameraManager;Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/zxing/client/android/AmbientLightManager;->start()V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->stop()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/zxing/client/android/AmbientLightManager;->stop()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewing:Z

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->setCallback(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewing:Z

    .line 38
    .line 39
    :cond_2
    return-void
.end method
